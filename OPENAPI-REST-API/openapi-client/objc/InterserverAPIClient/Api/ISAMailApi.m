#import "ISAMailApi.h"
#import "ISAQueryParamCollection.h"
#import "ISAApiClient.h"
#import "ISAChargeInvoiceRows.h"
#import "ISADeleteMailAlertRequest.h"
#import "ISADenyRuleNew.h"
#import "ISADenyRuleRecord.h"
#import "ISAGenericResponse.h"
#import "ISAGetAccountInfo401Response.h"
#import "ISAMailAlertRequest.h"
#import "ISAMailAlertUpdateRequest.h"
#import "ISAMailAlertsResponse.h"
#import "ISAMailBlocks.h"
#import "ISAMailCancel200Response.h"
#import "ISAMailDelistRequest.h"
#import "ISAMailDelistResponse.h"
#import "ISAMailDeliverabilityResponse.h"
#import "ISAMailLog.h"
#import "ISAMailOrder.h"
#import "ISAMailOrderRequest.h"
#import "ISAMailRow.h"
#import "ISAMailSchema.h"
#import "ISAMailStatsType.h"
#import "ISASendMail.h"
#import "ISASendMailAdv.h"
#import "ISAServiceOrderPostResponse.h"
#import "ISASuccessTextResponse.h"
#import "ISAViewMailLogStartDateParameter.h"


@interface ISAMailApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation ISAMailApi

NSString* kISAMailApiErrorDomain = @"ISAMailApiErrorDomain";
NSInteger kISAMailApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[ISAApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(ISAApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Place a new Mail Baby order, generate invoice, and queue provisioning
/// Step 3 of the Mail Baby order flow. Revalidates via `validate_buy_mail()`, then calls `place_buy_mail()` to create a `Repeat_Invoice` recurring billing row, an initial `invoices` row, and a `mail` service record in pending status. SMTP credentials become active once the activation worker runs the welcome email (after the invoice is paid). **Real money** — call `putMail` first. Sibling ops: `getNewMail`, `putMail`, `getMailInfo`, `initiatePayment`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail`. - `coupon` (string, optional). - `comment` (string, optional) — saved on the order row.  **Returns** (on success): `{continue: true, total_cost, iid, iids, real_iids, serviceId (new mail_id), invoice_description, cj_params}` — pass `real_iids` to `initiatePayment`. On validation failure: `{continue: false, errors: [...]}` with HTTP 200.  **Side effects:** - Inserts `mail` service row in `pending` status. - Inserts `repeat_invoices` + `invoices` rows.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Pay:** `initiatePayment` with `real_iids`. - **Confirm activation:** `getMailInfo` (poll until `mail_status=='active'`). - **Resend credentials:** `getMailWelcomeEmail`.  **Full ordering happy path:** ```text GET /mail/order                                    -> catalog (getNewMail) PUT /mail/order { serviceType, coupon? }           -> quote (putMail) POST /mail/order { serviceType, coupon?, comment? } -> { serviceId, real_iids } GET /billing/pay/cc/{real_iids[0]}                 -> pay (initiatePayment) GET /mail/{serviceId}                              -> poll until mail_status=='active' ``` 
///  @param mailOrderRequest  
///
///  @returns ISAServiceOrderPostResponse*
///
-(NSURLSessionTask*) addMailWithMailOrderRequest: (ISAMailOrderRequest*) mailOrderRequest
    completionHandler: (void (^)(ISAServiceOrderPostResponse* output, NSError* error)) handler {
    // verify the required parameter 'mailOrderRequest' is set
    if (mailOrderRequest == nil) {
        NSParameterAssert(mailOrderRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mailOrderRequest"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/order"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = mailOrderRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAServiceOrderPostResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAServiceOrderPostResponse*)data, error);
                                }
                            }];
}

///
/// Create a new deny rule to auto-block matching submissions
/// Inserts a new `mail_spam` row scoped to this service's `mail_username` so the relay drops matching submissions. Sibling ops: `getRules`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — literal value matched; validation: no quotes, valid domain for `type=domain`, valid email for `type=email`, `[A-Z0-9+_.-]+` for `startswith`.  **Returns:** `\"Spam Block Added\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param denyRuleNew These are the fields needed to create a new email deny rule. 
///
///  @returns ISAGenericResponse*
///
-(NSURLSessionTask*) addRuleWithId: (NSNumber*) _id
    denyRuleNew: (ISADenyRuleNew*) denyRuleNew
    completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'denyRuleNew' is set
    if (denyRuleNew == nil) {
        NSParameterAssert(denyRuleNew);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"denyRuleNew"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/rules"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = denyRuleNew;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAGenericResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAGenericResponse*)data, error);
                                }
                            }];
}

