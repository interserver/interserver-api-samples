#import "ISAFloatingIPsApi.h"
#import "ISAQueryParamCollection.h"
#import "ISAApiClient.h"
#import "ISAChargeInvoiceRows.h"
#import "ISAFloatingIpOrderRequest.h"
#import "ISAFloatingIpsCancel200Response.h"
#import "ISAGetAccountInfo401Response.h"
#import "ISAServiceOrderPostResponse.h"
#import "ISASuccessTextResponse.h"


@interface ISAFloatingIPsApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation ISAFloatingIPsApi

NSString* kISAFloatingIPsApiErrorDomain = @"ISAFloatingIPsApiErrorDomain";
NSInteger kISAFloatingIPsApiMissingParamErrorCode = 234513;

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
/// Place a real Floating IP order, create billing records, and provision the service
/// Charges the customer and creates a new Floating IP service via `place_buy_floating_ip`. Validate first with `putFloating_ips` to avoid surprise failures. Body (form-encoded): `serviceType` (required, `services_id`), `coupon` (optional), `comment` (optional internal note). On success returns `{ continue:true, errors, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }` — `iid` is the master invoice ID, `serviceId` is the new `floating_ip_id`. On validation failure returns `{ continue:false, errors:[...] }` with no charge. Errors: 401 if unauthenticated; soft errors in `errors[]`. The newly-issued IP starts unassigned — point it at a target with `postFloatingIpsChangeIp` once the service is `active`.  Sibling ops: `getNewFloatingIp` (catalog), `putFloating_ips` (validate), `getFloatingIpInfo` (poll), `postFloatingIpsChangeIp` (route), `getBillingInvoice` + `initiatePayment` (settle invoice), `floating_ipsCancel`.
///  @param floatingIpOrderRequest  
///
///  @returns ISAServiceOrderPostResponse*
///
-(NSURLSessionTask*) addFloatingIpWithFloatingIpOrderRequest: (ISAFloatingIpOrderRequest*) floatingIpOrderRequest
    completionHandler: (void (^)(ISAServiceOrderPostResponse* output, NSError* error)) handler {
    // verify the required parameter 'floatingIpOrderRequest' is set
    if (floatingIpOrderRequest == nil) {
        NSParameterAssert(floatingIpOrderRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"floatingIpOrderRequest"] };
            NSError* error = [NSError errorWithDomain:kISAFloatingIPsApiErrorDomain code:kISAFloatingIPsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips/order"];

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
    bodyParam = floatingIpOrderRequest;

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
/// Cancel a Floating IP service and release the IP — destructive, billing stops
/// Cancels the Floating IP via the shared `Api\\Billing\\CancelService` flow — flips status to canceled, halts recurring billing, and releases the IP back to the pool so it can no longer be re-routed. Not reversible: the customer cannot recover the same IP after release. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `FloatingIpsCancelResponse` shape (success text / cancellation outcome). Errors: 401 if unauthenticated; 404 / cross-customer hidden when `id` is not owned by the caller; 409 if already canceled or otherwise non-cancelable. Confirm with the customer before calling — for routing changes use `postFloatingIpsChangeIp` instead of cancel-and-reorder.  Sibling ops: `getFloatingIpInfo` (status), `getFloatingIpInvoices` (outstanding charges), `postFloatingIpsChangeIp` (re-route instead of cancel), `addFloatingIp` (re-order).
///  @param _id The Floating IP service ID. Use the ID from `GET /floating_ips`. 
///
///  @returns ISAFloatingIpsCancel200Response*
///
-(NSURLSessionTask*) floatingIpsCancelWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISAFloatingIpsCancel200Response* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAFloatingIPsApiErrorDomain code:kISAFloatingIPsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips/{id}"];

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
                              responseType: @"ISAFloatingIpsCancel200Response*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISAFloatingIpsCancel200Response*)data, error);
                                }
                            }];
}

