# InterserverApiClient\QuickServersApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addQs**](QuickServersApi.md#addqs) | **POST** /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning
[**deleteQsBackup**](QuickServersApi.md#deleteqsbackup) | **DELETE** /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage
[**doQsBlockSmtp**](QuickServersApi.md#doqsblocksmtp) | **GET** /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse
[**doQsDisableCd**](QuickServersApi.md#doqsdisablecd) | **GET** /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer
[**doQsDisableQuota**](QuickServersApi.md#doqsdisablequota) | **GET** /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer
[**doQsEjectCd**](QuickServersApi.md#doqsejectcd) | **GET** /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer&#x27;s virtual CD drive
[**doQsEnableQuota**](QuickServersApi.md#doqsenablequota) | **GET** /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer
[**doQsRestart**](QuickServersApi.md#doqsrestart) | **GET** /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart
[**doQsStart**](QuickServersApi.md#doqsstart) | **GET** /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot
[**doQsStop**](QuickServersApi.md#doqsstop) | **GET** /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command
[**downloadQsBackup**](QuickServersApi.md#downloadqsbackup) | **PATCH** /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup
[**getNewQs**](QuickServersApi.md#getnewqs) | **GET** /qs/order | Get QuickServer order form metadata and available plans/templates
[**getQsBackup**](QuickServersApi.md#getqsbackup) | **GET** /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
[**getQsBackups**](QuickServersApi.md#getqsbackups) | **GET** /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage
[**getQsChangeHostname**](QuickServersApi.md#getqschangehostname) | **GET** /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support
[**getQsChangeRootPassword**](QuickServersApi.md#getqschangerootpassword) | **GET** /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements
[**getQsChangeTimezone**](QuickServersApi.md#getqschangetimezone) | **GET** /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone
[**getQsChangeWebuzoPassword**](QuickServersApi.md#getqschangewebuzopassword) | **GET** /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password
[**getQsInfo**](QuickServersApi.md#getqsinfo) | **GET** /qs/{id} | Get full details for one QuickServer including credentials and links
[**getQsInsertCd**](QuickServersApi.md#getqsinsertcd) | **GET** /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer&#x27;s virtual CD
[**getQsInvoices**](QuickServersApi.md#getqsinvoices) | **GET** /qs/{id}/invoices | List billing invoices charged for one QuickServer service
[**getQsList**](QuickServersApi.md#getqslist) | **GET** /qs | List QuickServer rapid-deploy dedicated servers on the account
[**getQsReinstallOs**](QuickServersApi.md#getqsreinstallos) | **GET** /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall
[**getQsResetPassword**](QuickServersApi.md#getqsresetpassword) | **GET** /qs/{id}/reset_password | Get options for QuickServer randomized root password reset
[**getQsReverseDns**](QuickServersApi.md#getqsreversedns) | **GET** /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer&#x27;s IPs
[**getQsSetupVnc**](QuickServersApi.md#getqssetupvnc) | **GET** /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer
[**getQsTrafficUsage**](QuickServersApi.md#getqstrafficusage) | **GET** /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer&#x27;s current billing period
[**getQsViewDesktop**](QuickServersApi.md#getqsviewdesktop) | **GET** /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format)
[**getQsWelcomeEmail**](QuickServersApi.md#getqswelcomeemail) | **GET** /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials
[**postQsChangeHostname**](QuickServersApi.md#postqschangehostname) | **POST** /qs/{id}/change_hostname | Change a QuickServer&#x27;s system hostname (OpenVZ/Virtuozzo only)
[**postQsChangeRootPassword**](QuickServersApi.md#postqschangerootpassword) | **POST** /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value
[**postQsChangeTimezone**](QuickServersApi.md#postqschangetimezone) | **POST** /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry
[**postQsChangeWebuzoPassword**](QuickServersApi.md#postqschangewebuzopassword) | **POST** /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued)
[**postQsInsertCd**](QuickServersApi.md#postqsinsertcd) | **POST** /qs/{id}/insert_cd | Mount an ISO image as the QuickServer&#x27;s virtual CD via URL
[**postQsReinstallOs**](QuickServersApi.md#postqsreinstallos) | **POST** /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
[**postQsResetPassword**](QuickServersApi.md#postqsresetpassword) | **POST** /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value
[**postQsReverseDns**](QuickServersApi.md#postqsreversedns) | **POST** /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer&#x27;s IPs
[**postQsSetupVnc**](QuickServersApi.md#postqssetupvnc) | **POST** /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer&#x27;s VNC console
[**postQsTrafficUsage**](QuickServersApi.md#postqstrafficusage) | **POST** /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant)
[**postQsViewDesktop**](QuickServersApi.md#postqsviewdesktop) | **POST** /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload
[**postQuickServerRestore**](QuickServersApi.md#postquickserverrestore) | **POST** /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
[**putQs**](QuickServersApi.md#putqs) | **PUT** /qs/order | Validate a QuickServer order without charging or provisioning
[**quickserversCancel**](QuickServersApi.md#quickserverscancel) | **DELETE** /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle
[**updateQsInfo**](QuickServersApi.md#updateqsinfo) | **POST** /qs/{id} | Update QuickServer order metadata or stored settings without OS impact

# **addQs**
> \InterserverApiClient\Model\ServiceOrderPostResponse addQs($body)

Place a QuickServer order, generating a real invoice and queuing provisioning

Commits the validated order: creates the service row, generates a real invoice, and queues provisioning. Body fields match `putQs` (`server`, `password`, `os`, `comment`, `tos`) — call `putQs` first to catch errors. On `validation.continue=false`, returns the joined error string with no charge. Returns: `ServiceOrderPostResponse` with the new service ID and invoice info. Pay via `getBillingInvoice`/`initiatePayment`. Errors: 401 if unauthenticated, 4xx with message on validation failure. Siblings: `putQs` (validate first), `getNewQs`, `addVps` (VPS equivalent).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\QsOrderRequest(); // \InterserverApiClient\Model\QsOrderRequest | 

try {
    $result = $apiInstance->addQs($body);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->addQs: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\QsOrderRequest**](../Model/QsOrderRequest.md)|  |

### Return type

[**\InterserverApiClient\Model\ServiceOrderPostResponse**](../Model/ServiceOrderPostResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **deleteQsBackup**
> \InterserverApiClient\Model\SuccessTextResponse deleteQsBackup($id, $file, $all)

Permanently delete a QuickServer backup file from object storage

Removes the backup from its storage backend. Irreversible — the backup cannot be recovered. Path param: `id`. Required: `file` (the backup `name` from `getQsBackups`, in query or form body). Works for `swift` and `minio` backups; `zfs` snapshots cannot be deleted via this endpoint (returns an error pointing to support). Returns: `SuccessTextResponse` with the removed name. Errors: 401, 404 if not owned, error message if backup type is unsupported or the storage operation fails. Siblings: `getQsBackups` (list), `downloadQsBackup` (PATCH), `postQuickServerRestore`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number
$file = "file_example"; // string | The backup filename to delete.
$all = "all_example"; // string | Set to `1` to list all backups across all services, not just the ones for the given QuickServer.

try {
    $result = $apiInstance->deleteQsBackup($id, $file, $all);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->deleteQsBackup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |
 **file** | **string**| The backup filename to delete. |
 **all** | **string**| Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given QuickServer. | [optional]

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **doQsBlockSmtp**
> \InterserverApiClient\Model\QueueResponse doQsBlockSmtp($id)

Block outbound SMTP traffic on a QuickServer to halt mail abuse

Queues a firewall rule that drops outbound port 25 traffic, used to halt spam/abuse without taking the server offline. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes via the queue worker, which also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Reversible only by support — there is no `unblock_smtp` endpoint. Siblings: `doVpsBlockSmtp`, `getQsInfo`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number.

try {
    $result = $apiInstance->doQsBlockSmtp($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->doQsBlockSmtp: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **doQsDisableCd**
> \InterserverApiClient\Model\QueueResponse doQsDisableCd($id)

Disable the virtual CD/DVD drive device on a QuickServer

Queues removal of the virtual CD/DVD device from the QuickServer (full disable, not just eject). Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsEjectCd` (eject the ISO but keep drive), `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list available ISOs).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number.

try {
    $result = $apiInstance->doQsDisableCd($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->doQsDisableCd: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **doQsDisableQuota**
> \InterserverApiClient\Model\QueueResponse doQsDisableQuota($id)

Disable disk-quota enforcement at OS level on a QuickServer

Queues a job to turn off disk-quota enforcement at the OS level. Use when quota errors block legitimate writes or before resizing disk space. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Re-enable later with `doQsEnableQuota`. Siblings: `doQsEnableQuota` (re-enable), `doVpsDisableQuota` (VPS equivalent).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number.

try {
    $result = $apiInstance->doQsDisableQuota($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->doQsDisableQuota: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **doQsEjectCd**
> \InterserverApiClient\Model\QueueResponse doQsEjectCd($id)

Eject the currently mounted ISO from a QuickServer's virtual CD drive

Queues an eject — drive remains attached but no media. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. The queue worker also re-runs VNC setup so the console reflects the change. Errors: 401, 404 if `id` is not owned by caller. Note: this handler does not validate `active` status. Siblings: `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list ISOs), `doQsDisableCd` (remove the drive itself).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number.

try {
    $result = $apiInstance->doQsEjectCd($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->doQsEjectCd: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **doQsEnableQuota**
> \InterserverApiClient\Model\QueueResponse doQsEnableQuota($id)

Enable disk-quota enforcement at OS level on a QuickServer

Queues a job to turn on disk-quota enforcement at the OS level. Pair with `doQsDisableQuota` when re-enabling after maintenance, disk resizing, or restoring a backup. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsDisableQuota` (turn off), `doVpsEnableQuota` (VPS equivalent).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number.

try {
    $result = $apiInstance->doQsEnableQuota($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->doQsEnableQuota: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **doQsRestart**
> \InterserverApiClient\Model\QueueResponse doQsRestart($id)

Reboot a QuickServer with a graceful OS-level restart

Queues a graceful restart — equivalent to `reboot` inside the OS. Path param: `id` (integer). No body. Use to recover from a hung service or apply pending kernel/config changes. Returns: `{ text, queueId }`. Async — server is back online within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on `active` status — restarts work even on suspended services. Siblings: `doQsStart`, `doQsStop`, `doVpsRestart`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number.

try {
    $result = $apiInstance->doQsRestart($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->doQsRestart: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **doQsStart**
> \InterserverApiClient\Model\QueueResponse doQsStart($id)

Power on a QuickServer that is currently stopped or pending boot

Queues a `start` command to bring the QuickServer online. Path param: `id` (integer). No body. Idempotent in practice — re-running on an already-on server is a no-op at the worker. Returns: `{ text, queueId }`. Async — typically online within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status, so it can be issued even for non-active services. Siblings: `doQsStop`, `doQsRestart`, `getQsInfo`, `doVpsStart`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number.

try {
    $result = $apiInstance->doQsStart($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->doQsStart: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **doQsStop**
> \InterserverApiClient\Model\QueueResponse doQsStop($id)

Power off a QuickServer with a graceful shutdown command

Queues a `stop` command. Path param: `id` (integer). No body. Use before maintenance, snapshot, or to halt traffic — billing continues regardless of power state, so use `quickserversCancel` to also stop charges. Returns: `{ text, queueId }`. Async — typically off within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status. Siblings: `doQsStart`, `doQsRestart`, `doVpsStop`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number.

try {
    $result = $apiInstance->doQsStop($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->doQsStop: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **downloadQsBackup**
> \InterserverApiClient\Model\InlineResponse20012 downloadQsBackup($body, $id, $all)

Generate a 24-hour pre-signed download URL for a QuickServer backup

Returns a temporary signed URL to fetch the backup directly from object storage. Path param: `id`. Body (JSON or form): `file` (the backup `name` from `getQsBackups`). Only available for `minio`-type backups; `swift` and `zfs` backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: `{ text, url }`. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: `getQsBackups` (list, get `name`), `deleteQsBackup`, `postQuickServerRestore`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\IdBackupsBody(); // \InterserverApiClient\Model\IdBackupsBody | 
$id = 56; // int | QuickServer ID number
$all = "all_example"; // string | Set to `1` to list all backups across all services, not just the ones for the given QuickServer.

try {
    $result = $apiInstance->downloadQsBackup($body, $id, $all);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->downloadQsBackup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\IdBackupsBody**](../Model/IdBackupsBody.md)|  |
 **id** | **int**| QuickServer ID number |
 **all** | **string**| Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given QuickServer. | [optional]

### Return type

[**\InterserverApiClient\Model\InlineResponse20012**](../Model/InlineResponse20012.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **downloadQsBackup**
> \InterserverApiClient\Model\InlineResponse20012 downloadQsBackup($file, $id, $all)

Generate a 24-hour pre-signed download URL for a QuickServer backup

Returns a temporary signed URL to fetch the backup directly from object storage. Path param: `id`. Body (JSON or form): `file` (the backup `name` from `getQsBackups`). Only available for `minio`-type backups; `swift` and `zfs` backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: `{ text, url }`. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: `getQsBackups` (list, get `name`), `deleteQsBackup`, `postQuickServerRestore`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$file = "file_example"; // string | 
$id = 56; // int | QuickServer ID number
$all = "all_example"; // string | Set to `1` to list all backups across all services, not just the ones for the given QuickServer.

try {
    $result = $apiInstance->downloadQsBackup($file, $id, $all);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->downloadQsBackup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **file** | **string**|  |
 **id** | **int**| QuickServer ID number |
 **all** | **string**| Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given QuickServer. | [optional]

### Return type

[**\InterserverApiClient\Model\InlineResponse20012**](../Model/InlineResponse20012.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getNewQs**
> \InterserverApiClient\Model\QuickserverOrder getNewQs()

Get QuickServer order form metadata and available plans/templates

Use before placing or validating a QuickServer order to retrieve pricing, available servers, OS templates, and form fields. Read-only — no params, no body, no charge. Returns: `QuickserverOrder` schema with plan/template/server options used to build the order payload for `putQs` (validate) or `addQs` (place). Errors: 401 if unauthenticated. Siblings: `putQs` (dry-run validation), `addQs` (commits and invoices), `getNewVps` (virtual VPS ordering surface).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getNewQs();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getNewQs: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\QuickserverOrder**](../Model/QuickserverOrder.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsBackup**
> \InterserverApiClient\Model\QueueResponse getQsBackup($id)

Queue creation of a new QuickServer backup snapshot (note: GET triggers job)

Note: GET on `/qs/{id}/backup` triggers a backup job — despite the verb, this is a state-changing action. Queues a `backup` operation; backup name is auto-generated. Path param: `id` (integer). Returns: `{ text, queueId }`. Async — backup completes in minutes to hours depending on disk size. Poll `getQsBackups` to see when it appears. Errors: 401 if unauthenticated, 404 if not owned by caller, 409 if status != `active`. Siblings: `getQsBackups` (list), `postQuickServerRestore`, `downloadQsBackup`, `deleteQsBackup`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->getQsBackup($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsBackup: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsBackups**
> \InterserverApiClient\Model\VpsBackupRows getQsBackups($id, $all)

List available QuickServer backups across Swift, MinIO, and ZFS storage

Returns all backups visible to the caller for this QuickServer across the three backup backends. Path param: `id` (integer). Optional query `all=1` lists every backup the customer owns, not just this server's. Returns: `VpsBackupRows` array — each row has `name`, `type` (swift/minio/zfs), `size`, `service`, `path`. Use `name` (not a numeric ID) with `downloadQsBackup` (PATCH), `deleteQsBackup` (DELETE), or `postQuickServerRestore`. Errors: 401, 404 if not owned by caller. Siblings: `getQsBackup` (create), `postQuickServerRestore`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number
$all = "all_example"; // string | Set to `1` to list all backups across all services, not just the ones for the given QuickServer.

try {
    $result = $apiInstance->getQsBackups($id, $all);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsBackups: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |
 **all** | **string**| Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given QuickServer. | [optional]

### Return type

[**\InterserverApiClient\Model\VpsBackupRows**](../Model/VpsBackupRows.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsChangeHostname**
> getQsChangeHostname($id)

Get current QuickServer hostname plus change rules and platform support

Read-only probe before calling `postQsChangeHostname`. Path param: `id` (integer). Returns the current hostname and the validation rules the new hostname must satisfy. Returns: object with hostname metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: hostname changes are only supported on OpenVZ/Virtuozzo platforms — `postQsChangeHostname` rejects KVM/dedicated types with an explanatory error. Siblings: `postQsChangeHostname`, `getVpsChangeHostname`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->getQsChangeHostname($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsChangeHostname: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsChangeRootPassword**
> getQsChangeRootPassword($id)

Get metadata for QuickServer root/OS password change requirements

Read-only probe before calling `postQsChangeRootPassword`. Path param: `id` (integer). Use to surface password complexity rules and confirm the QuickServer accepts root password changes. Returns: object with reset metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: this changes the OS root password (Linux) — for the Webuzo control panel password use `postQsChangeWebuzoPassword`. Siblings: `postQsChangeRootPassword`, `postQsResetPassword` (random password), `getVpsChangeRootPassword`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->getQsChangeRootPassword($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsChangeRootPassword: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsChangeTimezone**
> string[] getQsChangeTimezone($id)

List timezones the QuickServer can be set to via change_timezone

Returns the system timezone catalog (parsed from `/usr/share/zoneinfo/zone.tab`) for use with `postQsChangeTimezone`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: array of timezone strings (e.g. `America/New_York`, `Europe/London`). Errors: 401, 404 if not owned by caller, 409 if status != `active` (handler labels these errors as `Invalid VPS Passed` / `VPS is not active` due to shared code). Siblings: `postQsChangeTimezone` (commit), `getVpsChangeTimezone`, `getQsChangeHostname` (also informational).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->getQsChangeTimezone($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsChangeTimezone: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

**string[]**

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsChangeWebuzoPassword**
> getQsChangeWebuzoPassword($id)

Get metadata for changing the Webuzo control panel admin password

Read-only probe before `postQsChangeWebuzoPassword`. Path param: `id` (integer). Webuzo is a control panel optionally installed on QuickServers — its admin password is separate from the OS root password. Returns: object with change instructions. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `postQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root password), `postQsResetPassword`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->getQsChangeWebuzoPassword($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsChangeWebuzoPassword: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsInfo**
> \InterserverApiClient\Model\Quickserver getQsInfo($id)

Get full details for one QuickServer including credentials and links

Returns the QuickServer dashboard payload — service info, IPs, hostname, OS, status, billing, and the list of available `client_links` (action endpoints the caller is allowed to invoke). Path param: `id` (integer QuickServer ID). Returns: `Quickserver` schema. Use response links to drive `doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, `getQsReinstallOs`, `getQsReverseDns`, `getQsInvoices`. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller. Siblings: `updateQsInfo` (mutate), `quickserversCancel` (delete), `getVpsInfo` (VPS equivalent).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number.

try {
    $result = $apiInstance->getQsInfo($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsInfo: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\Quickserver**](../Model/Quickserver.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsInsertCd**
> getQsInsertCd($id)

List ISO images available to mount on a QuickServer's virtual CD

Returns the catalog of bootable ISOs the caller can mount via `postQsInsertCd`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: object with available ISO entries (URLs/labels) keyed for the QuickServer's hardware type. Errors: 401 if unauthenticated. Note: this handler does not validate ownership or active status — pair with `getQsInfo` first if you need those checks before presenting options to a user. Siblings: `postQsInsertCd` (mount the chosen URL), `doQsEjectCd`, `doQsDisableCd`, `getVpsInsertCd`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->getQsInsertCd($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsInsertCd: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsInvoices**
> \InterserverApiClient\Model\ChargeInvoiceRows getQsInvoices($id)

List billing invoices charged for one QuickServer service

Returns invoices charged for this QuickServer (initial setup + recurring). Path param: `id` (integer). Returns: `ChargeInvoiceRows` — each row has invoice ID, amount, status (paid/unpaid), date. Use the invoice ID with `getBillingInvoice` for full detail or `initiatePayment` to settle. Errors: 401 if unauthenticated, 404 if not owned by caller. Siblings: `getQsInfo`, `getVpsInvoices`, `getBillingInvoice`, `quickserversCancel` (check next-invoice date before canceling).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->getQsInvoices($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsInvoices: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\ChargeInvoiceRows**](../Model/ChargeInvoiceRows.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsList**
> \InterserverApiClient\Model\QuickserverRow[] getQsList()

List QuickServer rapid-deploy dedicated servers on the account

Use to enumerate the caller's QuickServers (quick-provision physical dedicated boxes that share the VPS billing model). No params, no body. Each row has `qs_id`, `qs_name`, `qs_hostname`, `qs_status`, `qs_comment`, and `cost`. Feed `qs_id` into `getQsInfo` for full details, or any per-server action (`doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, etc.). Returns: array of QuickServer rows. Errors: 401 if unauthenticated. Siblings: `getVpsList` (virtual VPS surface), `getQsInfo`, `getNewQs` for ordering metadata.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);

try {
    $result = $apiInstance->getQsList();
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsList: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**\InterserverApiClient\Model\QuickserverRow[]**](../Model/QuickserverRow.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsReinstallOs**
> \InterserverApiClient\Model\VpsTemplatesList getQsReinstallOs($id)

List OS templates available for a QuickServer reinstall

Returns the OS template catalog filtered to the QuickServer's hardware/template type. Path param: `id` (integer). Read-only — no provisioning happens. Returns: `{ templates: [...] }` — each template has `template_file`, `template_name`, `template_version`. Use `template_file` with `postQsReinstallOs`. Non-admin callers only see templates with `template_available=1`. Errors: 401 if unauthenticated. Siblings: `postQsReinstallOs` (commit, destructive), `getVpsReinstallOs`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->getQsReinstallOs($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsReinstallOs: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\VpsTemplatesList**](../Model/VpsTemplatesList.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsResetPassword**
> getQsResetPassword($id)

Get options for QuickServer randomized root password reset

Read-only probe before `postQsResetPassword`. Path param: `id` (integer). Use to confirm the QuickServer is in a state that allows password resets. Returns: object with reset configuration. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: `postQsResetPassword` generates a random password — for a chosen value use `postQsChangeRootPassword`. Siblings: `postQsResetPassword`, `postQsChangeRootPassword`, `getVpsResetPassword`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->getQsResetPassword($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsResetPassword: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsReverseDns**
> \InterserverApiClient\Model\ReverseDnsEntries getQsReverseDns($id)

Get reverse DNS (PTR) records for all of a QuickServer's IPs

Returns the current PTR record for the primary IP and any additional IPs assigned to the QuickServer. Path param: `id` (integer). Read-only — looks up live DNS, no queue. Returns: `{ ips: { \"<ip>\": \"<hostname>\", ... } }`. Use the keys with `postQsReverseDns` to update entries. Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `postQsReverseDns`, `getVpsReverseDns`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->getQsReverseDns($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsReverseDns: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\ReverseDnsEntries**](../Model/ReverseDnsEntries.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsSetupVnc**
> getQsSetupVnc($id)

Get current VNC console connection details for a QuickServer

Read-only probe for the VNC tunnel that exposes the server's console (host, port, credentials). Path param: `id` (integer). Returns: object with VNC connection info. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller, 409 if service is not `active`. Note: this endpoint is currently a stub — the `// todo: return vnc info` line indicates the response body may be empty until completed. Siblings: `postQsSetupVnc` (configure access IP), `getVpsSetupVnc`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->getQsSetupVnc($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsSetupVnc: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsTrafficUsage**
> getQsTrafficUsage($id)

Get bandwidth usage for the QuickServer's current billing period

Returns the inbound/outbound bandwidth totals and time-series points for the QuickServer's current cycle. Path param: `id` (integer). Read-only. Returns: bandwidth-data object from `qs_bandwidth_data` (totals, daily/hourly points, overage flag). Errors: 401 if unauthenticated. Note: handler does not gate on ownership or active status. Siblings: `postQsTrafficUsage` (same data, accessible via POST for filtered queries), `getVpsTrafficUsage`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->getQsTrafficUsage($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsTrafficUsage: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsViewDesktop**
> getQsViewDesktop($id)

Get the full QuickServer dashboard view payload (rich format)

Returns the same rich payload the AdminLTE UI uses — service info, billing, available client_links, resource graphs. Heavier than `getQsInfo` and intended for desktop dashboards. Path param: `id` (integer). Returns: object with `serviceInfo`, `client_links`, etc. (admin-only fields stripped). Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `getQsInfo` (lighter), `postQsViewDesktop` (mutate variant), `getVpsViewDesktop`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->getQsViewDesktop($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsViewDesktop: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **getQsWelcomeEmail**
> \InterserverApiClient\Model\TextResponse getQsWelcomeEmail($id)

Resend the QuickServer welcome email with login credentials

Re-runs the `qs_welcome_email` function which composes and sends the welcome email containing connection details, root password, and management URLs to the account owner. Path param: `id` (integer). Returns: `{ text: \"Welcome Email has been resent.\" }`. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Use when the original welcome email was lost or the customer needs credentials again. Siblings: `getVpsWelcomeEmail`, `getQsInfo` (also exposes connection info).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = "id_example"; // string | Quickserver ID

try {
    $result = $apiInstance->getQsWelcomeEmail($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->getQsWelcomeEmail: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| Quickserver ID |

### Return type

[**\InterserverApiClient\Model\TextResponse**](../Model/TextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsChangeHostname**
> \InterserverApiClient\Model\QueueResponse postQsChangeHostname($id)

Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)

Updates the hostname and the matching reverse DNS entry. Path param: `id`. Body (JSON or form): `hostname` (must pass `valid_hostname`, must differ from current). Only supported on OpenVZ/Virtuozzo platforms — KVM/dedicated returns a 4xx with a contact-support message. Pending services update the DB row directly (`{ text }`); active services queue the change (`{ text, queueId }`, ~2 min). Errors: 401, 404 if not owned, 409 if status != `active`, validation error for bad hostname or no change. Siblings: `getQsChangeHostname`, `postVpsChangeHostname`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsChangeHostname($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsChangeHostname: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsChangeRootPassword**
> \InterserverApiClient\Model\QueueResponse postQsChangeRootPassword($id)

Change QuickServer root/administrator password to a chosen value

Queues a root password change. Path param: `id`. Body (JSON or form): `password` (the new password — required, no server-side complexity validation here). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Both queue and history entries are written. Errors: 401, 404 if not owned, 409 if status != `active`, 400 if `password` is missing. For a randomly generated password use `postQsResetPassword` instead. For Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsChangeRootPassword`, `postVpsChangeRootPassword`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsChangeRootPassword($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsChangeRootPassword: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsChangeTimezone**
> \InterserverApiClient\Model\QueueResponse postQsChangeTimezone($timezone, $id)

Change the system timezone on a QuickServer to a catalog entry

Queues a timezone change. Path param: `id`. Body (JSON or form): `timezone` (must be one of the strings returned by `getQsChangeTimezone`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status != `active`, 422 if `timezone` is not in the catalog. Siblings: `getQsChangeTimezone` (call first to get valid options), `postVpsChangeTimezone`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$timezone = "timezone_example"; // string | 
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsChangeTimezone($timezone, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsChangeTimezone: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **timezone** | **string**|  |
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsChangeTimezone**
> \InterserverApiClient\Model\QueueResponse postQsChangeTimezone($body, $id)

Change the system timezone on a QuickServer to a catalog entry

Queues a timezone change. Path param: `id`. Body (JSON or form): `timezone` (must be one of the strings returned by `getQsChangeTimezone`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status != `active`, 422 if `timezone` is not in the catalog. Siblings: `getQsChangeTimezone` (call first to get valid options), `postVpsChangeTimezone`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\TimezoneUpdate(); // \InterserverApiClient\Model\TimezoneUpdate | 
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsChangeTimezone($body, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsChangeTimezone: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\TimezoneUpdate**](../Model/TimezoneUpdate.md)|  |
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: multipart/form-data, application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsChangeWebuzoPassword**
> \InterserverApiClient\Model\QueueResponse postQsChangeWebuzoPassword($id)

Change Webuzo control panel admin password live (synchronous, not queued)

Calls the Webuzo SDK directly on the server to change the panel `admin` password, then emails the new credentials. Path param: `id`. Body: `password` (new Webuzo password, must pass `valid_password`), `login_password` (caller's account login password — verified via md5 hash). Synchronous — no queue ID. Requires a prior Webuzo-Details history entry. Returns: success message string. Errors: 401, 404 if not owned, 409 if status != `active`, validation errors for missing fields, wrong login password, weak new password, or SDK failure. Siblings: `getQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsChangeWebuzoPassword($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsChangeWebuzoPassword: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsInsertCd**
> \InterserverApiClient\Model\QueueResponse postQsInsertCd($id)

Mount an ISO image as the QuickServer's virtual CD via URL

Queues an `insert_cd` job that attaches the given ISO URL to the QuickServer's virtual CD drive (typically for OS reinstalls or rescue boots). Path param: `id`. Body (JSON or form): `url` (the ISO URL — pick one from `getQsInsertCd`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller. The action is idempotent in effect (latest mount wins). Siblings: `getQsInsertCd` (list options), `doQsEjectCd` (unmount), `doQsDisableCd`, `postQsReinstallOs` (template-based).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsInsertCd($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsInsertCd: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsReinstallOs**
> \InterserverApiClient\Model\QueueResponse postQsReinstallOs($id)

Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)

Wipes the disk and reinstalls the chosen OS template. All data, configs, and snapshots are erased. Path param: `id`. Body: `template` (a `template_file` from `getQsReinstallOs`), `password` (new root password — required for non-Windows templates). For active services, queues `reinstall_os` (~2 min). For inactive services, just stores the OS preference for next activation. Updates `qs_status` to `Reinstalling` and clears screenshots. Returns flash messages — typical envelope. Errors: 401, invalid template name returns error flash. Siblings: `getQsReinstallOs` (list options), `postVpsReinstallOs`, `postQuickServerRestore` (recover from backup instead).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsReinstallOs($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsReinstallOs: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsResetPassword**
> \InterserverApiClient\Model\QueueResponse postQsResetPassword($id)

Reset QuickServer root password to a server-generated random value

Queues a `reset_password` job that generates a new root password and emails it to the account owner. Path param: `id` (integer). No body — password is generated server-side. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller, 409 if status != `active`. For a chosen password use `postQsChangeRootPassword` instead; for the Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsResetPassword`, `postVpsResetPassword`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsResetPassword($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsResetPassword: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsReverseDns**
> \InterserverApiClient\Model\TextResponse postQsReverseDns($body, $id)

Update reverse DNS (PTR) records for a QuickServer's IPs

Sets PTR records for one or more of the QuickServer's IPs. Path param: `id`. Body (form): `ips` — keyed by IP, value is the desired hostname (must be valid). Returns: `{ message: \"DNS Updated\", success: true }`. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with `getQsReverseDns` after calling, and use the support channel if changes don't propagate. Errors: 401 if unauthenticated. Siblings: `getQsReverseDns`, `postVpsReverseDns`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\ReverseDnsEntries(); // \InterserverApiClient\Model\ReverseDnsEntries | 
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsReverseDns($body, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsReverseDns: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\ReverseDnsEntries**](../Model/ReverseDnsEntries.md)|  |
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\TextResponse**](../Model/TextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsReverseDns**
> \InterserverApiClient\Model\TextResponse postQsReverseDns($ips, $id)

Update reverse DNS (PTR) records for a QuickServer's IPs

Sets PTR records for one or more of the QuickServer's IPs. Path param: `id`. Body (form): `ips` — keyed by IP, value is the desired hostname (must be valid). Returns: `{ message: \"DNS Updated\", success: true }`. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with `getQsReverseDns` after calling, and use the support channel if changes don't propagate. Errors: 401 if unauthenticated. Siblings: `getQsReverseDns`, `postVpsReverseDns`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$ips = array('key' => new \stdClass); // map[string,object] | 
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsReverseDns($ips, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsReverseDns: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ips** | [**map[string,object]**](../Model/object.md)|  |
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\TextResponse**](../Model/TextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsSetupVnc**
> \InterserverApiClient\Model\QueueResponse postQsSetupVnc($id)

Configure the source IP allowed to reach a QuickServer's VNC console

Sets the IP allowed to reach the VNC tunnel and queues a `setup_vnc` to apply it. Path param: `id`. Body (JSON or form): `vnc` (a valid IPv4 address — only this address can reach the console). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned, 409 if status != `active`. Returns an inline `Invalid IP` message when `vnc` fails `validIp`. The VPS-style helper also runs after the DB update. Siblings: `getQsSetupVnc` (read), `postVpsSetupVnc`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQsSetupVnc($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsSetupVnc: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsTrafficUsage**
> postQsTrafficUsage($id)

Query QuickServer bandwidth usage via POST (filtered variant)

Functional duplicate of `getQsTrafficUsage` exposed under POST so clients can pass a filter body. Path param: `id` (integer). Body fields are accepted but the current handler ignores them and returns the full current-cycle dataset. Returns: same bandwidth-data object as `getQsTrafficUsage`. Errors: 401 if unauthenticated. No active-status or ownership gate. Siblings: `getQsTrafficUsage`, `postVpsTrafficUsage`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->postQsTrafficUsage($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsTrafficUsage: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQsViewDesktop**
> postQsViewDesktop($id)

Submit changes and re-fetch the QuickServer dashboard view payload

Same handler as `getQsViewDesktop` but accessible via POST so callers can pass body fields alongside re-fetching the view. Path param: `id`. Body fields are accepted by the underlying View handler. Returns: refreshed dashboard object — `serviceInfo`, `client_links`, etc. Errors: 401 if unauthenticated. For structured updates prefer the dedicated endpoints (`postQsChangeHostname`, `postQsReverseDns`, `postQsSetupVnc`, etc.) which return queue IDs. Siblings: `getQsViewDesktop`, `postVpsViewDesktop`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $apiInstance->postQsViewDesktop($id);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQsViewDesktop: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQuickServerRestore**
> \InterserverApiClient\Model\QueueResponse postQuickServerRestore($body, $id)

Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)

Overwrites the live disk with a backup. Path param: `id`. Body (form): `backup` (composite key `<type>:<service>:<name>` from `getQsBackups`), `password` (caller's account login password — required for non-admin to confirm). Validates backup exists, caller's password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues `snapshot_restore` for ZFS or `restore` for swift/minio; allow up to 10 minutes. Returns: `{ text, queueId }`. Errors: 401, 404 if not owned, 409 if status != `active`, errors for invalid password, missing backup, or insufficient disk space. Siblings: `getQsBackups`, `getQsBackup` (create), `postVpsRestore`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\RestoreRequest(); // \InterserverApiClient\Model\RestoreRequest | QuickServer Restore request
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQuickServerRestore($body, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQuickServerRestore: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\RestoreRequest**](../Model/RestoreRequest.md)| QuickServer Restore request |
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **postQuickServerRestore**
> \InterserverApiClient\Model\QueueResponse postQuickServerRestore($backup, $password, $id)

Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)

Overwrites the live disk with a backup. Path param: `id`. Body (form): `backup` (composite key `<type>:<service>:<name>` from `getQsBackups`), `password` (caller's account login password — required for non-admin to confirm). Validates backup exists, caller's password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues `snapshot_restore` for ZFS or `restore` for swift/minio; allow up to 10 minutes. Returns: `{ text, queueId }`. Errors: 401, 404 if not owned, 409 if status != `active`, errors for invalid password, missing backup, or insufficient disk space. Siblings: `getQsBackups`, `getQsBackup` (create), `postVpsRestore`.

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$backup = "backup_example"; // string | 
$password = "password_example"; // string | 
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->postQuickServerRestore($backup, $password, $id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->postQuickServerRestore: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **backup** | **string**|  |
 **password** | **string**|  |
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\QueueResponse**](../Model/QueueResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **putQs**
> putQs($body)

Validate a QuickServer order without charging or provisioning

Dry-run the order payload before calling `addQs`. No invoice is created and no service is provisioned. Use to surface form errors, compute the price, and resolve the chosen `server`/`os`/`distro` against the master pool. Body (form): `server` (master ID), `password`, `os` (template), `comment`, `tos`. Returns the `validate_buy_qs` result with `continue` flag, normalized fields, `service_cost`, and `errors` array. Errors: 401 if unauthenticated; validation errors are returned in the body, not as 4xx. Siblings: `addQs` (commits the order), `getNewQs` (form metadata), `putVps` (VPS equivalent).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$body = new \InterserverApiClient\Model\QsOrderRequest(); // \InterserverApiClient\Model\QsOrderRequest | 

try {
    $apiInstance->putQs($body);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->putQs: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**\InterserverApiClient\Model\QsOrderRequest**](../Model/QsOrderRequest.md)|  |

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **quickserversCancel**
> \InterserverApiClient\Model\InlineResponse20011 quickserversCancel($id)

Cancel a QuickServer service at the end of the current billing cycle

Schedules deprovisioning. The server keeps running until the current billing period ends, then is canceled and the recurring invoice stops. Path param: `id` (integer). Returns: `{ success: bool, text: string }`. Errors: 401 if unauthenticated, 404 if not owned by caller. Reversible only by support before the cycle closes — use `getQsInvoices` to check the next invoice date first. Siblings: `getQsInfo`, `VPSCancel` (VPS equivalent), `serversCancel` (dedicated equivalent).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = 56; // int | QuickServer ID number

try {
    $result = $apiInstance->quickserversCancel($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->quickserversCancel: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **int**| QuickServer ID number |

### Return type

[**\InterserverApiClient\Model\InlineResponse20011**](../Model/InlineResponse20011.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

# **updateQsInfo**
> \InterserverApiClient\Model\SuccessTextResponse updateQsInfo($id)

Update QuickServer order metadata or stored settings without OS impact

Mutates QuickServer-level settings (comment, stored notes) without affecting the running OS. Path param: `id`. Body fields are module-specific and processed by the shared `View::go` handler. Returns: `SuccessTextResponse`. Errors: 401 if unauthenticated, 404 if not owned by caller. For server-side actions use the dedicated endpoints — hostname via `postQsChangeHostname`, password via `postQsChangeRootPassword`, OS via `postQsReinstallOs`. Siblings: `getQsInfo` (read), `quickserversCancel` (delete).

### Example
```php
<?php
require_once(__DIR__ . '/vendor/autoload.php');
// Configure API key authorization: apiKeyAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('X-API-KEY', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('X-API-KEY', 'Bearer');// Configure API key authorization: sessionIdCookieAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');// Configure API key authorization: sessionIdHeaderAuth
$config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKey('sessionid', 'YOUR_API_KEY');
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
// $config = InterserverApiClient\Configuration::getDefaultConfiguration()->setApiKeyPrefix('sessionid', 'Bearer');

$apiInstance = new InterserverApiClient\Api\QuickServersApi(
    // If you want use custom http client, pass your client which implements `GuzzleHttp\ClientInterface`.
    // This is optional, `GuzzleHttp\Client` will be used as default.
    new GuzzleHttp\Client(),
    $config
);
$id = "id_example"; // string | QuickServer ID number.

try {
    $result = $apiInstance->updateQsInfo($id);
    print_r($result);
} catch (Exception $e) {
    echo 'Exception when calling QuickServersApi->updateQsInfo: ', $e->getMessage(), PHP_EOL;
}
?>
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **string**| QuickServer ID number. |

### Return type

[**\InterserverApiClient\Model\SuccessTextResponse**](../Model/SuccessTextResponse.md)

### Authorization

[apiKeyAuth](../../README.md#apiKeyAuth), [sessionIdCookieAuth](../../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../../README.md#documentation-for-api-endpoints) [[Back to Model list]](../../README.md#documentation-for-models) [[Back to README]](../../README.md)