///
/// Create a new Mail Baby alert for delivery, bounce, or quota events
/// Inserts a new alert row via the `Alert` ORM. The new `alert_id` is retrievable via `getMailAlerts`. Sibling ops: `getMailAlerts`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertRequest`):** - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param mailAlertRequest  
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) createMailAlertWithId: (NSNumber*) _id
    mailAlertRequest: (ISAMailAlertRequest*) mailAlertRequest
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mailAlertRequest' is set
    if (mailAlertRequest == nil) {
        NSParameterAssert(mailAlertRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mailAlertRequest"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/alerts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = mailAlertRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISASuccessTextResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISASuccessTextResponse*)data, error);
                                }
                            }];
}

///
/// Delete a Mail Baby alert by alert_id (hard delete — no recovery)
/// Hard-deletes a single alert row. Handler verifies the alert belongs to this service+module before deleting. **Irreversible** — no history is preserved; recreate via `createMailAlert` if needed. Sibling ops: `getMailAlerts`, `createMailAlert`, `updateMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields:** - `alert_id` (integer, required) — from `getMailAlerts`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param deleteMailAlertRequest  
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) deleteMailAlertWithId: (NSNumber*) _id
    deleteMailAlertRequest: (ISADeleteMailAlertRequest*) deleteMailAlertRequest
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'deleteMailAlertRequest' is set
    if (deleteMailAlertRequest == nil) {
        NSParameterAssert(deleteMailAlertRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"deleteMailAlertRequest"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/alerts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = deleteMailAlertRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISASuccessTextResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISASuccessTextResponse*)data, error);
                                }
                            }];
}

///
/// Delete a Mail Baby deny rule by rule ID (hard delete — no recovery)
/// Hard-deletes a single `mail_spam` row scoped to this service's `mail_username`. **Irreversible** — no audit copy preserved. Query filter `id={rule} AND user='{mail_username}'` prevents cross-tenant deletes; passing a `rule` belonging to a different mail order is silently a no-op (still returns success). Sibling ops: `getRules`, `addRule`, `updateRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Returns:** `\"Block deleted successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param rule The ID of the Rules entry. 
///
///  @returns ISAGenericResponse*
///
-(NSURLSessionTask*) deleteRuleWithId: (NSNumber*) _id
    rule: (NSString*) rule
    completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'rule' is set
    if (rule == nil) {
        NSParameterAssert(rule);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rule"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/rules/{rule}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (rule != nil) {
        pathParams[@"rule"] = rule;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAGenericResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAGenericResponse*)data, error);
                                }
                            }];
}

///
/// Delist a sender email from rspamd / mailchannels / mailbaby block lists
/// Removes block rows for the supplied email across the three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Functionally equivalent to `postMailDelist` but uses `email` parameter naming and returns 400 (not error JSON) for an invalid address. Sibling ops: `getMailBlocks`, `getMailDelist`, `postMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `EmailAddress`):** - `email` (string, required) — sender address; validated via `FILTER_VALIDATE_EMAIL`.  **Returns:** `{status: \"ok\", text: \"Email '...' removed from block list\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` invalid email, `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param email an email address (optional)
///
///  @returns ISAGenericResponse*
///
-(NSURLSessionTask*) delistBlockWithId: (NSNumber*) _id
    email: (NSString*) email
    completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/blocks/delete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data", @"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    if (email) {
        formParams[@"email"] = email;
    }

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAGenericResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAGenericResponse*)data, error);
                                }
                            }];
}

///
/// List configured delivery/bounce/quota alerts for one Mail Baby service
/// Returns every alert row from `alerts` matching this service. Each row carries `alert_id` (use with PUT/DELETE), `alert_type`, `alert_value` (threshold), `alert_to` (notification email), `alert_enabled`, and timestamps. Sibling ops: `createMailAlert`, `updateMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailAlertsResponse`): array of alert rows.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISAMailAlertsResponse*
///
-(NSURLSessionTask*) getMailAlertsWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISAMailAlertsResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/alerts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAMailAlertsResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAMailAlertsResponse*)data, error);
                                }
                            }];
}

///
/// List recent local-blocklist hits and spam-trap captures for the mail user
/// Returns relay-side block events for the SMTP user behind `mail_id` — the last 24 hours of `LOCAL_BL_RCPT` and `MBTRAP` rspamd hits, plus a 3-day window of suspicious-subject hits (credential-leak heuristic firing on subjects containing `@` / `smtp` / `socks5` / `socks4` more than 4 times). Use the `from` value with `delistBlock` or `postMailDelist` to clear a block. Sibling ops: `delistBlock`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailBlocks`): - `local` (array) — rspamd `LOCAL_BL_RCPT` hits: `{date, from, messageId, subject, to}`. - `mbtrap` (array) — spam-trap captures (`MBTRAP` symbol): same shape. - `subject` (array) — senders flagged by subject-line heuristic: `{from, subject}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Clear a block:** `delistBlock` (POST `/mail/{id}/blocks/delete`). - **Broader delist UI:** `getMailDelist`, `postMailDelist`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISAMailBlocks*
///
-(NSURLSessionTask*) getMailBlocksWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISAMailBlocks* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/blocks"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAMailBlocks*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAMailBlocks*)data, error);
                                }
                            }];
}

