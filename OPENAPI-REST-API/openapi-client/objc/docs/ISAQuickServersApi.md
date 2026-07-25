# ISAQuickServersApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addQs**](ISAQuickServersApi.md#addqs) | **POST** /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning
[**deleteQsBackup**](ISAQuickServersApi.md#deleteqsbackup) | **DELETE** /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage
[**doQsBlockSmtp**](ISAQuickServersApi.md#doqsblocksmtp) | **GET** /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse
[**doQsDisableCd**](ISAQuickServersApi.md#doqsdisablecd) | **GET** /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer
[**doQsDisableQuota**](ISAQuickServersApi.md#doqsdisablequota) | **GET** /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer
[**doQsEjectCd**](ISAQuickServersApi.md#doqsejectcd) | **GET** /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer&#39;s virtual CD drive
[**doQsEnableQuota**](ISAQuickServersApi.md#doqsenablequota) | **GET** /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer
[**doQsRestart**](ISAQuickServersApi.md#doqsrestart) | **GET** /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart
[**doQsStart**](ISAQuickServersApi.md#doqsstart) | **GET** /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot
[**doQsStop**](ISAQuickServersApi.md#doqsstop) | **GET** /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command
[**downloadQsBackup**](ISAQuickServersApi.md#downloadqsbackup) | **PATCH** /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup
[**getNewQs**](ISAQuickServersApi.md#getnewqs) | **GET** /qs/order | Get QuickServer order form metadata and available plans/templates
[**getQsBackup**](ISAQuickServersApi.md#getqsbackup) | **GET** /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
[**getQsBackups**](ISAQuickServersApi.md#getqsbackups) | **GET** /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage
[**getQsChangeHostname**](ISAQuickServersApi.md#getqschangehostname) | **GET** /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support
[**getQsChangeRootPassword**](ISAQuickServersApi.md#getqschangerootpassword) | **GET** /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements
[**getQsChangeTimezone**](ISAQuickServersApi.md#getqschangetimezone) | **GET** /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone
[**getQsChangeWebuzoPassword**](ISAQuickServersApi.md#getqschangewebuzopassword) | **GET** /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password
[**getQsInfo**](ISAQuickServersApi.md#getqsinfo) | **GET** /qs/{id} | Get full details for one QuickServer including credentials and links
[**getQsInsertCd**](ISAQuickServersApi.md#getqsinsertcd) | **GET** /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer&#39;s virtual CD
[**getQsInvoices**](ISAQuickServersApi.md#getqsinvoices) | **GET** /qs/{id}/invoices | List billing invoices charged for one QuickServer service
[**getQsList**](ISAQuickServersApi.md#getqslist) | **GET** /qs | List QuickServer rapid-deploy dedicated servers on the account
[**getQsReinstallOs**](ISAQuickServersApi.md#getqsreinstallos) | **GET** /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall
[**getQsResetPassword**](ISAQuickServersApi.md#getqsresetpassword) | **GET** /qs/{id}/reset_password | Get options for QuickServer randomized root password reset
[**getQsReverseDns**](ISAQuickServersApi.md#getqsreversedns) | **GET** /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer&#39;s IPs
[**getQsSetupVnc**](ISAQuickServersApi.md#getqssetupvnc) | **GET** /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer
[**getQsTrafficUsage**](ISAQuickServersApi.md#getqstrafficusage) | **GET** /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer&#39;s current billing period
[**getQsViewDesktop**](ISAQuickServersApi.md#getqsviewdesktop) | **GET** /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format)
[**getQsWelcomeEmail**](ISAQuickServersApi.md#getqswelcomeemail) | **GET** /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials
[**postQsChangeHostname**](ISAQuickServersApi.md#postqschangehostname) | **POST** /qs/{id}/change_hostname | Change a QuickServer&#39;s system hostname (OpenVZ/Virtuozzo only)
[**postQsChangeRootPassword**](ISAQuickServersApi.md#postqschangerootpassword) | **POST** /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value
[**postQsChangeTimezone**](ISAQuickServersApi.md#postqschangetimezone) | **POST** /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry
[**postQsChangeWebuzoPassword**](ISAQuickServersApi.md#postqschangewebuzopassword) | **POST** /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued)
[**postQsInsertCd**](ISAQuickServersApi.md#postqsinsertcd) | **POST** /qs/{id}/insert_cd | Mount an ISO image as the QuickServer&#39;s virtual CD via URL
[**postQsReinstallOs**](ISAQuickServersApi.md#postqsreinstallos) | **POST** /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
[**postQsResetPassword**](ISAQuickServersApi.md#postqsresetpassword) | **POST** /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value
[**postQsReverseDns**](ISAQuickServersApi.md#postqsreversedns) | **POST** /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer&#39;s IPs
[**postQsSetupVnc**](ISAQuickServersApi.md#postqssetupvnc) | **POST** /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer&#39;s VNC console
[**postQsTrafficUsage**](ISAQuickServersApi.md#postqstrafficusage) | **POST** /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant)
[**postQsViewDesktop**](ISAQuickServersApi.md#postqsviewdesktop) | **POST** /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload
[**postQuickServerRestore**](ISAQuickServersApi.md#postquickserverrestore) | **POST** /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
[**putQs**](ISAQuickServersApi.md#putqs) | **PUT** /qs/order | Validate a QuickServer order without charging or provisioning
[**quickserversCancel**](ISAQuickServersApi.md#quickserverscancel) | **DELETE** /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle
[**updateQsInfo**](ISAQuickServersApi.md#updateqsinfo) | **POST** /qs/{id} | Update QuickServer order metadata or stored settings without OS impact


# **addQs**
```objc
-(NSURLSessionTask*) addQsWithQsOrderRequest: (ISAQsOrderRequest*) qsOrderRequest
        completionHandler: (void (^)(ISAServiceOrderPostResponse* output, NSError* error)) handler;
```

Place a QuickServer order, generating a real invoice and queuing provisioning

Commits the validated order: creates the service row, generates a real invoice, and queues provisioning. Body fields match `putQs` (`server`, `password`, `os`, `comment`, `tos`) — call `putQs` first to catch errors. On `validation.continue=false`, returns the joined error string with no charge. Returns: `ServiceOrderPostResponse` with the new service ID and invoice info. Pay via `getBillingInvoice`/`initiatePayment`. Errors: 401 if unauthenticated, 4xx with message on validation failure. Siblings: `putQs` (validate first), `getNewQs`, `addVps` (VPS equivalent).

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


ISAQsOrderRequest* qsOrderRequest = [[ISAQsOrderRequest alloc] init]; // 

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Place a QuickServer order, generating a real invoice and queuing provisioning
[apiInstance addQsWithQsOrderRequest:qsOrderRequest
          completionHandler: ^(ISAServiceOrderPostResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->addQs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qsOrderRequest** | [**ISAQsOrderRequest***](ISAQsOrderRequest.md)|  | 

### Return type

[**ISAServiceOrderPostResponse***](ISAServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteQsBackup**
```objc
-(NSURLSessionTask*) deleteQsBackupWithId: (NSNumber*) _id
    file: (NSString*) file
    all: (NSString*) all
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Permanently delete a QuickServer backup file from object storage

Removes the backup from its storage backend. Irreversible — the backup cannot be recovered. Path param: `id`. Required: `file` (the backup `name` from `getQsBackups`, in query or form body). Works for `swift` and `minio` backups; `zfs` snapshots cannot be deleted via this endpoint (returns an error pointing to support). Returns: `SuccessTextResponse` with the removed name. Errors: 401, 404 if not owned, error message if backup type is unsupported or the storage operation fails. Siblings: `getQsBackups` (list), `downloadQsBackup` (PATCH), `postQuickServerRestore`.

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


NSNumber* _id = @56; // QuickServer ID number
NSString* file = @"file_example"; // The backup filename to delete.
NSString* all = @"all_example"; // Set to `1` to list all backups across all services, not just the ones for the given QuickServer. (optional)

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Permanently delete a QuickServer backup file from object storage
[apiInstance deleteQsBackupWithId:_id
              file:file
              all:all
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->deleteQsBackup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 
 **file** | **NSString***| The backup filename to delete. | 
 **all** | **NSString***| Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given QuickServer. | [optional] 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doQsBlockSmtp**
```objc
-(NSURLSessionTask*) doQsBlockSmtpWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Block outbound SMTP traffic on a QuickServer to halt mail abuse

Queues a firewall rule that drops outbound port 25 traffic, used to halt spam/abuse without taking the server offline. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes via the queue worker, which also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Reversible only by support — there is no `unblock_smtp` endpoint. Siblings: `doVpsBlockSmtp`, `getQsInfo`.

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


NSNumber* _id = @56; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Block outbound SMTP traffic on a QuickServer to halt mail abuse
[apiInstance doQsBlockSmtpWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->doQsBlockSmtp: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number. | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doQsDisableCd**
```objc
-(NSURLSessionTask*) doQsDisableCdWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Disable the virtual CD/DVD drive device on a QuickServer

Queues removal of the virtual CD/DVD device from the QuickServer (full disable, not just eject). Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsEjectCd` (eject the ISO but keep drive), `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list available ISOs).

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


NSNumber* _id = @56; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Disable the virtual CD/DVD drive device on a QuickServer
[apiInstance doQsDisableCdWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->doQsDisableCd: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number. | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doQsDisableQuota**
```objc
-(NSURLSessionTask*) doQsDisableQuotaWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Disable disk-quota enforcement at OS level on a QuickServer

Queues a job to turn off disk-quota enforcement at the OS level. Use when quota errors block legitimate writes or before resizing disk space. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Re-enable later with `doQsEnableQuota`. Siblings: `doQsEnableQuota` (re-enable), `doVpsDisableQuota` (VPS equivalent).

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


NSNumber* _id = @56; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Disable disk-quota enforcement at OS level on a QuickServer
[apiInstance doQsDisableQuotaWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->doQsDisableQuota: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number. | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doQsEjectCd**
```objc
-(NSURLSessionTask*) doQsEjectCdWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Eject the currently mounted ISO from a QuickServer's virtual CD drive

Queues an eject — drive remains attached but no media. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. The queue worker also re-runs VNC setup so the console reflects the change. Errors: 401, 404 if `id` is not owned by caller. Note: this handler does not validate `active` status. Siblings: `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list ISOs), `doQsDisableCd` (remove the drive itself).

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


NSNumber* _id = @56; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Eject the currently mounted ISO from a QuickServer's virtual CD drive
[apiInstance doQsEjectCdWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->doQsEjectCd: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number. | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doQsEnableQuota**
```objc
-(NSURLSessionTask*) doQsEnableQuotaWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Enable disk-quota enforcement at OS level on a QuickServer

Queues a job to turn on disk-quota enforcement at the OS level. Pair with `doQsDisableQuota` when re-enabling after maintenance, disk resizing, or restoring a backup. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsDisableQuota` (turn off), `doVpsEnableQuota` (VPS equivalent).

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


NSNumber* _id = @56; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Enable disk-quota enforcement at OS level on a QuickServer
[apiInstance doQsEnableQuotaWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->doQsEnableQuota: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number. | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doQsRestart**
```objc
-(NSURLSessionTask*) doQsRestartWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Reboot a QuickServer with a graceful OS-level restart

Queues a graceful restart — equivalent to `reboot` inside the OS. Path param: `id` (integer). No body. Use to recover from a hung service or apply pending kernel/config changes. Returns: `{ text, queueId }`. Async — server is back online within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on `active` status — restarts work even on suspended services. Siblings: `doQsStart`, `doQsStop`, `doVpsRestart`.

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


NSNumber* _id = @56; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Reboot a QuickServer with a graceful OS-level restart
[apiInstance doQsRestartWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->doQsRestart: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number. | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doQsStart**
```objc
-(NSURLSessionTask*) doQsStartWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Power on a QuickServer that is currently stopped or pending boot

Queues a `start` command to bring the QuickServer online. Path param: `id` (integer). No body. Idempotent in practice — re-running on an already-on server is a no-op at the worker. Returns: `{ text, queueId }`. Async — typically online within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status, so it can be issued even for non-active services. Siblings: `doQsStop`, `doQsRestart`, `getQsInfo`, `doVpsStart`.

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


NSNumber* _id = @56; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Power on a QuickServer that is currently stopped or pending boot
[apiInstance doQsStartWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->doQsStart: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number. | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **doQsStop**
```objc
-(NSURLSessionTask*) doQsStopWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Power off a QuickServer with a graceful shutdown command

Queues a `stop` command. Path param: `id` (integer). No body. Use before maintenance, snapshot, or to halt traffic — billing continues regardless of power state, so use `quickserversCancel` to also stop charges. Returns: `{ text, queueId }`. Async — typically off within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status. Siblings: `doQsStart`, `doQsRestart`, `doVpsStop`.

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


NSNumber* _id = @56; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Power off a QuickServer with a graceful shutdown command
[apiInstance doQsStopWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->doQsStop: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number. | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **downloadQsBackup**
```objc
-(NSURLSessionTask*) downloadQsBackupWithId: (NSNumber*) _id
    downloadQsBackupRequest: (ISADownloadQsBackupRequest*) downloadQsBackupRequest
    all: (NSString*) all
        completionHandler: (void (^)(ISADownloadQsBackup200Response* output, NSError* error)) handler;
```

Generate a 24-hour pre-signed download URL for a QuickServer backup

Returns a temporary signed URL to fetch the backup directly from object storage. Path param: `id`. Body (JSON or form): `file` (the backup `name` from `getQsBackups`). Only available for `minio`-type backups; `swift` and `zfs` backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: `{ text, url }`. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: `getQsBackups` (list, get `name`), `deleteQsBackup`, `postQuickServerRestore`.

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


NSNumber* _id = @56; // QuickServer ID number
ISADownloadQsBackupRequest* downloadQsBackupRequest = [[ISADownloadQsBackupRequest alloc] init]; // 
NSString* all = @"all_example"; // Set to `1` to list all backups across all services, not just the ones for the given QuickServer. (optional)

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Generate a 24-hour pre-signed download URL for a QuickServer backup
[apiInstance downloadQsBackupWithId:_id
              downloadQsBackupRequest:downloadQsBackupRequest
              all:all
          completionHandler: ^(ISADownloadQsBackup200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->downloadQsBackup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 
 **downloadQsBackupRequest** | [**ISADownloadQsBackupRequest***](ISADownloadQsBackupRequest.md)|  | 
 **all** | **NSString***| Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given QuickServer. | [optional] 

### Return type

[**ISADownloadQsBackup200Response***](ISADownloadQsBackup200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNewQs**
```objc
-(NSURLSessionTask*) getNewQsWithCompletionHandler: 
        (void (^)(ISAQuickserverOrder* output, NSError* error)) handler;
```

Get QuickServer order form metadata and available plans/templates

Use before placing or validating a QuickServer order to retrieve pricing, available servers, OS templates, and form fields. Read-only — no params, no body, no charge. Returns: `QuickserverOrder` schema with plan/template/server options used to build the order payload for `putQs` (validate) or `addQs` (place). Errors: 401 if unauthenticated. Siblings: `putQs` (dry-run validation), `addQs` (commits and invoices), `getNewVps` (virtual VPS ordering surface).

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



ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get QuickServer order form metadata and available plans/templates
[apiInstance getNewQsWithCompletionHandler: 
          ^(ISAQuickserverOrder* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getNewQs: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ISAQuickserverOrder***](ISAQuickserverOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsBackup**
```objc
-(NSURLSessionTask*) getQsBackupWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Queue creation of a new QuickServer backup snapshot (note: GET triggers job)

Note: GET on `/qs/{id}/backup` triggers a backup job — despite the verb, this is a state-changing action. Queues a `backup` operation; backup name is auto-generated. Path param: `id` (integer). Returns: `{ text, queueId }`. Async — backup completes in minutes to hours depending on disk size. Poll `getQsBackups` to see when it appears. Errors: 401 if unauthenticated, 404 if not owned by caller, 409 if status != `active`. Siblings: `getQsBackups` (list), `postQuickServerRestore`, `downloadQsBackup`, `deleteQsBackup`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
[apiInstance getQsBackupWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsBackup: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsBackups**
```objc
-(NSURLSessionTask*) getQsBackupsWithId: (NSNumber*) _id
    all: (NSString*) all
        completionHandler: (void (^)(ISAVpsBackupRows* output, NSError* error)) handler;
```

List available QuickServer backups across Swift, MinIO, and ZFS storage

Returns all backups visible to the caller for this QuickServer across the three backup backends. Path param: `id` (integer). Optional query `all=1` lists every backup the customer owns, not just this server's. Returns: `VpsBackupRows` array — each row has `name`, `type` (swift/minio/zfs), `size`, `service`, `path`. Use `name` (not a numeric ID) with `downloadQsBackup` (PATCH), `deleteQsBackup` (DELETE), or `postQuickServerRestore`. Errors: 401, 404 if not owned by caller. Siblings: `getQsBackup` (create), `postQuickServerRestore`.

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


NSNumber* _id = @56; // QuickServer ID number
NSString* all = @"all_example"; // Set to `1` to list all backups across all services, not just the ones for the given QuickServer. (optional)

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// List available QuickServer backups across Swift, MinIO, and ZFS storage
[apiInstance getQsBackupsWithId:_id
              all:all
          completionHandler: ^(ISAVpsBackupRows* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsBackups: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 
 **all** | **NSString***| Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given QuickServer. | [optional] 

### Return type

[**ISAVpsBackupRows***](ISAVpsBackupRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsChangeHostname**
```objc
-(NSURLSessionTask*) getQsChangeHostnameWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Get current QuickServer hostname plus change rules and platform support

Read-only probe before calling `postQsChangeHostname`. Path param: `id` (integer). Returns the current hostname and the validation rules the new hostname must satisfy. Returns: object with hostname metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: hostname changes are only supported on OpenVZ/Virtuozzo platforms — `postQsChangeHostname` rejects KVM/dedicated types with an explanatory error. Siblings: `postQsChangeHostname`, `getVpsChangeHostname`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get current QuickServer hostname plus change rules and platform support
[apiInstance getQsChangeHostnameWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsChangeHostname: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsChangeRootPassword**
```objc
-(NSURLSessionTask*) getQsChangeRootPasswordWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Get metadata for QuickServer root/OS password change requirements

Read-only probe before calling `postQsChangeRootPassword`. Path param: `id` (integer). Use to surface password complexity rules and confirm the QuickServer accepts root password changes. Returns: object with reset metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: this changes the OS root password (Linux) — for the Webuzo control panel password use `postQsChangeWebuzoPassword`. Siblings: `postQsChangeRootPassword`, `postQsResetPassword` (random password), `getVpsChangeRootPassword`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get metadata for QuickServer root/OS password change requirements
[apiInstance getQsChangeRootPasswordWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsChangeRootPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsChangeTimezone**
```objc
-(NSURLSessionTask*) getQsChangeTimezoneWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSArray<NSString*>* output, NSError* error)) handler;
```

List timezones the QuickServer can be set to via change_timezone

Returns the system timezone catalog (parsed from `/usr/share/zoneinfo/zone.tab`) for use with `postQsChangeTimezone`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: array of timezone strings (e.g. `America/New_York`, `Europe/London`). Errors: 401, 404 if not owned by caller, 409 if status != `active` (handler labels these errors as `Invalid VPS Passed` / `VPS is not active` due to shared code). Siblings: `postQsChangeTimezone` (commit), `getVpsChangeTimezone`, `getQsChangeHostname` (also informational).

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// List timezones the QuickServer can be set to via change_timezone
[apiInstance getQsChangeTimezoneWithId:_id
          completionHandler: ^(NSArray<NSString*>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsChangeTimezone: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

**NSArray<NSString*>***

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsChangeWebuzoPassword**
```objc
-(NSURLSessionTask*) getQsChangeWebuzoPasswordWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Get metadata for changing the Webuzo control panel admin password

Read-only probe before `postQsChangeWebuzoPassword`. Path param: `id` (integer). Webuzo is a control panel optionally installed on QuickServers — its admin password is separate from the OS root password. Returns: object with change instructions. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `postQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root password), `postQsResetPassword`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get metadata for changing the Webuzo control panel admin password
[apiInstance getQsChangeWebuzoPasswordWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsChangeWebuzoPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsInfo**
```objc
-(NSURLSessionTask*) getQsInfoWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQuickserver* output, NSError* error)) handler;
```

Get full details for one QuickServer including credentials and links

Returns the QuickServer dashboard payload — service info, IPs, hostname, OS, status, billing, and the list of available `client_links` (action endpoints the caller is allowed to invoke). Path param: `id` (integer QuickServer ID). Returns: `Quickserver` schema. Use response links to drive `doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, `getQsReinstallOs`, `getQsReverseDns`, `getQsInvoices`. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller. Siblings: `updateQsInfo` (mutate), `quickserversCancel` (delete), `getVpsInfo` (VPS equivalent).

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


NSNumber* _id = @56; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get full details for one QuickServer including credentials and links
[apiInstance getQsInfoWithId:_id
          completionHandler: ^(ISAQuickserver* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number. | 

### Return type

[**ISAQuickserver***](ISAQuickserver.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsInsertCd**
```objc
-(NSURLSessionTask*) getQsInsertCdWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

List ISO images available to mount on a QuickServer's virtual CD

Returns the catalog of bootable ISOs the caller can mount via `postQsInsertCd`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: object with available ISO entries (URLs/labels) keyed for the QuickServer's hardware type. Errors: 401 if unauthenticated. Note: this handler does not validate ownership or active status — pair with `getQsInfo` first if you need those checks before presenting options to a user. Siblings: `postQsInsertCd` (mount the chosen URL), `doQsEjectCd`, `doQsDisableCd`, `getVpsInsertCd`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// List ISO images available to mount on a QuickServer's virtual CD
[apiInstance getQsInsertCdWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsInsertCd: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsInvoices**
```objc
-(NSURLSessionTask*) getQsInvoicesWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAChargeInvoiceRows* output, NSError* error)) handler;
```

List billing invoices charged for one QuickServer service

Returns invoices charged for this QuickServer (initial setup + recurring). Path param: `id` (integer). Returns: `ChargeInvoiceRows` — each row has invoice ID, amount, status (paid/unpaid), date. Use the invoice ID with `getBillingInvoice` for full detail or `initiatePayment` to settle. Errors: 401 if unauthenticated, 404 if not owned by caller. Siblings: `getQsInfo`, `getVpsInvoices`, `getBillingInvoice`, `quickserversCancel` (check next-invoice date before canceling).

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// List billing invoices charged for one QuickServer service
[apiInstance getQsInvoicesWithId:_id
          completionHandler: ^(ISAChargeInvoiceRows* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsInvoices: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAChargeInvoiceRows***](ISAChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsList**
```objc
-(NSURLSessionTask*) getQsListWithCompletionHandler: 
        (void (^)(NSArray<ISAQuickserverRow>* output, NSError* error)) handler;
```

List QuickServer rapid-deploy dedicated servers on the account

Use to enumerate the caller's QuickServers (quick-provision physical dedicated boxes that share the VPS billing model). No params, no body. Each row has `qs_id`, `qs_name`, `qs_hostname`, `qs_status`, `qs_comment`, and `cost`. Feed `qs_id` into `getQsInfo` for full details, or any per-server action (`doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, etc.). Returns: array of QuickServer rows. Errors: 401 if unauthenticated. Siblings: `getVpsList` (virtual VPS surface), `getQsInfo`, `getNewQs` for ordering metadata.

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



ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// List QuickServer rapid-deploy dedicated servers on the account
[apiInstance getQsListWithCompletionHandler: 
          ^(NSArray<ISAQuickserverRow>* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsList: %@", error);
                        }
                    }];
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**NSArray<ISAQuickserverRow>***](ISAQuickserverRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsReinstallOs**
```objc
-(NSURLSessionTask*) getQsReinstallOsWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAVpsTemplatesList* output, NSError* error)) handler;
```

List OS templates available for a QuickServer reinstall

Returns the OS template catalog filtered to the QuickServer's hardware/template type. Path param: `id` (integer). Read-only — no provisioning happens. Returns: `{ templates: [...] }` — each template has `template_file`, `template_name`, `template_version`. Use `template_file` with `postQsReinstallOs`. Non-admin callers only see templates with `template_available=1`. Errors: 401 if unauthenticated. Siblings: `postQsReinstallOs` (commit, destructive), `getVpsReinstallOs`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// List OS templates available for a QuickServer reinstall
[apiInstance getQsReinstallOsWithId:_id
          completionHandler: ^(ISAVpsTemplatesList* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsReinstallOs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAVpsTemplatesList***](ISAVpsTemplatesList.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsResetPassword**
```objc
-(NSURLSessionTask*) getQsResetPasswordWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Get options for QuickServer randomized root password reset

Read-only probe before `postQsResetPassword`. Path param: `id` (integer). Use to confirm the QuickServer is in a state that allows password resets. Returns: object with reset configuration. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: `postQsResetPassword` generates a random password — for a chosen value use `postQsChangeRootPassword`. Siblings: `postQsResetPassword`, `postQsChangeRootPassword`, `getVpsResetPassword`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get options for QuickServer randomized root password reset
[apiInstance getQsResetPasswordWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsResetPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsReverseDns**
```objc
-(NSURLSessionTask*) getQsReverseDnsWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAReverseDnsEntries* output, NSError* error)) handler;
```

Get reverse DNS (PTR) records for all of a QuickServer's IPs

Returns the current PTR record for the primary IP and any additional IPs assigned to the QuickServer. Path param: `id` (integer). Read-only — looks up live DNS, no queue. Returns: `{ ips: { \"<ip>\": \"<hostname>\", ... } }`. Use the keys with `postQsReverseDns` to update entries. Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `postQsReverseDns`, `getVpsReverseDns`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get reverse DNS (PTR) records for all of a QuickServer's IPs
[apiInstance getQsReverseDnsWithId:_id
          completionHandler: ^(ISAReverseDnsEntries* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsReverseDns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAReverseDnsEntries***](ISAReverseDnsEntries.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsSetupVnc**
```objc
-(NSURLSessionTask*) getQsSetupVncWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Get current VNC console connection details for a QuickServer

Read-only probe for the VNC tunnel that exposes the server's console (host, port, credentials). Path param: `id` (integer). Returns: object with VNC connection info. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller, 409 if service is not `active`. Note: this endpoint is currently a stub — the `// todo: return vnc info` line indicates the response body may be empty until completed. Siblings: `postQsSetupVnc` (configure access IP), `getVpsSetupVnc`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get current VNC console connection details for a QuickServer
[apiInstance getQsSetupVncWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsSetupVnc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsTrafficUsage**
```objc
-(NSURLSessionTask*) getQsTrafficUsageWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Get bandwidth usage for the QuickServer's current billing period

Returns the inbound/outbound bandwidth totals and time-series points for the QuickServer's current cycle. Path param: `id` (integer). Read-only. Returns: bandwidth-data object from `qs_bandwidth_data` (totals, daily/hourly points, overage flag). Errors: 401 if unauthenticated. Note: handler does not gate on ownership or active status. Siblings: `postQsTrafficUsage` (same data, accessible via POST for filtered queries), `getVpsTrafficUsage`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get bandwidth usage for the QuickServer's current billing period
[apiInstance getQsTrafficUsageWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsTrafficUsage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsViewDesktop**
```objc
-(NSURLSessionTask*) getQsViewDesktopWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Get the full QuickServer dashboard view payload (rich format)

Returns the same rich payload the AdminLTE UI uses — service info, billing, available client_links, resource graphs. Heavier than `getQsInfo` and intended for desktop dashboards. Path param: `id` (integer). Returns: object with `serviceInfo`, `client_links`, etc. (admin-only fields stripped). Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `getQsInfo` (lighter), `postQsViewDesktop` (mutate variant), `getVpsViewDesktop`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Get the full QuickServer dashboard view payload (rich format)
[apiInstance getQsViewDesktopWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsViewDesktop: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getQsWelcomeEmail**
```objc
-(NSURLSessionTask*) getQsWelcomeEmailWithId: (NSString*) _id
        completionHandler: (void (^)(ISATextResponse* output, NSError* error)) handler;
```

Resend the QuickServer welcome email with login credentials

Re-runs the `qs_welcome_email` function which composes and sends the welcome email containing connection details, root password, and management URLs to the account owner. Path param: `id` (integer). Returns: `{ text: \"Welcome Email has been resent.\" }`. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Use when the original welcome email was lost or the customer needs credentials again. Siblings: `getVpsWelcomeEmail`, `getQsInfo` (also exposes connection info).

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


NSString* _id = 133123; // Quickserver ID

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Resend the QuickServer welcome email with login credentials
[apiInstance getQsWelcomeEmailWithId:_id
          completionHandler: ^(ISATextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->getQsWelcomeEmail: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| Quickserver ID | 

### Return type

[**ISATextResponse***](ISATextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsChangeHostname**
```objc
-(NSURLSessionTask*) postQsChangeHostnameWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)

Updates the hostname and the matching reverse DNS entry. Path param: `id`. Body (JSON or form): `hostname` (must pass `valid_hostname`, must differ from current). Only supported on OpenVZ/Virtuozzo platforms — KVM/dedicated returns a 4xx with a contact-support message. Pending services update the DB row directly (`{ text }`); active services queue the change (`{ text, queueId }`, ~2 min). Errors: 401, 404 if not owned, 409 if status != `active`, validation error for bad hostname or no change. Siblings: `getQsChangeHostname`, `postVpsChangeHostname`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)
[apiInstance postQsChangeHostnameWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsChangeHostname: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsChangeRootPassword**
```objc
-(NSURLSessionTask*) postQsChangeRootPasswordWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Change QuickServer root/administrator password to a chosen value

Queues a root password change. Path param: `id`. Body (JSON or form): `password` (the new password — required, no server-side complexity validation here). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Both queue and history entries are written. Errors: 401, 404 if not owned, 409 if status != `active`, 400 if `password` is missing. For a randomly generated password use `postQsResetPassword` instead. For Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsChangeRootPassword`, `postVpsChangeRootPassword`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Change QuickServer root/administrator password to a chosen value
[apiInstance postQsChangeRootPasswordWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsChangeRootPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsChangeTimezone**
```objc
-(NSURLSessionTask*) postQsChangeTimezoneWithId: (NSNumber*) _id
    timezone: (NSString*) timezone
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Change the system timezone on a QuickServer to a catalog entry

Queues a timezone change. Path param: `id`. Body (JSON or form): `timezone` (must be one of the strings returned by `getQsChangeTimezone`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status != `active`, 422 if `timezone` is not in the catalog. Siblings: `getQsChangeTimezone` (call first to get valid options), `postVpsChangeTimezone`.

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


NSNumber* _id = @56; // QuickServer ID number
NSString* timezone = @"timezone_example"; // The time zone

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Change the system timezone on a QuickServer to a catalog entry
[apiInstance postQsChangeTimezoneWithId:_id
              timezone:timezone
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsChangeTimezone: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 
 **timezone** | **NSString***| The time zone | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsChangeWebuzoPassword**
```objc
-(NSURLSessionTask*) postQsChangeWebuzoPasswordWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Change Webuzo control panel admin password live (synchronous, not queued)

Calls the Webuzo SDK directly on the server to change the panel `admin` password, then emails the new credentials. Path param: `id`. Body: `password` (new Webuzo password, must pass `valid_password`), `login_password` (caller's account login password — verified via md5 hash). Synchronous — no queue ID. Requires a prior Webuzo-Details history entry. Returns: success message string. Errors: 401, 404 if not owned, 409 if status != `active`, validation errors for missing fields, wrong login password, weak new password, or SDK failure. Siblings: `getQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root).

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Change Webuzo control panel admin password live (synchronous, not queued)
[apiInstance postQsChangeWebuzoPasswordWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsChangeWebuzoPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsInsertCd**
```objc
-(NSURLSessionTask*) postQsInsertCdWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Mount an ISO image as the QuickServer's virtual CD via URL

Queues an `insert_cd` job that attaches the given ISO URL to the QuickServer's virtual CD drive (typically for OS reinstalls or rescue boots). Path param: `id`. Body (JSON or form): `url` (the ISO URL — pick one from `getQsInsertCd`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller. The action is idempotent in effect (latest mount wins). Siblings: `getQsInsertCd` (list options), `doQsEjectCd` (unmount), `doQsDisableCd`, `postQsReinstallOs` (template-based).

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Mount an ISO image as the QuickServer's virtual CD via URL
[apiInstance postQsInsertCdWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsInsertCd: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsReinstallOs**
```objc
-(NSURLSessionTask*) postQsReinstallOsWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)

Wipes the disk and reinstalls the chosen OS template. All data, configs, and snapshots are erased. Path param: `id`. Body: `template` (a `template_file` from `getQsReinstallOs`), `password` (new root password — required for non-Windows templates). For active services, queues `reinstall_os` (~2 min). For inactive services, just stores the OS preference for next activation. Updates `qs_status` to `Reinstalling` and clears screenshots. Returns flash messages — typical envelope. Errors: 401, invalid template name returns error flash. Siblings: `getQsReinstallOs` (list options), `postVpsReinstallOs`, `postQuickServerRestore` (recover from backup instead).

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
[apiInstance postQsReinstallOsWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsReinstallOs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsResetPassword**
```objc
-(NSURLSessionTask*) postQsResetPasswordWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Reset QuickServer root password to a server-generated random value

Queues a `reset_password` job that generates a new root password and emails it to the account owner. Path param: `id` (integer). No body — password is generated server-side. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller, 409 if status != `active`. For a chosen password use `postQsChangeRootPassword` instead; for the Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsResetPassword`, `postVpsResetPassword`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Reset QuickServer root password to a server-generated random value
[apiInstance postQsResetPasswordWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsResetPassword: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsReverseDns**
```objc
-(NSURLSessionTask*) postQsReverseDnsWithId: (NSNumber*) _id
    reverseDnsEntries: (ISAReverseDnsEntries*) reverseDnsEntries
        completionHandler: (void (^)(ISATextResponse* output, NSError* error)) handler;
```

Update reverse DNS (PTR) records for a QuickServer's IPs

Sets PTR records for one or more of the QuickServer's IPs. Path param: `id`. Body (form): `ips` — keyed by IP, value is the desired hostname (must be valid). Returns: `{ message: \"DNS Updated\", success: true }`. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with `getQsReverseDns` after calling, and use the support channel if changes don't propagate. Errors: 401 if unauthenticated. Siblings: `getQsReverseDns`, `postVpsReverseDns`.

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


NSNumber* _id = @56; // QuickServer ID number
ISAReverseDnsEntries* reverseDnsEntries = [[ISAReverseDnsEntries alloc] init]; // 

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Update reverse DNS (PTR) records for a QuickServer's IPs
[apiInstance postQsReverseDnsWithId:_id
              reverseDnsEntries:reverseDnsEntries
          completionHandler: ^(ISATextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsReverseDns: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 
 **reverseDnsEntries** | [**ISAReverseDnsEntries***](ISAReverseDnsEntries.md)|  | 

### Return type

[**ISATextResponse***](ISATextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsSetupVnc**
```objc
-(NSURLSessionTask*) postQsSetupVncWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Configure the source IP allowed to reach a QuickServer's VNC console

Sets the IP allowed to reach the VNC tunnel and queues a `setup_vnc` to apply it. Path param: `id`. Body (JSON or form): `vnc` (a valid IPv4 address — only this address can reach the console). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned, 409 if status != `active`. Returns an inline `Invalid IP` message when `vnc` fails `validIp`. The VPS-style helper also runs after the DB update. Siblings: `getQsSetupVnc` (read), `postVpsSetupVnc`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Configure the source IP allowed to reach a QuickServer's VNC console
[apiInstance postQsSetupVncWithId:_id
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsSetupVnc: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsTrafficUsage**
```objc
-(NSURLSessionTask*) postQsTrafficUsageWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Query QuickServer bandwidth usage via POST (filtered variant)

Functional duplicate of `getQsTrafficUsage` exposed under POST so clients can pass a filter body. Path param: `id` (integer). Body fields are accepted but the current handler ignores them and returns the full current-cycle dataset. Returns: same bandwidth-data object as `getQsTrafficUsage`. Errors: 401 if unauthenticated. No active-status or ownership gate. Siblings: `getQsTrafficUsage`, `postVpsTrafficUsage`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Query QuickServer bandwidth usage via POST (filtered variant)
[apiInstance postQsTrafficUsageWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsTrafficUsage: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQsViewDesktop**
```objc
-(NSURLSessionTask*) postQsViewDesktopWithId: (NSNumber*) _id
        completionHandler: (void (^)(NSError* error)) handler;
```

Submit changes and re-fetch the QuickServer dashboard view payload

Same handler as `getQsViewDesktop` but accessible via POST so callers can pass body fields alongside re-fetching the view. Path param: `id`. Body fields are accepted by the underlying View handler. Returns: refreshed dashboard object — `serviceInfo`, `client_links`, etc. Errors: 401 if unauthenticated. For structured updates prefer the dedicated endpoints (`postQsChangeHostname`, `postQsReverseDns`, `postQsSetupVnc`, etc.) which return queue IDs. Siblings: `getQsViewDesktop`, `postVpsViewDesktop`.

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Submit changes and re-fetch the QuickServer dashboard view payload
[apiInstance postQsViewDesktopWithId:_id
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQsViewDesktop: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postQuickServerRestore**
```objc
-(NSURLSessionTask*) postQuickServerRestoreWithId: (NSNumber*) _id
    restoreRequest: (ISARestoreRequest*) restoreRequest
        completionHandler: (void (^)(ISAQueueResponse* output, NSError* error)) handler;
```

Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)

Overwrites the live disk with a backup. Path param: `id`. Body (form): `backup` (composite key `<type>:<service>:<name>` from `getQsBackups`), `password` (caller's account login password — required for non-admin to confirm). Validates backup exists, caller's password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues `snapshot_restore` for ZFS or `restore` for swift/minio; allow up to 10 minutes. Returns: `{ text, queueId }`. Errors: 401, 404 if not owned, 409 if status != `active`, errors for invalid password, missing backup, or insufficient disk space. Siblings: `getQsBackups`, `getQsBackup` (create), `postVpsRestore`.

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


NSNumber* _id = @56; // QuickServer ID number
ISARestoreRequest* restoreRequest = [[ISARestoreRequest alloc] init]; // QuickServer Restore request

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
[apiInstance postQuickServerRestoreWithId:_id
              restoreRequest:restoreRequest
          completionHandler: ^(ISAQueueResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->postQuickServerRestore: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 
 **restoreRequest** | [**ISARestoreRequest***](ISARestoreRequest.md)| QuickServer Restore request | 

### Return type

[**ISAQueueResponse***](ISAQueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putQs**
```objc
-(NSURLSessionTask*) putQsWithQsOrderRequest: (ISAQsOrderRequest*) qsOrderRequest
        completionHandler: (void (^)(NSError* error)) handler;
```

Validate a QuickServer order without charging or provisioning

Dry-run the order payload before calling `addQs`. No invoice is created and no service is provisioned. Use to surface form errors, compute the price, and resolve the chosen `server`/`os`/`distro` against the master pool. Body (form): `server` (master ID), `password`, `os` (template), `comment`, `tos`. Returns the `validate_buy_qs` result with `continue` flag, normalized fields, `service_cost`, and `errors` array. Errors: 401 if unauthenticated; validation errors are returned in the body, not as 4xx. Siblings: `addQs` (commits the order), `getNewQs` (form metadata), `putVps` (VPS equivalent).

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


ISAQsOrderRequest* qsOrderRequest = [[ISAQsOrderRequest alloc] init]; // 

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Validate a QuickServer order without charging or provisioning
[apiInstance putQsWithQsOrderRequest:qsOrderRequest
          completionHandler: ^(NSError* error) {
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->putQs: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **qsOrderRequest** | [**ISAQsOrderRequest***](ISAQsOrderRequest.md)|  | 

### Return type

void (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **quickserversCancel**
```objc
-(NSURLSessionTask*) quickserversCancelWithId: (NSNumber*) _id
        completionHandler: (void (^)(ISAQuickserversCancel200Response* output, NSError* error)) handler;
```

Cancel a QuickServer service at the end of the current billing cycle

Schedules deprovisioning. The server keeps running until the current billing period ends, then is canceled and the recurring invoice stops. Path param: `id` (integer). Returns: `{ success: bool, text: string }`. Errors: 401 if unauthenticated, 404 if not owned by caller. Reversible only by support before the cycle closes — use `getQsInvoices` to check the next invoice date first. Siblings: `getQsInfo`, `VPSCancel` (VPS equivalent), `serversCancel` (dedicated equivalent).

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


NSNumber* _id = @56; // QuickServer ID number

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Cancel a QuickServer service at the end of the current billing cycle
[apiInstance quickserversCancelWithId:_id
          completionHandler: ^(ISAQuickserversCancel200Response* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->quickserversCancel: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSNumber***| QuickServer ID number | 

### Return type

[**ISAQuickserversCancel200Response***](ISAQuickserversCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateQsInfo**
```objc
-(NSURLSessionTask*) updateQsInfoWithId: (NSString*) _id
        completionHandler: (void (^)(ISASuccessTextResponse* output, NSError* error)) handler;
```

Update QuickServer order metadata or stored settings without OS impact

Mutates QuickServer-level settings (comment, stored notes) without affecting the running OS. Path param: `id`. Body fields are module-specific and processed by the shared `View::go` handler. Returns: `SuccessTextResponse`. Errors: 401 if unauthenticated, 404 if not owned by caller. For server-side actions use the dedicated endpoints — hostname via `postQsChangeHostname`, password via `postQsChangeRootPassword`, OS via `postQsReinstallOs`. Siblings: `getQsInfo` (read), `quickserversCancel` (delete).

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


NSString* _id = @"_id_example"; // QuickServer ID number.

ISAQuickServersApi*apiInstance = [[ISAQuickServersApi alloc] init];

// Update QuickServer order metadata or stored settings without OS impact
[apiInstance updateQsInfoWithId:_id
          completionHandler: ^(ISASuccessTextResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling ISAQuickServersApi->updateQsInfo: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| QuickServer ID number. | 

### Return type

[**ISASuccessTextResponse***](ISASuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