///
/// Fetch full details for one Floating IP service, including current target IP
/// Use for a Floating IP detail screen, or to read `floating_ip_ip` / `floating_ip_target_ip` before calling `postFloatingIpsChangeIp`. Read-only. Path param `id` (integer, `floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ViewFloatingIp.getDetails()` payload — service info, billing/cost summary, status, target IP, and `client_links` (action URLs the UI can render). Internal-only fields (`admin_links`, `settings`, `csrf`) are stripped. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller (`get_service` filters by custid). Siblings: `postFloatingIpsChangeIp`, `updateFloatingIpInfo`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, `floating_ipsCancel`.
///  @param _id The Floating IP service ID. Use the ID from `GET /floating_ips`. 
///
///  @returns NSObject*
///
-(NSURLSessionTask*) getFloatingIpInfoWithId: (NSNumber*) _id
    completionHandler: (void (^)(NSObject* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAFloatingIPsApiErrorDomain code:kISAFloatingIPsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips/{id}"];

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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// List all billing invoices charged against a specific Floating IP service
/// Use for a per-service billing history view — pulls the standard `Api\\Billing\\InvoicesList` rows scoped to this Floating IP. Read-only. Path param `id` (`floating_ip_id` from `getFloatingIpsList`). No body. Returns the `ChargeInvoiceRows` schema: array of invoice rows with id, date, amount, status, etc. Use the invoice IDs with the global billing endpoints (`getBillingInvoice`, `initiatePayment`) for line-item detail. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when `id` is not owned by the caller. Siblings: `getFloatingIpInfo` (service details), `getFloatingIpsWelcomeEmail`.
///  @param _id The Floating IP service ID. Use the ID from `GET /floating_ips`. 
///
///  @returns ISAChargeInvoiceRows*
///
-(NSURLSessionTask*) getFloatingIpInvoicesWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISAChargeInvoiceRows* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAFloatingIPsApiErrorDomain code:kISAFloatingIPsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips/{id}/invoices"];

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
/// List all Floating IP services on the authenticated customer's account
/// Use to enumerate every Floating IP the caller owns before drilling into a specific one. Read-only; safe to call frequently. No params, no body. Returns an array of rows: `floating_ip_id`, `repeat_invoices_cost` (recurring price), `floating_ip_ip` (the portable IP), `floating_ip_target_ip` (the IP it currently routes to), `floating_ip_status` (active/pending/canceled/etc.), `services_name` (package label). Empty array if the account owns no Floating IPs. Errors: 401 if unauthenticated. Use returned IDs with `getFloatingIpInfo`, `postFloatingIpsChangeIp`, `getFloatingIpInvoices`, `getFloatingIpsWelcomeEmail`, or `floating_ipsCancel`. To order a new one see `getNewFloatingIp` / `addFloatingIp`.  Sibling ops: `getFloatingIpInfo`, `getNewFloatingIp` (catalog), `addFloatingIp` (order).
///  @returns NSArray<NSObject*>*
///
-(NSURLSessionTask*) getFloatingIpsListWithCompletionHandler: 
    (void (^)(NSArray<NSObject*>* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips"];

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
                              responseType: @"NSArray<NSObject*>*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSArray<NSObject*>*)data, error);
                                }
                            }];
}

///
/// Resend the Floating IP welcome / setup email to the account contact
/// Triggers `floating_ip_welcome_email($id)` to re-deliver the original setup email (the IP, routing instructions, etc.) to the customer's on-file address. Useful when the email was lost or the customer needs the IP/setup details again. No body, no params besides path `id` (`floating_ip_id`). Returns `{ text: 'Welcome Email has been resent.' }`. Errors: 401 if unauthenticated; 404 (`Invalid Service Passed`) if `id` is not owned by the caller; 409 (`Service is not active`) if status is not `active`. Side effect: sends an outbound email — avoid in tight loops. Read state first via `getFloatingIpInfo` if unsure of status.  Sibling ops: `getFloatingIpInfo` (status), `addFloatingIp` (new order), `floating_ipsCancel`.
///  @param _id The Floating IP service ID. Use the ID from `GET /floating_ips`. 
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) getFloatingIpsWelcomeEmailWithId: (NSNumber*) _id
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAFloatingIPsApiErrorDomain code:kISAFloatingIPsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips/{id}/welcome_email"];

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
/// Get pricing and service-type options for ordering a new Floating IP
/// Use before showing a Floating IP order form, or before calling `addFloatingIp`, to discover which service types (`serviceTypes`) and prices (`packageCosts`, keyed by `services_id` in the customer's currency) are currently buyable. Read-only; no side effects. No params, no body. Returns `{ packageCosts: { <services_id>: <cost> }, serviceTypes: [ ... ] } `. Costs are `services.services_cost` filtered to `services_buyable=1` for module `floating_ips`. Errors: 401 if unauthenticated. Next steps: validate the chosen `serviceType` with `putFloating_ips`, then place the order with `addFloatingIp`. Floating IPs are portable IPv4 addresses that route to a target IP on one of the customer's active services.  Sibling ops: `putFloating_ips` (validate), `addFloatingIp` (commit), `getFloatingIpsList` (existing IPs).
///  @returns NSObject*
///
-(NSURLSessionTask*) getNewFloatingIpWithCompletionHandler: 
    (void (^)(NSObject* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips/order"];

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
                              responseType: @"NSObject*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((NSObject*)data, error);
                                }
                            }];
}