///
/// Read blocklist diagnostics and find senders eligible for delisting
/// Returns a richer diagnostic snapshot than `getMailBlocks` — intended for the delist UI. Use any `SMTPFrom`/`from` value as the `unblock` field for `postMailDelist`. Sibling ops: `postMailDelist`, `getMailBlocks`, `delistBlock`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailDelistResponse`): - `id` (integer) — `mail_id` echo. - `local`, `mbtrap` (array) — last 24h rspamd hits with capitalized keys (`Date`, `SMTPFrom`, `MessageId`, `Subject`, `MimeRecipients`). - `subject` (array) — credential-leak-heuristic firings (3-day window). - `manual` (array) — manually added blocks.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISAMailDelistResponse*
///
-(NSURLSessionTask*) getMailDelistWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISAMailDelistResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/delist"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAMailDelistResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAMailDelistResponse*)data, error);
                                }
                            }];
}

///
/// Read delivered vs bounced totals broken down by sender (or by recipient domain)
/// Returns deliverability analytics from `MailDeliveryStats` (Dragonfly cache) for the SMTP user behind `mail_id`. Default pivot is by sender; pass `?filter_domain=1` to pivot by recipient domain for the current year instead. Use to drive analytics dashboards. Sibling ops: `getStats`, `viewMailLog`, `getMailBlocks`, `getMailDelist`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `filter_domain` (string `1`, optional) — pivot by recipient domain instead of sender.  **Returns** (schema `MailDeliverabilityResponse`): - `stat`: `{delivered, bounced, percent}` — totals and bounce ratio. - `header` (string), `col1` (string) — table headers. - `table_data` (array) — rows of `[<sender-or-domain>, bounced, delivered, bouncePercent]`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISAMailDeliverabilityResponse*
///
-(NSURLSessionTask*) getMailDeliverabilityWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISAMailDeliverabilityResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/deliverability"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAMailDeliverabilityResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAMailDeliverabilityResponse*)data, error);
                                }
                            }];
}

///
/// Read full detail for one Mail Baby service including SMTP credentials
/// Returns the full `ViewMail` payload for one Mail Baby service — `serviceInfo`, `serviceType`, and `client_links` (URLs rewritten to API paths, e.g. `view_mail_log` → `log`). Admin fields (`admin_links`, `settings`, `csrf`) stripped. Use to render a service dashboard or retrieve SMTP host/username for MTA configuration. Sibling ops: `getMailList`, `updateMailInfo`, `mailCancel`, `resetMailPassword`, `getMailWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns** (schema `MailSchema`): - `serviceInfo` — `mail_id`, `mail_username` (e.g. `mb1234`), `mail_status`, `mail_invoice`, `mail_custid`, dates, currency. - `serviceType` — plan row (`services_ourcost` stripped). - `client_links` (array) — action URLs (log, alerts, blocks, etc.).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Send:** `sendMail` / `sendAdvMail`. - **Rotate password:** `resetMailPassword`. - **Reset credentials:** `getMailWelcomeEmail`. - **Cancel:** `mailCancel`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISAMailSchema*
///
-(NSURLSessionTask*) getMailInfoWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISAMailSchema* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAMailSchema*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAMailSchema*)data, error);
                                }
                            }];
}

///
/// List billing invoices linked to this Mail Baby service
/// Returns every invoice associated with this `mail_id` via the shared `InvoicesList` workflow. Use to render per-service billing history or find unpaid invoices to pay via `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, `addMail`, `mailCancel`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `ChargeInvoiceRows` — array of `{id, amount, currency, paid, date, due_date, description, module: \"mail\", service}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404 Invalid Service`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISAChargeInvoiceRows*
///
-(NSURLSessionTask*) getMailInvoicesWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISAChargeInvoiceRows* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/invoices"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAChargeInvoiceRows*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAChargeInvoiceRows*)data, error);
                                }
                            }];
}

