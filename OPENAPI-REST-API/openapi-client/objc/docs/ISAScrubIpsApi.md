# ISAScrubIpsApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancelScrubIp**](ISAScrubIpsApi.md#cancelscrubip) | **DELETE** /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing
[**createFilter**](ISAScrubIpsApi.md#createfilter) | **POST** /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
[**createGeoRule**](ISAScrubIpsApi.md#creategeorule) | **POST** /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN)
[**createRule**](ISAScrubIpsApi.md#createrule) | **POST** /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
[**deleteFilter**](ISAScrubIpsApi.md#deletefilter) | **POST** /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port
[**disableScrub**](ISAScrubIpsApi.md#disablescrub) | **GET** /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP
[**enableScrub**](ISAScrubIpsApi.md#enablescrub) | **GET** /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service&#39;s protected IP
[**getOrderDetail**](ISAScrubIpsApi.md#getorderdetail) | **GET** /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order
[**getScrubIpDetails**](ISAScrubIpsApi.md#getscrubipdetails) | **GET** /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters)
[**getScrubIpFilterTypes**](ISAScrubIpsApi.md#getscrubipfiltertypes) | **GET** /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter
[**getScrubIpInvoices**](ISAScrubIpsApi.md#getscrubipinvoices) | **GET** /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service
[**getScrubIpLogs**](ISAScrubIpsApi.md#getscrubiplogs) | **GET** /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP
[**getScrubIpsList**](ISAScrubIpsApi.md#getscrubipslist) | **GET** /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account
[**placeScrubOrder**](ISAScrubIpsApi.md#placescruborder) | **POST** /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice
[**putScrubIps**](ISAScrubIpsApi.md#putscrubips) | **PUT** /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing
[**scrubIpsDeleteGeoRule**](ISAScrubIpsApi.md#scrubipsdeletegeorule) | **POST** /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails
[**scrubIpsDeleteRule**](ISAScrubIpsApi.md#scrubipsdeleterule) | **POST** /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails


# **cancelScrubIp**
```objc
-(NSURLSessionTask*) cancelScrubIpWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISACancelScrubIp200Response* output, NSError* error)) handler;
```

Cancel a Scrub IP service and stop its recurring DDoS billing

Cancels the Scrub IP DDoS protection service. The protected IP is removed from the scrubbing infrastructure and the recurring invoice is closed; protection stops at end of the current billing cycle. Use only when the customer no longer needs DDoS scrubbing for the IP. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body. Returns {success: true, text: 'Scrub Ips is canceled.'}. Errors: 401 unauthenticated; 404/Invalid Service if id is not owned by the session account; 409 if the service is not in a cancellable state. Caveat: leaves the underlying VPS/server IP exposed to attacks once protection ends; contact billing for refund handling. Siblings: getScrubIpDetails, disableScrub, getScrubIpInvoices.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Cancel a Scrub IP service and stop its recurring DDoS billing
[apiInstance cancelScrubIpWithId:_id
          completionHandler: ^(ISACancelScrubIp200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->cancelScrubIp: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 

### Return type

[**ISACancelScrubIp200Response***](ISACancelScrubIp200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createFilter**
```objc
-(NSURLSessionTask*) createFilterWithId: (NSNumber*) _id
    createFilter: (ISACreateFilter*) createFilter
        completionHandler: (void (^)(ISACreateFilter201Response* output, NSError* error)) handler;
```

Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port

Attaches a named scrubbing profile to a destination port on the protected IP, applying protocol-aware mitigation (DNS amplification protection, HTTP rate limiting, synproxy SYN-cookies). Call getScrubIpFilterTypes first to list valid `filter_type` values. Path param: `id` (integer, required) — service ID. Body (CreateFilter): `filter_type` (string, required, one of getScrubIpFilterTypes keys), `port` (int, required, >= 0). Destination IP is locked to the service IP server-side; synproxy uses a different shape internally. Returns 201 {success: true, text: 'New filter has been created.'}. Errors: 400 'Filter type is empty/invalid', 'Port is invalid', or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::filterCreate fails. Siblings: deleteFilter, getScrubIpFilterTypes, createRule.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number
ISACreateFilter* createFilter = [[ISACreateFilter alloc] init]; // 

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
[apiInstance createFilterWithId:_id
              createFilter:createFilter
          completionHandler: ^(ISACreateFilter201Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->createFilter: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 
 **createFilter** | [**ISACreateFilter***](ISACreateFilter.md)|  | 

### Return type

[**ISACreateFilter201Response***](ISACreateFilter201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createGeoRule**
```objc
-(NSURLSessionTask*) createGeoRuleWithId: (NSNumber*) _id
    createGeoFirewallRule: (ISACreateGeoFirewallRule*) createGeoFirewallRule
        completionHandler: (void (^)(ISACreateRule201Response* output, NSError* error)) handler;
```

Add a geographic firewall rule (block/allow by country code or ASN)

Creates a geo-based XDP rule on the scrubber for the service's protected IP. Use to block traffic from specific countries or ASNs (botnet source regions) or to allow only known regions. Path param: `id` (integer, required) — service ID. Body (CreateGeoFirewallRule): `country_code` (int, country numeric ID) OR `asn` (int) — at least one is required, `destination_port` (int, defaults 80), `xdp_action` (0 allow, 1 drop, defaults 1). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 errors[] 'Country or Asn is required.' or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::geoFirewallCreate fails. Caveat: country_code is an internal numeric ID, not ISO-3166. Siblings: scrubIpsDeleteGeoRule, createRule, createFilter.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number
ISACreateGeoFirewallRule* createGeoFirewallRule = [[ISACreateGeoFirewallRule alloc] init]; // 

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Add a geographic firewall rule (block/allow by country code or ASN)
[apiInstance createGeoRuleWithId:_id
              createGeoFirewallRule:createGeoFirewallRule
          completionHandler: ^(ISACreateRule201Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->createGeoRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 
 **createGeoFirewallRule** | [**ISACreateGeoFirewallRule***](ISACreateGeoFirewallRule.md)|  | 

### Return type

[**ISACreateRule201Response***](ISACreateRule201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createRule**
```objc
-(NSURLSessionTask*) createRuleWithId: (NSNumber*) _id
    createFirewallRule: (ISACreateFirewallRule*) createFirewallRule
        completionHandler: (void (^)(ISACreateRule201Response* output, NSError* error)) handler;
```

Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)

Creates an XDP firewall rule on the scrubber for the service's protected IP. Use to whitelist a known good source, block an abusive source, or restrict a destination port. Path param: `id` (integer, required) — service ID. Body (CreateFirewallRule): `source_ip` (IPv4, 0 = any), `source_port` (int, 0 = any), `destination_port` (int, 0 = any), `protocol_id` (1 ICMP or 2 TCP/UDP — must be 1 or 2), `xdp_action` (0 allow, 1 drop). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 with `errors[]` for invalid source_ip/protocol_id/xdp_action or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::firewallCreate fails. Caveat: rules are stateless and may interact with active filters. Siblings: scrubIpsDeleteRule, createGeoRule, createFilter.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number
ISACreateFirewallRule* createFirewallRule = [[ISACreateFirewallRule alloc] init]; // 

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
[apiInstance createRuleWithId:_id
              createFirewallRule:createFirewallRule
          completionHandler: ^(ISACreateRule201Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->createRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 
 **createFirewallRule** | [**ISACreateFirewallRule***](ISACreateFirewallRule.md)|  | 

### Return type

[**ISACreateRule201Response***](ISACreateRule201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteFilter**
```objc
-(NSURLSessionTask*) deleteFilterWithId: (NSNumber*) _id
    createFilter: (ISACreateFilter*) createFilter
        completionHandler: (void (^)(ISADeleteFilter200Response* output, NSError* error)) handler;
```

Remove a scrubbing filter by matching filter_type and port

Removes a previously attached scrubbing profile from the protected IP. Identification is by composite key, not `rule_id` — pass the same `filter_type` and `port` that were used in `createFilter`. The endpoint splits `filter_type` on `_` to dispatch to the correct delete shape (synproxy vs generic). Sibling ops: `createFilter`, `getScrubIpFilterTypes`.  **Path:** `id` (integer, required) — Scrub IP service ID.  **Body fields:** - `filter_type` (string, required) — must match an enabled type from `getScrubIpFilterTypes`. - `port` (integer, required) — must be `> 0`.  **Returns:** `{ success: true, text: 'Filter is deleted.' }`.  **Errors:** - `400` — `'Filter is required.'` / `'Port is required.'` / `'Invalid filter'` / `Invalid Service`. - `401` — unauthenticated. - `500` — upstream `Scrub::filterDelete` failed.  **Caveat:** the port loses its protocol-specific scrubbing protection until `createFilter` is called again with the same composite key. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number
ISACreateFilter* createFilter = [[ISACreateFilter alloc] init]; // 

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Remove a scrubbing filter by matching filter_type and port
[apiInstance deleteFilterWithId:_id
              createFilter:createFilter
          completionHandler: ^(ISADeleteFilter200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->deleteFilter: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 
 **createFilter** | [**ISACreateFilter***](ISACreateFilter.md)|  | 

### Return type

[**ISADeleteFilter200Response***](ISADeleteFilter200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **disableScrub**
```objc
-(NSURLSessionTask*) disableScrubWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISADisableScrub200Response* output, NSError* error)) handler;
```

Disable DDoS scrubbing and remove the BGP announcement on the IP

Withdraws the BGP announcement from Wanguard so the IP stops being routed through scrubbing; traffic resumes flowing directly to the backend. Use for maintenance windows or migration off scrub. Path param: `id` (integer, required) — service ID from getScrubIpsList. No body (HTTP GET). The endpoint reads the stored Wanguard `href` from the service's `extra` JSON to know which announcement to delete; clears `extra` on success. Returns {success: true, text: 'Scrub is disabled on your IP.'}. Errors: 400 Invalid Service if id is not owned, or 'Scrub is not enabled in this service.' if there is no active announcement; 401 unauthenticated; 500 if upstream delete fails. Caveat: leaves the IP unprotected against DDoS until enableScrub is called. Siblings: enableScrub, cancelScrubIp, getScrubIpDetails.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Disable DDoS scrubbing and remove the BGP announcement on the IP
[apiInstance disableScrubWithId:_id
          completionHandler: ^(ISADisableScrub200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->disableScrub: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 

### Return type

[**ISADisableScrub200Response***](ISADisableScrub200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **enableScrub**
```objc
-(NSURLSessionTask*) enableScrubWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAEnableScrub200Response* output, NSError* error)) handler;
```

Enable DDoS scrubbing (BGP announcement) on the service's protected IP

Routes the service's protected IP through the Wanguard scrubbing infrastructure by creating a BGP announcement, so inbound traffic passes through filtering before reaching the backend. Call after placeScrubOrder activation, after disableScrub, or whenever the announcement was lost. Path param: `id` (integer, required) — service ID from getScrubIpsList. No request body (HTTP GET). Returns {success: true, text: 'Scrub is enabled on your IP.'} on 201 from Wanguard, persisted into the service's `extra` column. Errors: 400 Invalid Service if id is not owned by the session account; 401 unauthenticated; 500 if the upstream Wanguard call fails. Caveat: enabling re-routes live traffic and can briefly disrupt active sessions. Siblings: disableScrub, getScrubIpDetails, getScrubIpLogs.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Enable DDoS scrubbing (BGP announcement) on the service's protected IP
[apiInstance enableScrubWithId:_id
          completionHandler: ^(ISAEnableScrub200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->enableScrub: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 

### Return type

[**ISAEnableScrub200Response***](ISAEnableScrub200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderDetail**
```objc
-(NSURLSessionTask*) getOrderDetailWithCompletionHandler: 
        (void (^)(ISAGetOrderDetail200Response* output, NSError* error)) handler;
```

Get plans, pricing, and eligible IPs for a new Scrub IP order

Returns the data needed to render a new-order form: `packageCosts` (default services_id and recurring price in customer currency with symbol), `serviceTypes` (each buyable plan with services_id, services_name, services_cost, services_module), and `ips` (the customer's existing VPS/server/floating IPs eligible to be put behind a scrubber, each with service_id, service_module, service_hostname). Use as a precursor to putScrubIps (validate) or placeScrubOrder (commit). No path/query/body parameters. Returns object. Errors: 401 unauthenticated. Caveat: ips list is filtered to the session account; pricing is converted to the customer's currency. Siblings: putScrubIps, placeScrubOrder, getScrubIpsList.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];



ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Get plans, pricing, and eligible IPs for a new Scrub IP order
[apiInstance getOrderDetailWithCompletionHandler: 
          ^(ISAGetOrderDetail200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->getOrderDetail: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISAGetOrderDetail200Response***](ISAGetOrderDetail200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScrubIpDetails**
```objc
-(NSURLSessionTask*) getScrubIpDetailsWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAGetScrubIpDetails200Response* output, NSError* error)) handler;
```

Get full Scrub IP service detail (rules + geo + filters)

Returns the full service-detail payload for one Scrub IP — used to render the dashboard or before mutating rules/filters. Includes `serviceInfo` (status, scrubbed IP, custid), `billingDetails` (cost, frequency), `client_links` (allowed self-service actions), and `filter_firewall` with the active firewall `rules`, geographic `geo_rules`, and traffic `filters`. Each rule/filter row carries its own `id` used by the delete endpoints. Sibling ops: `getScrubIpsList`, `enableScrub`, `disableScrub`, `createRule`, `scrubIpsDeleteRule`, `createGeoRule`, `scrubIpsDeleteGeoRule`, `createFilter`, `deleteFilter`, `getScrubIpInvoices`, `getScrubIpLogs`, `cancelScrubIp`.  **Path:** `id` (integer, required) — service ID from `getScrubIpsList`.  **Body / query:** None.  **Returns:** object with `serviceInfo`, `billingDetails`, `client_links`, `filter_firewall` (`rules` / `geo_rules` / `filters`).  **Auth:** Session/API key. Ownership enforced via `scrub_ips_custid`.  **Errors:** - `401` — unauthenticated. - `Invalid Service` — `id` is not owned by the session account.  **Caveat:** rule/filter IDs are regenerated after recreate — re-fetch before calling a delete endpoint.  **Related calls:** - **Mutations:** `enableScrub`, `disableScrub`, `createRule`, `createGeoRule`, `createFilter`. - **Deletes:** `scrubIpsDeleteRule`, `scrubIpsDeleteGeoRule`, `deleteFilter`. - **Billing / activity:** `getScrubIpInvoices`, `getScrubIpLogs`. - **Cancel:** `cancelScrubIp`. 

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Get full Scrub IP service detail (rules + geo + filters)
[apiInstance getScrubIpDetailsWithId:_id
          completionHandler: ^(ISAGetScrubIpDetails200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->getScrubIpDetails: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 

### Return type

[**ISAGetScrubIpDetails200Response***](ISAGetScrubIpDetails200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScrubIpFilterTypes**
```objc
-(NSURLSessionTask*) getScrubIpFilterTypesWithCompletionHandler: 
        (void (^)(ISAScrubIpFilterTypes* output, NSError* error)) handler;
```

List enabled traffic filter profiles available for createFilter

Returns the catalog of scrub filter profiles (e.g. dns, http, synproxy) currently enabled on the scrubbing platform, keyed by filter_name with a humanized display `name` and `desc`. Call this to populate a dropdown before invoking createFilter — the `filter_type` field on that endpoint must be one of the keys returned here. Not service-scoped: no path/query/body parameters and the same set applies to every Scrub IP. Returns {success: true, filters: {<filter_name>: {name, desc}, ...}}. Errors: 401 unauthenticated. Caveat: only filters with enabled=1 are returned; profile semantics are platform-defined (synproxy uses different request shape internally). Siblings: createFilter, deleteFilter, getScrubIpDetails.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];



ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// List enabled traffic filter profiles available for createFilter
[apiInstance getScrubIpFilterTypesWithCompletionHandler: 
          ^(ISAScrubIpFilterTypes* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->getScrubIpFilterTypes: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISAScrubIpFilterTypes***](ISAScrubIpFilterTypes.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScrubIpInvoices**
```objc
-(NSURLSessionTask*) getScrubIpInvoicesWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAChargeInvoiceRows* output, NSError* error)) handler;
```

List recurring and one-time invoices billed for this Scrub IP service

Returns the recurring and one-time invoices generated for the Scrub IP service so the caller can verify billing status, present a payment history, or initiate payment on an unpaid invoice. Use after placeScrubOrder (to find the new invoice id) or before cancelScrubIp (to surface outstanding balance). Path param: `id` (integer, required) — service ID from getScrubIpsList. No body/query parameters. Returns ChargeInvoiceRows (array of invoice objects with id, amount, status, due dates). Errors: 401 unauthenticated; empty result if id is not owned by the session account. Caveat: paid invoices remain in history; filter on status client-side. Siblings: getScrubIpDetails, placeScrubOrder, cancelScrubIp.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// List recurring and one-time invoices billed for this Scrub IP service
[apiInstance getScrubIpInvoicesWithId:_id
          completionHandler: ^(ISAChargeInvoiceRows* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->getScrubIpInvoices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 

### Return type

[**ISAChargeInvoiceRows***](ISAChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScrubIpLogs**
```objc
-(NSURLSessionTask*) getScrubIpLogsWithId: (NSString*) _id
        completionHandler: (void (^)(NSArray<ISAScrubIpsLogRowSchema>* output, NSError* error)) handler;
```

Get last 50000 packet/event log entries for the protected IP

Pulls scrubbing telemetry directly from the SCRUBLOGS clickhouse-style backend: timestamp, source IP, target IP, target port, protocol (ICMP/IGMP/TCP/UDP/etc.), byte_count, action (Allow/Drop/Challenge), and the matching filter label. Use for incident analysis, validating new firewall rules, or proving a DDoS attack hit the scrubber. Path param: `id` (string, required) — service ID. No body/query parameters. Timestamps are converted to the customer's timezone. Returns array of log rows (ScrubIpsLogRowSchema), most recent first, capped at 50000. Errors: 401 unauthenticated; returns false if id is not owned or upstream returns no data — not a 404. Caveat: large response; logs are not real-time and source IPs are reverse-byte-ordered. Siblings: getScrubIpDetails, enableScrub, createRule.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSString* _id = 413232  ; // Scrub Order ID

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Get last 50000 packet/event log entries for the protected IP
[apiInstance getScrubIpLogsWithId:_id
          completionHandler: ^(NSArray<ISAScrubIpsLogRowSchema>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->getScrubIpLogs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Scrub Order ID | 

### Return type

[**NSArray<ISAScrubIpsLogRowSchema>***](ISAScrubIpsLogRowSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getScrubIpsList**
```objc
-(NSURLSessionTask*) getScrubIpsListWithCompletionHandler: 
        (void (^)(NSArray<ISAScrubIpsRowSchema>* output, NSError* error)) handler;
```

List all Scrub IP DDoS protection services on the authenticated account

Returns every Scrub IP service belonging to the authenticated customer with status, protected IP, plan name, and recurring cost. Use this for dashboards, picking a service ID for downstream calls (getScrubIpDetails, enableScrub, createRule, getScrubIpLogs), or auditing which IPs are routed through DDoS scrubbing. No path/query/body parameters; service ownership is enforced via session account_id. Returns an array of {id, repeat_invoices_cost, ip, status, services_name}; empty array if no scrub services. Errors: 401 unauthenticated. Caveat: only customer-owned services are visible. Siblings: getScrubIpDetails, getOrderDetail, placeScrubOrder, cancelScrubIp.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];



ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// List all Scrub IP DDoS protection services on the authenticated account
[apiInstance getScrubIpsListWithCompletionHandler: 
          ^(NSArray<ISAScrubIpsRowSchema>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->getScrubIpsList: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<ISAScrubIpsRowSchema>***](ISAScrubIpsRowSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **placeScrubOrder**
```objc
-(NSURLSessionTask*) placeScrubOrderWithScrubIpPlaceOrder: (ISAScrubIpPlaceOrder*) scrubIpPlaceOrder
        completionHandler: (void (^)(ISAPlaceScrubOrder201Response* output, NSError* error)) handler;
```

Place a new Scrub IP DDoS protection order and generate an invoice

Commits the order: re-runs validate_buy_scrub_ip then place_buy_scrub_ip which creates the service row, repeat_invoice, and a one-time invoice for the prorated charge. Use putScrubIps first to surface errors without billing. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id), `ip` (eligible IP from getOrderDetail). Returns 201 {success: true, text: 'ScrubIp order is placed.', order_details: {total_cost, service_id, invoice_id, invoice_description, cj_params}}. Errors: 400 {success: false, text: 'Unable to place order.', errors: []} on validation; 401 unauthenticated; 422 on invalid serviceType/ip; 409 if the IP is already protected. Caveat: invoice is unpaid at creation — pay via Pay endpoints to activate. Siblings: putScrubIps, getOrderDetail, enableScrub, getScrubIpInvoices.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


ISAScrubIpPlaceOrder* scrubIpPlaceOrder = [[ISAScrubIpPlaceOrder alloc] init]; // 

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Place a new Scrub IP DDoS protection order and generate an invoice
[apiInstance placeScrubOrderWithScrubIpPlaceOrder:scrubIpPlaceOrder
          completionHandler: ^(ISAPlaceScrubOrder201Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->placeScrubOrder: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scrubIpPlaceOrder** | [**ISAScrubIpPlaceOrder***](ISAScrubIpPlaceOrder.md)|  | 

### Return type

[**ISAPlaceScrubOrder201Response***](ISAPlaceScrubOrder201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putScrubIps**
```objc
-(NSURLSessionTask*) putScrubIpsWithScrubIpPlaceOrder: (ISAScrubIpPlaceOrder*) scrubIpPlaceOrder
        completionHandler: (void (^)(ISAPutScrubIps200Response* output, NSError* error)) handler;
```

Validate a Scrub IP order and return effective pricing without billing

Dry-runs a Scrub IP purchase via validate_buy_scrub_ip and returns whether the order would succeed plus the resolved pricing — without creating an invoice. Use to render a real-time price/error panel as the user picks options. No path parameters. Body (ScrubIpPlaceOrder): `serviceType` (services_id from getOrderDetail.serviceTypes), `ip` (one of getOrderDetail.ips), optional `coupon`. Returns {continue: bool, errors: [], serviceType, serviceCost, originalCost, repeatServiceCost}. Errors: 401 unauthenticated; validation failures appear in `errors`, not as HTTP 4xx. Caveat: idempotent — call as often as needed; 422 on invalid coupon surfaces in the errors array. Siblings: getOrderDetail, placeScrubOrder, getScrubIpsList.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


ISAScrubIpPlaceOrder* scrubIpPlaceOrder = [[ISAScrubIpPlaceOrder alloc] init]; // 

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Validate a Scrub IP order and return effective pricing without billing
[apiInstance putScrubIpsWithScrubIpPlaceOrder:scrubIpPlaceOrder
          completionHandler: ^(ISAPutScrubIps200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->putScrubIps: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scrubIpPlaceOrder** | [**ISAScrubIpPlaceOrder***](ISAScrubIpPlaceOrder.md)|  | 

### Return type

[**ISAPutScrubIps200Response***](ISAPutScrubIps200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scrubIpsDeleteGeoRule**
```objc
-(NSURLSessionTask*) scrubIpsDeleteGeoRuleWithId: (NSNumber*) _id
    deleteGeoFirewallRule: (ISADeleteGeoFirewallRule*) deleteGeoFirewallRule
        completionHandler: (void (^)(ISAScrubIpsDeleteRule200Response* output, NSError* error)) handler;
```

Delete a geo firewall rule by rule_id from getScrubIpDetails

Removes a previously created geographic firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.geo_rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'Rule Id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::geoFirewallDelete fails. Caveat: removing a country/ASN block re-admits that traffic. Siblings: createGeoRule, scrubIpsDeleteRule, deleteFilter, getScrubIpDetails.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number
ISADeleteGeoFirewallRule* deleteGeoFirewallRule = [[ISADeleteGeoFirewallRule alloc] init]; // 

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Delete a geo firewall rule by rule_id from getScrubIpDetails
[apiInstance scrubIpsDeleteGeoRuleWithId:_id
              deleteGeoFirewallRule:deleteGeoFirewallRule
          completionHandler: ^(ISAScrubIpsDeleteRule200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->scrubIpsDeleteGeoRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 
 **deleteGeoFirewallRule** | [**ISADeleteGeoFirewallRule***](ISADeleteGeoFirewallRule.md)|  | 

### Return type

[**ISAScrubIpsDeleteRule200Response***](ISAScrubIpsDeleteRule200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scrubIpsDeleteRule**
```objc
-(NSURLSessionTask*) scrubIpsDeleteRuleWithId: (NSNumber*) _id
    deleteFirewallRule: (ISADeleteFirewallRule*) deleteFirewallRule
        completionHandler: (void (^)(ISAScrubIpsDeleteRule200Response* output, NSError* error)) handler;
```

Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails

Removes a previously created L3/L4 firewall rule from the Scrub IP service. The rule_id must come from the `filter_firewall.rules[].id` array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: `id` (integer, required) — Scrub IP service ID. Body (JSON): {`rule_id`: integer, required}. Returns {success: true, text: 'Firewall Rule has been deleted.'}. Errors: 400 Invalid Service, 'rule_id is required.' or 'Invalid rule id' (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::firewallDelete fails. Caveat: if the rule was the only protection against a specific source, deleting it re-exposes the IP. Siblings: createRule, scrubIpsDeleteGeoRule, deleteFilter, getScrubIpDetails.

### Example
```objc
ISADefaultConfiguration *apiConfig = [ISADefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: sessionIdCookieAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];

// Configure API key authorization: (authentication scheme: apiKeyAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"X-API-KEY"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"X-API-KEY"];

// Configure API key authorization: (authentication scheme: sessionIdHeaderAuth)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"sessionid"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"sessionid"];


NSNumber* _id = @56; // ScrubIp ID number
ISADeleteFirewallRule* deleteFirewallRule = [[ISADeleteFirewallRule alloc] init]; // 

ISAScrubIpsApi*apiInstance = [[ISAScrubIpsApi alloc] init];

// Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
[apiInstance scrubIpsDeleteRuleWithId:_id
              deleteFirewallRule:deleteFirewallRule
          completionHandler: ^(ISAScrubIpsDeleteRule200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAScrubIpsApi->scrubIpsDeleteRule: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| ScrubIp ID number | 
 **deleteFirewallRule** | [**ISADeleteFirewallRule***](ISADeleteFirewallRule.md)|  | 

### Return type

[**ISAScrubIpsDeleteRule200Response***](ISAScrubIpsDeleteRule200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