///
/// Re-point a Floating IP to a different target IP on one of the customer's services
/// Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via `Sshwitch`), then updates `floating_ip_target_ip`. Use to move a portable IP between the customer's VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param `id` (`floating_ip_id`). Body: `{ ip: <new target IP> }` (also accepts multipart form). Returns `{ success:true, text:'IP Changed' }`. Errors (returned via `json_error`): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: `getFloatingIpInfo` (read current target), `getFloatingIpsList`, `floating_ipsCancel`. Read current target with `getFloatingIpInfo` first.
///  @param _id The Floating IP service ID. Use the ID from `GET /floating_ips`. 
///
///  @param ip IP Address 
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) postFloatingIpsChangeIpWithId: (NSNumber*) _id
    ip: (NSString*) ip
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAFloatingIPsApiErrorDomain code:kISAFloatingIPsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'ip' is set
    if (ip == nil) {
        NSParameterAssert(ip);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"ip"] };
            NSError* error = [NSError errorWithDomain:kISAFloatingIPsApiErrorDomain code:kISAFloatingIPsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips/{id}/change_ip"];

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
    if (ip) {
        formParams[@"ip"] = ip;
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
                              responseType: @"ISASuccessTextResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((ISASuccessTextResponse*)data, error);
                                }
                            }];
}

///
/// Validate a Floating IP order and price it without charging the customer
/// Dry-run for `addFloatingIp` — runs `validate_buy_floating_ip` to apply coupons, compute intro/repeat pricing, and surface errors before committing. No charge, no service created. Body fields (form-encoded): `serviceType` (required, `services_id` from `getNewFloatingIp.packageCosts`), `coupon` (optional code). Returns `{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, password, introFrequency, coupon, couponCode }`. `continue=true` means the order would succeed; `continue=false` plus populated `errors[]` means it would not. Errors: 401 if unauthenticated; 422-style soft errors arrive in the `errors` array. Use the returned `serviceType` and `couponCode` when calling `addFloatingIp`. Sibling ops: `getNewFloatingIp` (catalog), `addFloatingIp` (commit).
///  @param floatingIpOrderRequest  
///
///  @returns void
///
-(NSURLSessionTask*) putFloatingIpsWithFloatingIpOrderRequest: (ISAFloatingIpOrderRequest*) floatingIpOrderRequest
    completionHandler: (void (^)(NSError* error)) handler {
    // verify the required parameter 'floatingIpOrderRequest' is set
    if (floatingIpOrderRequest == nil) {
        NSParameterAssert(floatingIpOrderRequest);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"floatingIpOrderRequest"] };
            NSError* error = [NSError errorWithDomain:kISAFloatingIPsApiErrorDomain code:kISAFloatingIPsApiMissingParamErrorCode userInfo:userInfo];
            handler(error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips/order"];

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
    bodyParam = floatingIpOrderRequest;

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
/// Update a Floating IP service's editable settings (label / metadata)
/// Stub edit endpoint that delegates to the same handler as `getFloatingIpInfo` — currently used for label/metadata edits surfaced by `ViewFloatingIp`. To re-route the IP to a different target use the dedicated `postFloatingIpsChangeIp` instead; this op does not change routing. Path param `id` (`floating_ip_id`). Body: form-encoded fields exposed by the Floating IP edit form (label/comment style). Returns the standard success-text response. Errors: 401 if unauthenticated; effectively 404 if `id` not owned by the caller. Read state first with `getFloatingIpInfo`.  Sibling ops: `getFloatingIpInfo` (read), `postFloatingIpsChangeIp` (re-route), `floating_ipsCancel`.
///  @param _id The Floating IP service ID. Use the ID from `GET /floating_ips`. 
///
///  @returns ISASuccessTextResponse*
///
-(NSURLSessionTask*) updateFloatingIpInfoWithId: (NSString*) _id
    completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler {
    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kISAFloatingIPsApiErrorDomain code:kISAFloatingIPsApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/floating_ips/{id}"];

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



@end