///
/// List every Mail Baby SMTP relay service on the account
/// Enumerates every Mail Baby SMTP relay service owned by the authenticated customer. Canonical entry point for finding a `mail_id` to pass to other Mail endpoints. Filtered server-side by `mail_custid`. Sibling ops: `getMailInfo`, `getStats`, `viewMailLog`, `getMailDeliverability`, `getMailBlocks`, `getMailInvoices`, `addMail`.  **Path/Query/Body:** None.  **Returns:** Array of `MailRow`: - `mail_id` (integer) — canonical id. - `mail_username` (string) — SMTP username (e.g. `mb1234`). - `mail_status` (string enum) — `active` / `pending` / `canceled` / `suspended`. - `services_name` (string) — plan label. - `repeat_invoices_cost` (decimal string) — recurring cost.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-service detail:** `getMailInfo`. - **Send mail:** `sendMail` / `sendAdvMail`. - **Reputation:** `getMailDeliverability` / `getMailBlocks` / `getMailDelist`. - **Order a new service:** `getNewMail` → `putMail` → `addMail`. 
///  @returns NSArray<ISAMailRow>*
///
-(NSURLSessionTask*) getMailListWithCompletionHandler: 
    (void (^)(NSArray<ISAMailRow>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<ISAMailRow>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<ISAMailRow>*)data, error);
                                }
                            }];
}

///
/// Resend the Mail Baby welcome email with SMTP credentials and setup info
/// Re-runs the `mail_welcome_email` plugin function — composes and sends the standard welcome email (SMTP host `relay.mailbaby.net`, port, username `mb{mail_id}`, current password, configuration tips) to the account-on-file. Use after `resetMailPassword` to redeliver the rotated credential, or when a customer reports losing the original setup email. Idempotent. Sibling ops: `resetMailPassword`, `getMailInfo`. Cross-module welcome-email endpoints: `getVpsWelcomeEmail`, `getWebsitesWelcomeEmail`, `getDomainsWelcomeEmail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `{text: \"Welcome Email has been resent.\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) getMailWelcomeEmailWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/welcome_email"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISASuccessTextResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISASuccessTextResponse*)data, error);
                                }
                            }];
}

///
/// Read the Mail Baby order catalog — plans, package costs, service-type metadata
/// Step 1 of the Mail Baby order flow. Returns the catalog used to bootstrap an order form: `packageCosts` keyed by `services_id` (only buyable services where `services_buyable=1`) and the full `serviceTypes` map. Read-only. Pricing is normalized to the customer's currency via `getCurrency()`. Sibling ops: `putMail`, `addMail`, `getMailList`.  **Path/Query/Body:** None.  **Returns** (schema `MailOrder`): - `packageCosts` (object) — `{<services_id>: <cost>}` per buyable plan. - `serviceTypes` (object) — full service-types registry (plan metadata).  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Next:** `putMail` (validate + quote — no charge), `addMail` (place order). 
///  @returns ISAMailOrder*
///
-(NSURLSessionTask*) getNewMailWithCompletionHandler: 
    (void (^)(ISAMailOrder* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/order"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAMailOrder*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAMailOrder*)data, error);
                                }
                            }];
}

///
/// List configured deny rules (sender/recipient blocks) for a Mail Baby service
/// Returns every `mail_spam` row scoped to this service's `mail_username` — local sender/recipient block rules the customer has configured. Sibling ops: `addRule`, `updateRule`, `deleteRule`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** Array of `DenyRuleRecord` — `{id, user, type, data, created}`. `type` values: - `domain` — block by sender domain. - `email` — block by exact sender email. - `startswith` — block when sender local-part starts with a string. - `destination` — block by recipient email.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns NSArray<ISADenyRuleRecord>*
///
-(NSURLSessionTask*) getRulesWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSArray<ISADenyRuleRecord>* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/rules"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"NSArray<ISADenyRuleRecord>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<ISADenyRuleRecord>*)data, error);
                                }
                            }];
}

///
/// Read Mail Baby usage counts, send volume totals, top destinations, and projected cost
/// Returns aggregate usage and cost metrics for the SMTP user behind `mail_id` from the ZoneMTA `mail_messagestore` / `mail_senderdelivered` tables. Use to drive an analytics dashboard or to project end-of-cycle cost. Sibling ops: `viewMailLog`, `getMailDeliverability`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Query params:** - `time` (string enum, optional, default `1h`) — window: `all` / `billing` (current invoice cycle) / `month` / `7d` / `24h` / `1d` / `1h`.  **Returns** (schema `MailStatsType`): - `time` (string) — echo of selected window. - `usage` (integer) — full-billing-cycle send count. - `currency`, `currencySymbol` (string). - `cost` (decimal) — projected = base + `$0.20 / 1000 emails`. - `received`, `sent` (integer). - `volume.to`, `volume.from`, `volume.ip` (object) — top-500 destinations / senders / origin IPs by count.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid or missing mail order id`, `401`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param time The timeframe for the statistics. (optional)
///
///  @returns ISAMailStatsType*
///
-(NSURLSessionTask*) getStatsWithId: (NSNumber*) _id
    time: (NSString*) time
    completionHandler: (void (^)(ISAMailStatsType* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/stats"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (time != nil) {
        queryParams[@"time"] = time;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAMailStatsType*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAMailStatsType*)data, error);
                                }
                            }];
}

///
/// Cancel a Mail Baby service and stop the recurring invoice
/// Cancels the Mail Baby service through the shared `Billing\\CancelService::go($id)` flow with `module='mail'`. SMTP credentials are deactivated, the service transitions to canceled, the `repeat_invoice` is stopped, and queued submissions stop being accepted. **Irreversible via API** — re-activation requires placing a new order via `addMail`. Sibling ops: `getMailInfo`, `getMailInvoices`, `addMail`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `MailCancelResponse`.  **Side effects:** - Sets `mail_status='canceled'`. - Marks `repeat_invoices` non-renewing. - ZoneMTA-side: stops accepting new submissions for `mb{mail_id}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Related calls:** - **Sibling cancels:** `VPSCancel`, `CancelDomain`, `webhostingCancel`, etc. - **Re-provision:** `addMail`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISAMailCancel200Response*
///
-(NSURLSessionTask*) mailCancelWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISAMailCancel200Response* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAMailCancel200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAMailCancel200Response*)data, error);
                                }
                            }];
}

///
/// Delist a sender from rspamd / mailchannels / mailbaby block lists
/// Removes all block rows for one sender email across three reputation stores: `rspamd` (by `fromemail`), `mailchannels` (by `email`), `mailbaby` (by `emailfrom`). Effect is global per-address across all three tables; takes effect immediately for new submissions. Sibling ops: `getMailDelist`, `delistBlock` (alias at `/mail/{id}/blocks/delete`), `getMailBlocks`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailDelistRequest`):** - `unblock` (string, required) — sender email from `getMailDelist`/`getMailBlocks`.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Missing parameter unblock`, `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param mailDelistRequest  
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) postMailDelistWithId: (NSNumber*) _id
    mailDelistRequest: (ISAMailDelistRequest*) mailDelistRequest
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mailDelistRequest' is set
    if (mailDelistRequest == nil) {
        NSParameterAssert(mailDelistRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mailDelistRequest"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/delist"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = mailDelistRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISASuccessTextResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISASuccessTextResponse*)data, error);
                                }
                            }];
}

///
/// Validate Mail Baby order, quote pricing, and verify coupon — no charge
/// Step 2 of the Mail Baby order flow. Dry-runs the order through `validate_buy_mail()` without creating invoices. Returns the cost preview, coupon resolution, and validation errors. The endpoint also auto-generates an SMTP password preview the order will use. Use to surface live pricing in the UI before `addMail`. Sibling ops: `getNewMail`, `addMail`.  **Body fields:** - `serviceType` (integer, required) — plan id from `getNewMail.packageCosts` keys. - `coupon` (string, optional) — coupon code.  **Returns:** - `continue` (bool) — `true` if order can safely be POSTed. - `errors` (array) — validation messages. - `serviceType`, `serviceCost`, `originalCost`, `repeatServiceCost` (numeric). - `password` (string) — auto-generated SMTP password preview. - `introFrequency` (integer). - `coupon`, `couponCode` (string/integer) — resolved coupon.  **Auth:** Session/API key.  **Errors:** - `200` with `continue=false` and `errors[]` — validation problems. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `getNewMail` (catalog). - **Place order:** `addMail`. 
///  @param mailOrderRequest  
///
///  @returns void
///
-(NSURLSessionTask*) putMailWithMailOrderRequest: (ISAMailOrderRequest*) mailOrderRequest
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'mailOrderRequest' is set
    if (mailOrderRequest == nil) {
        NSParameterAssert(mailOrderRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mailOrderRequest"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/order"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = mailOrderRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: nil
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler(error);
                                }
                            }];
}

///
/// Rotate the SMTP password and email the new credential to the account owner
/// Generates a new 20-char SMTP password (lower/upper/digits via `generate_password`), writes it to the ZoneMTA Mongo `users` collection for username `mb{mail_id}`, logs the change to `App::history()`, and emails the result to the account-on-file via `client_email.tpl`. **Any MTA, app, or saved client still using the old password will start failing auth immediately.** The new password is **not** returned in the response — fetch via `getMailWelcomeEmail` or `getMailInfo`. Sibling ops: `getMailWelcomeEmail`, `getMailInfo`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Returns:** `SuccessTextResponse`.  **Side effects:** - Mongo update on ZoneMTA `users` for `mb{mail_id}`. - `App::history()` audit entry. - Email sent to account owner.  **Auth:** Session/API key. Ownership enforced.  **Errors:** Mongo update modified 0 rows → error text; `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) resetMailPasswordWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/reset_password"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISASuccessTextResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISASuccessTextResponse*)data, error);
                                }
                            }];
}

///
/// Send email via Mail Baby SMTP relay with attachments, CC/BCC, and multi-recipient
/// Submits an outbound message through `relay.mailbaby.net:25` using the service's SMTP credentials (fetched via `mail_get_password`). Use for multi-recipient sends, named addresses, CC/BCC, ReplyTo, or attachments. For single-recipient plain sends, `sendMail` is the lighter option. Sibling ops: `sendMail`, `viewMailLog` (find queued message), `getMailDeliverability` (analyze bounces).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMailAdv`):** - `from` (string or `{email, name}`, required). - `to` (array of strings or `{email, name}` objects, required). - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present. - `replyto` (array, optional) — same shape as `to`. - `cc`, `bcc` (array, optional) — same shape as `to`. - `attachments` (array, optional) — each `{filename, data}` where `data` is base64-encoded; added via `addStringAttachment`.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `400` with PHPMailer `ErrorInfo` on send failure or missing required field. - `401` — unauthenticated. - `404 Invalid Service Passed`. - `409 Service is not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param sendMailAdv  
///
///  @returns ISAGenericResponse*
///
-(NSURLSessionTask*) sendAdvMailWithId: (NSNumber*) _id
    sendMailAdv: (ISASendMailAdv*) sendMailAdv
    completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sendMailAdv' is set
    if (sendMailAdv == nil) {
        NSParameterAssert(sendMailAdv);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendMailAdv"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/advsend"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendMailAdv;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAGenericResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAGenericResponse*)data, error);
                                }
                            }];
}

///
/// Send a simple single-recipient email through the Mail Baby SMTP relay
/// Sends a single-recipient transactional email through `relay.mailbaby.net:25` authenticated as this `mail_id`. Body fields are the minimum needed for a plain send; Reply-To is auto-set to `from`. For multi-recipient sends, CC/BCC, named addresses, or attachments use `sendAdvMail` instead. Sibling ops: `sendAdvMail`, `viewMailLog`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (JSON or form-urlencoded, schema `SendMail`):** - `to` (string, required) — recipient email. - `from` (string, required) — sender email. - `subject` (string, required). - `body` (string, required) — HTML auto-detected when tags are present.  **Returns:** `{status: \"ok\", text: \"Email queued successfully\"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` with PHPMailer `ErrorInfo` on send failure or missing required field, `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param sendMail  
///
///  @returns ISAGenericResponse*
///
-(NSURLSessionTask*) sendMailWithId: (NSNumber*) _id
    sendMail: (ISASendMail*) sendMail
    completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'sendMail' is set
    if (sendMail == nil) {
        NSParameterAssert(sendMail);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"sendMail"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/send"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"application/x-www-form-urlencoded"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = sendMail;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAGenericResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAGenericResponse*)data, error);
                                }
                            }];
}

///
/// Update an existing Mail Baby alert by alert_id
/// Updates a single alert row by `alert_id`. Handler verifies the alert belongs to this service+module before writing. Sibling ops: `getMailAlerts`, `createMailAlert`, `deleteMailAlert`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body fields (schema `MailAlertUpdateRequest`):** - `alert_id` (integer, required) — from `getMailAlerts`. - `type` (string, required). - `value` (string/numeric, required) — threshold. - `to` (string, required) — notification email; validated via `FILTER_VALIDATE_EMAIL`. - `enabled` (bool, optional).  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `Invalid alert!` (alert not owned), field-level errors for missing/invalid body, `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param mailAlertUpdateRequest  
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) updateMailAlertWithId: (NSNumber*) _id
    mailAlertUpdateRequest: (ISAMailAlertUpdateRequest*) mailAlertUpdateRequest
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'mailAlertUpdateRequest' is set
    if (mailAlertUpdateRequest == nil) {
        NSParameterAssert(mailAlertUpdateRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"mailAlertUpdateRequest"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/alerts"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = mailAlertUpdateRequest;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISASuccessTextResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISASuccessTextResponse*)data, error);
                                }
                            }];
}

///
/// POST mutation hook for the Mail Baby service detail page
/// POST mutation hook for the Mail Baby service detail page. Currently delegates to the same `View::go()` handler as `getMailInfo` — placeholder for future field updates. Does NOT rotate credentials (use `resetMailPassword`) and does NOT change billing (use `/billing` endpoints). Sibling ops: `getMailInfo`, `mailCancel`, `resetMailPassword`.  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList`.  **Body:** Form fields.  **Returns:** `SuccessTextResponse`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — `mail_status != \"active\"`.  **Related calls:** - **Read:** `getMailInfo`. - **Rotate password:** `resetMailPassword`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) updateMailInfoWithId: (NSString*) _id
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISASuccessTextResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISASuccessTextResponse*)data, error);
                                }
                            }];
}

///
/// Update an existing Mail Baby deny rule's type and match data
/// Updates `type` and `data` on a single `mail_spam` row. Query is bounded by `id={rule} AND user='{mail_username}'` so cross-tenant updates are impossible. Same validation rules as `addRule`. Sibling ops: `getRules`, `addRule`, `deleteRule`.  **Path params:** - `id` (integer, required) — `mail_id` from `getMailList`. - `rule` (string, required) — rule id from `getRules`.  **Body fields (schema `DenyRuleNew`):** - `type` (string, required) — `domain` / `email` / `startswith` / `destination`. - `data` (string, required) — see `addRule` for type-specific validation.  **Returns:** `\"Record updated successfully.\"`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** field-level errors on validation failure, `401`, `404`, `409 not active`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param rule The ID of the deny rule to update. 
///
///  @param denyRuleNew  
///
///  @returns ISAGenericResponse*
///
-(NSURLSessionTask*) updateRuleWithId: (NSNumber*) _id
    rule: (NSString*) rule
    denyRuleNew: (ISADenyRuleNew*) denyRuleNew
    completionHandler: (void (^)(ISAGenericResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'rule' is set
    if (rule == nil) {
        NSParameterAssert(rule);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"rule"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'denyRuleNew' is set
    if (denyRuleNew == nil) {
        NSParameterAssert(denyRuleNew);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"denyRuleNew"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/rules/{rule}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }
    if (rule != nil) {
        pathParams[@"rule"] = rule;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json", @"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    bodyParam = denyRuleNew;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"PUT"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAGenericResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAGenericResponse*)data, error);
                                }
                            }];
}

///
/// Search and paginate per-message Mail Baby delivery log entries
/// Paginated search over ZoneMTA's `mail_messagestore` joined with `mail_senderdelivered` and `mail_queuerelease`. Supports envelope, header, and metadata filters; sortable; choose recipient-level or message-level grouping. Use to investigate delivery issues, find specific messages by Message-ID, audit bounce rates, or feed an analytics dashboard. Sibling ops: `getStats`, `getMailDeliverability`, `delistBlock` (clear a block surfaced by a bounce).  **Path param:** - `id` (integer, required) — `mail_id` from `getMailList` (omit to span all owned mail users — admin-only).  **Query params:** - `from`, `to` (string) — envelope address, exact match. - `headerfrom`, `replyto` (string) — header address, exact match; validated as email. - `subject` (string) — LIKE match on subject. - `mailid` (string, 18–19 chars) — relay id, exact. - `messageId` (string) — Message-ID header, substring match. - `origin` (string) — submitter IP, exact. - `mx` (string) — destination MX hostname, LIKE. - `delivered` (integer 0/1). - `startDate`, `endDate` (Unix timestamp or `strtotime`-parseable string). - `skip` (integer, default 0), `limit` (integer 1–10000, default 100). - `sort` (`time`), `dir` (`asc`/`desc`, default `desc`). - `groupby` (`recipient` default — one row per delivery attempt; `message` — one row per `_id`).  **Returns** (schema `MailLog`): `{total, skip, limit, emails: [{id, _id, from, to, subject, messageId, time, mxHostname, delivered, code, response, recipient, ...}]}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** `400` bad input, `401`. 
///  @param _id The mail service ID. Use `mail_id` from `GET /mail`. 
///
///  @param _id2 The numeric ID of the mail order to filter by.  When omitted, logs from the first active mail order are returned.  Obtain valid IDs from `GET /mail` or `GET /mail/{id}`. (optional)
///
///  @param origin Filter by the originating IP address from which the message was submitted to the relay.  Must be a valid IPv4 or IPv6 address. (optional)
///
///  @param mx Filter by the MX hostname the relay attempted delivery to.  For example `mx.google.com` would return messages destined for Gmail recipients. Maps to `mxHostname` in the `MailLogEntry` response. (optional)
///
///  @param from Filter by SMTP envelope `MAIL FROM` address (exact match).  This is the address the relay used for bounce handling and may differ from the `From:` message header.  For header-level filtering use `headerfrom`. (optional)
///
///  @param to Filter by SMTP envelope `RCPT TO` address (exact match).  This is the delivery address used by the relay and may differ from the `To:` header when BCC recipients are involved. (optional)
///
///  @param subject Filter by email `Subject` header (exact match).  MIME-encoded subjects are decoded automatically in the response. (optional)
///
///  @param mailid Filter by the relay-assigned mail ID string (exact match).  This corresponds to the `id` field in `MailLogEntry` and to the `text` value returned by the sending endpoints on success.  Format is an 18-19 character hexadecimal string such as `185997065c60008840`. (optional)
///
///  @param messageId Filter by the `Message-ID` email header using a substring (case-insensitive) match. The `Message-ID` is assigned by the sending mail client and is visible in the `messageId` field of `MailLogEntry`. (optional)
///
///  @param replyto Filter by the `Reply-To` message header address (exact match).  Only returns messages where this header was explicitly set. (optional)
///
///  @param headerfrom Filter by the `From` message header address (exact match).  This is the human-visible sender address and may differ from the SMTP envelope `from` parameter when sending on behalf of another address. (optional)
///
///  @param delivered Filter by delivery status.  `1` returns only messages that were successfully delivered to the destination MX.  `0` returns messages that are still queued, deferred, or failed.  Omit to return all messages regardless of delivery status. (optional)
///
///  @param skip Number of records to skip for pagination.  Use in combination with `limit` to page through large result sets.  Defaults to `0` (no skip). (optional, default to @0)
///
///  @param limit Maximum number of records to return per page.  Defaults to `100`. Maximum allowed value is `10000`.  The response also includes a `total` field with the full matched count so you can calculate the number of pages. (optional, default to @100)
///
///  @param startDate Earliest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-15` or `last monday`.  Messages with a `time` value **greater than or equal to** this value will be included. (optional)
///
///  @param endDate Latest date to include.  Accepts either a Unix timestamp (integer seconds since epoch) or a date string parseable by `strtotime()` such as `2024-01-31` or `yesterday`. Messages with a `time` value **less than or equal to** this value will be included. (optional)
///
///  @param sort Field to sort results by.  Currently only `time` is supported (sorts by internal row ID which corresponds to chronological order). (optional, default to @"time")
///
///  @param dir Sort direction.  `desc` returns newest first (default), `asc` returns oldest first. (optional, default to @"desc")
///
///  @param groupby Controls how results are grouped.  `recipient` (default) returns one row per delivery attempt — a message sent to 4 recipients produces 4 rows, each with its own `recipient`, `delivered`, `response`, and delivery metadata.  `message` collapses to one row per unique message ID; delivery-level fields will reflect one arbitrary recipient per message.  The `total` count in the response matches the grouping mode. (optional, default to @"recipient")
///
///  @returns ISAMailLog*
///
-(NSURLSessionTask*) viewMailLogWithId: (NSNumber*) _id
    _id2: (NSNumber*) _id2
    origin: (NSString*) origin
    mx: (NSString*) mx
    from: (NSString*) from
    to: (NSString*) to
    subject: (NSString*) subject
    mailid: (NSString*) mailid
    messageId: (NSString*) messageId
    replyto: (NSString*) replyto
    headerfrom: (NSString*) headerfrom
    delivered: (NSNumber*) delivered
    skip: (NSNumber*) skip
    limit: (NSNumber*) limit
    startDate: (ISAViewMailLogStartDateParameter) startDate
    endDate: (ISAViewMailLogStartDateParameter) endDate
    sort: (NSString*) sort
    dir: (NSString*) dir
    groupby: (NSString*) groupby
    completionHandler: (void (^)(ISAMailLog* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAMailApiErrorDomain code:kISAMailApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/mail/{id}/log"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (_id2 != nil) {
        queryParams[@"id"] = _id2;
    }
    if (origin != nil) {
        queryParams[@"origin"] = origin;
    }
    if (mx != nil) {
        queryParams[@"mx"] = mx;
    }
    if (from != nil) {
        queryParams[@"from"] = from;
    }
    if (to != nil) {
        queryParams[@"to"] = to;
    }
    if (subject != nil) {
        queryParams[@"subject"] = subject;
    }
    if (mailid != nil) {
        queryParams[@"mailid"] = mailid;
    }
    if (messageId != nil) {
        queryParams[@"messageId"] = messageId;
    }
    if (replyto != nil) {
        queryParams[@"replyto"] = replyto;
    }
    if (headerfrom != nil) {
        queryParams[@"headerfrom"] = headerfrom;
    }
    if (delivered != nil) {
        queryParams[@"delivered"] = delivered;
    }
    if (skip != nil) {
        queryParams[@"skip"] = skip;
    }
    if (limit != nil) {
        queryParams[@"limit"] = limit;
    }
    if (startDate != nil) {
        queryParams[@"startDate"] = startDate;
    }
    if (endDate != nil) {
        queryParams[@"endDate"] = endDate;
    }
    if (sort != nil) {
        queryParams[@"sort"] = sort;
    }
    if (dir != nil) {
        queryParams[@"dir"] = dir;
    }
    if (groupby != nil) {
        queryParams[@"groupby"] = groupby;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[]];

    // Authentication setting
    NSArray *authSettings = @[@"sessionIdCookieAuth", @"apiKeyAuth", @"sessionIdHeaderAuth"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"ISAMailLog*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAMailLog*)data, error);
                                }
                            }];
}



@end
