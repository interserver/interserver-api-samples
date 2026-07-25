# \QuickServersApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_qs**](QuickServersApi.md#add_qs) | **POST** /qs/order | Place a QuickServer order, generating a real invoice and queuing provisioning
[**delete_qs_backup**](QuickServersApi.md#delete_qs_backup) | **DELETE** /qs/{id}/backups | Permanently delete a QuickServer backup file from object storage
[**do_qs_block_smtp**](QuickServersApi.md#do_qs_block_smtp) | **GET** /qs/{id}/block_smtp | Block outbound SMTP traffic on a QuickServer to halt mail abuse
[**do_qs_disable_cd**](QuickServersApi.md#do_qs_disable_cd) | **GET** /qs/{id}/disable_cd | Disable the virtual CD/DVD drive device on a QuickServer
[**do_qs_disable_quota**](QuickServersApi.md#do_qs_disable_quota) | **GET** /qs/{id}/disable_quota | Disable disk-quota enforcement at OS level on a QuickServer
[**do_qs_eject_cd**](QuickServersApi.md#do_qs_eject_cd) | **GET** /qs/{id}/eject_cd | Eject the currently mounted ISO from a QuickServer's virtual CD drive
[**do_qs_enable_quota**](QuickServersApi.md#do_qs_enable_quota) | **GET** /qs/{id}/enable_quota | Enable disk-quota enforcement at OS level on a QuickServer
[**do_qs_restart**](QuickServersApi.md#do_qs_restart) | **GET** /qs/{id}/restart | Reboot a QuickServer with a graceful OS-level restart
[**do_qs_start**](QuickServersApi.md#do_qs_start) | **GET** /qs/{id}/start | Power on a QuickServer that is currently stopped or pending boot
[**do_qs_stop**](QuickServersApi.md#do_qs_stop) | **GET** /qs/{id}/stop | Power off a QuickServer with a graceful shutdown command
[**download_qs_backup**](QuickServersApi.md#download_qs_backup) | **PATCH** /qs/{id}/backups | Generate a 24-hour pre-signed download URL for a QuickServer backup
[**get_new_qs**](QuickServersApi.md#get_new_qs) | **GET** /qs/order | Get QuickServer order form metadata and available plans/templates
[**get_qs_backup**](QuickServersApi.md#get_qs_backup) | **GET** /qs/{id}/backup | Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
[**get_qs_backups**](QuickServersApi.md#get_qs_backups) | **GET** /qs/{id}/backups | List available QuickServer backups across Swift, MinIO, and ZFS storage
[**get_qs_change_hostname**](QuickServersApi.md#get_qs_change_hostname) | **GET** /qs/{id}/change_hostname | Get current QuickServer hostname plus change rules and platform support
[**get_qs_change_root_password**](QuickServersApi.md#get_qs_change_root_password) | **GET** /qs/{id}/change_root_password | Get metadata for QuickServer root/OS password change requirements
[**get_qs_change_timezone**](QuickServersApi.md#get_qs_change_timezone) | **GET** /qs/{id}/change_timezone | List timezones the QuickServer can be set to via change_timezone
[**get_qs_change_webuzo_password**](QuickServersApi.md#get_qs_change_webuzo_password) | **GET** /qs/{id}/change_webuzo_password | Get metadata for changing the Webuzo control panel admin password
[**get_qs_info**](QuickServersApi.md#get_qs_info) | **GET** /qs/{id} | Get full details for one QuickServer including credentials and links
[**get_qs_insert_cd**](QuickServersApi.md#get_qs_insert_cd) | **GET** /qs/{id}/insert_cd | List ISO images available to mount on a QuickServer's virtual CD
[**get_qs_invoices**](QuickServersApi.md#get_qs_invoices) | **GET** /qs/{id}/invoices | List billing invoices charged for one QuickServer service
[**get_qs_list**](QuickServersApi.md#get_qs_list) | **GET** /qs | List QuickServer rapid-deploy dedicated servers on the account
[**get_qs_reinstall_os**](QuickServersApi.md#get_qs_reinstall_os) | **GET** /qs/{id}/reinstall_os | List OS templates available for a QuickServer reinstall
[**get_qs_reset_password**](QuickServersApi.md#get_qs_reset_password) | **GET** /qs/{id}/reset_password | Get options for QuickServer randomized root password reset
[**get_qs_reverse_dns**](QuickServersApi.md#get_qs_reverse_dns) | **GET** /qs/{id}/reverse_dns | Get reverse DNS (PTR) records for all of a QuickServer's IPs
[**get_qs_setup_vnc**](QuickServersApi.md#get_qs_setup_vnc) | **GET** /qs/{id}/setup_vnc | Get current VNC console connection details for a QuickServer
[**get_qs_traffic_usage**](QuickServersApi.md#get_qs_traffic_usage) | **GET** /qs/{id}/traffic_usage | Get bandwidth usage for the QuickServer's current billing period
[**get_qs_view_desktop**](QuickServersApi.md#get_qs_view_desktop) | **GET** /qs/{id}/view_desktop | Get the full QuickServer dashboard view payload (rich format)
[**get_qs_welcome_email**](QuickServersApi.md#get_qs_welcome_email) | **GET** /qs/{id}/welcome_email | Resend the QuickServer welcome email with login credentials
[**post_qs_change_hostname**](QuickServersApi.md#post_qs_change_hostname) | **POST** /qs/{id}/change_hostname | Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)
[**post_qs_change_root_password**](QuickServersApi.md#post_qs_change_root_password) | **POST** /qs/{id}/change_root_password | Change QuickServer root/administrator password to a chosen value
[**post_qs_change_timezone**](QuickServersApi.md#post_qs_change_timezone) | **POST** /qs/{id}/change_timezone | Change the system timezone on a QuickServer to a catalog entry
[**post_qs_change_webuzo_password**](QuickServersApi.md#post_qs_change_webuzo_password) | **POST** /qs/{id}/change_webuzo_password | Change Webuzo control panel admin password live (synchronous, not queued)
[**post_qs_insert_cd**](QuickServersApi.md#post_qs_insert_cd) | **POST** /qs/{id}/insert_cd | Mount an ISO image as the QuickServer's virtual CD via URL
[**post_qs_reinstall_os**](QuickServersApi.md#post_qs_reinstall_os) | **POST** /qs/{id}/reinstall_os | Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
[**post_qs_reset_password**](QuickServersApi.md#post_qs_reset_password) | **POST** /qs/{id}/reset_password | Reset QuickServer root password to a server-generated random value
[**post_qs_reverse_dns**](QuickServersApi.md#post_qs_reverse_dns) | **POST** /qs/{id}/reverse_dns | Update reverse DNS (PTR) records for a QuickServer's IPs
[**post_qs_setup_vnc**](QuickServersApi.md#post_qs_setup_vnc) | **POST** /qs/{id}/setup_vnc | Configure the source IP allowed to reach a QuickServer's VNC console
[**post_qs_traffic_usage**](QuickServersApi.md#post_qs_traffic_usage) | **POST** /qs/{id}/traffic_usage | Query QuickServer bandwidth usage via POST (filtered variant)
[**post_qs_view_desktop**](QuickServersApi.md#post_qs_view_desktop) | **POST** /qs/{id}/view_desktop | Submit changes and re-fetch the QuickServer dashboard view payload
[**post_quick_server_restore**](QuickServersApi.md#post_quick_server_restore) | **POST** /qs/{id}/restore | Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
[**put_qs**](QuickServersApi.md#put_qs) | **PUT** /qs/order | Validate a QuickServer order without charging or provisioning
[**quickservers_cancel**](QuickServersApi.md#quickservers_cancel) | **DELETE** /qs/{id} | Cancel a QuickServer service at the end of the current billing cycle
[**update_qs_info**](QuickServersApi.md#update_qs_info) | **POST** /qs/{id} | Update QuickServer order metadata or stored settings without OS impact



## add_qs

> models::ServiceOrderPostResponse add_qs(qs_order_request)
Place a QuickServer order, generating a real invoice and queuing provisioning

Commits the validated order: creates the service row, generates a real invoice, and queues provisioning. Body fields match `putQs` (`server`, `password`, `os`, `comment`, `tos`) — call `putQs` first to catch errors. On `validation.continue=false`, returns the joined error string with no charge. Returns: `ServiceOrderPostResponse` with the new service ID and invoice info. Pay via `getBillingInvoice`/`initiatePayment`. Errors: 401 if unauthenticated, 4xx with message on validation failure. Siblings: `putQs` (validate first), `getNewQs`, `addVps` (VPS equivalent).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**qs_order_request** | [**QsOrderRequest**](QsOrderRequest.md) |  | [required] |

### Return type

[**models::ServiceOrderPostResponse**](ServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## delete_qs_backup

> models::SuccessTextResponse delete_qs_backup(id, file, all)
Permanently delete a QuickServer backup file from object storage

Removes the backup from its storage backend. Irreversible — the backup cannot be recovered. Path param: `id`. Required: `file` (the backup `name` from `getQsBackups`, in query or form body). Works for `swift` and `minio` backups; `zfs` snapshots cannot be deleted via this endpoint (returns an error pointing to support). Returns: `SuccessTextResponse` with the removed name. Errors: 401, 404 if not owned, error message if backup type is unsupported or the storage operation fails. Siblings: `getQsBackups` (list), `downloadQsBackup` (PATCH), `postQuickServerRestore`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |
**file** | **String** | The backup filename to delete. | [required] |
**all** | Option<**String**> | Set to `1` to list all backups across all services, not just the ones for the given QuickServer. |  |

### Return type

[**models::SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## do_qs_block_smtp

> models::QueueResponse do_qs_block_smtp(id)
Block outbound SMTP traffic on a QuickServer to halt mail abuse

Queues a firewall rule that drops outbound port 25 traffic, used to halt spam/abuse without taking the server offline. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes via the queue worker, which also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Reversible only by support — there is no `unblock_smtp` endpoint. Siblings: `doVpsBlockSmtp`, `getQsInfo`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number. | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## do_qs_disable_cd

> models::QueueResponse do_qs_disable_cd(id)
Disable the virtual CD/DVD drive device on a QuickServer

Queues removal of the virtual CD/DVD device from the QuickServer (full disable, not just eject). Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsEjectCd` (eject the ISO but keep drive), `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list available ISOs).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number. | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## do_qs_disable_quota

> models::QueueResponse do_qs_disable_quota(id)
Disable disk-quota enforcement at OS level on a QuickServer

Queues a job to turn off disk-quota enforcement at the OS level. Use when quota errors block legitimate writes or before resizing disk space. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Re-enable later with `doQsEnableQuota`. Siblings: `doQsEnableQuota` (re-enable), `doVpsDisableQuota` (VPS equivalent).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number. | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## do_qs_eject_cd

> models::QueueResponse do_qs_eject_cd(id)
Eject the currently mounted ISO from a QuickServer's virtual CD drive

Queues an eject — drive remains attached but no media. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. The queue worker also re-runs VNC setup so the console reflects the change. Errors: 401, 404 if `id` is not owned by caller. Note: this handler does not validate `active` status. Siblings: `postQsInsertCd` (mount an ISO), `getQsInsertCd` (list ISOs), `doQsDisableCd` (remove the drive itself).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number. | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## do_qs_enable_quota

> models::QueueResponse do_qs_enable_quota(id)
Enable disk-quota enforcement at OS level on a QuickServer

Queues a job to turn on disk-quota enforcement at the OS level. Pair with `doQsDisableQuota` when re-enabling after maintenance, disk resizing, or restoring a backup. Path param: `id` (integer). No body. Returns: `{ text, queueId }`. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `doQsDisableQuota` (turn off), `doVpsEnableQuota` (VPS equivalent).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number. | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## do_qs_restart

> models::QueueResponse do_qs_restart(id)
Reboot a QuickServer with a graceful OS-level restart

Queues a graceful restart — equivalent to `reboot` inside the OS. Path param: `id` (integer). No body. Use to recover from a hung service or apply pending kernel/config changes. Returns: `{ text, queueId }`. Async — server is back online within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on `active` status — restarts work even on suspended services. Siblings: `doQsStart`, `doQsStop`, `doVpsRestart`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number. | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## do_qs_start

> models::QueueResponse do_qs_start(id)
Power on a QuickServer that is currently stopped or pending boot

Queues a `start` command to bring the QuickServer online. Path param: `id` (integer). No body. Idempotent in practice — re-running on an already-on server is a no-op at the worker. Returns: `{ text, queueId }`. Async — typically online within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status, so it can be issued even for non-active services. Siblings: `doQsStop`, `doQsRestart`, `getQsInfo`, `doVpsStart`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number. | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## do_qs_stop

> models::QueueResponse do_qs_stop(id)
Power off a QuickServer with a graceful shutdown command

Queues a `stop` command. Path param: `id` (integer). No body. Use before maintenance, snapshot, or to halt traffic — billing continues regardless of power state, so use `quickserversCancel` to also stop charges. Returns: `{ text, queueId }`. Async — typically off within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status. Siblings: `doQsStart`, `doQsRestart`, `doVpsStop`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number. | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## download_qs_backup

> models::DownloadQsBackup200Response download_qs_backup(id, download_qs_backup_request, all)
Generate a 24-hour pre-signed download URL for a QuickServer backup

Returns a temporary signed URL to fetch the backup directly from object storage. Path param: `id`. Body (JSON or form): `file` (the backup `name` from `getQsBackups`). Only available for `minio`-type backups; `swift` and `zfs` backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: `{ text, url }`. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: `getQsBackups` (list, get `name`), `deleteQsBackup`, `postQuickServerRestore`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |
**download_qs_backup_request** | [**DownloadQsBackupRequest**](DownloadQsBackupRequest.md) |  | [required] |
**all** | Option<**String**> | Set to `1` to list all backups across all services, not just the ones for the given QuickServer. |  |

### Return type

[**models::DownloadQsBackup200Response**](downloadQsBackup_200_response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_new_qs

> models::QuickserverOrder get_new_qs()
Get QuickServer order form metadata and available plans/templates

Use before placing or validating a QuickServer order to retrieve pricing, available servers, OS templates, and form fields. Read-only — no params, no body, no charge. Returns: `QuickserverOrder` schema with plan/template/server options used to build the order payload for `putQs` (validate) or `addQs` (place). Errors: 401 if unauthenticated. Siblings: `putQs` (dry-run validation), `addQs` (commits and invoices), `getNewVps` (virtual VPS ordering surface).

### Parameters

This endpoint does not need any parameter.

### Return type

[**models::QuickserverOrder**](QuickserverOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_backup

> models::QueueResponse get_qs_backup(id)
Queue creation of a new QuickServer backup snapshot (note: GET triggers job)

Note: GET on `/qs/{id}/backup` triggers a backup job — despite the verb, this is a state-changing action. Queues a `backup` operation; backup name is auto-generated. Path param: `id` (integer). Returns: `{ text, queueId }`. Async — backup completes in minutes to hours depending on disk size. Poll `getQsBackups` to see when it appears. Errors: 401 if unauthenticated, 404 if not owned by caller, 409 if status != `active`. Siblings: `getQsBackups` (list), `postQuickServerRestore`, `downloadQsBackup`, `deleteQsBackup`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_backups

> models::VpsBackupRows get_qs_backups(id, all)
List available QuickServer backups across Swift, MinIO, and ZFS storage

Returns all backups visible to the caller for this QuickServer across the three backup backends. Path param: `id` (integer). Optional query `all=1` lists every backup the customer owns, not just this server's. Returns: `VpsBackupRows` array — each row has `name`, `type` (swift/minio/zfs), `size`, `service`, `path`. Use `name` (not a numeric ID) with `downloadQsBackup` (PATCH), `deleteQsBackup` (DELETE), or `postQuickServerRestore`. Errors: 401, 404 if not owned by caller. Siblings: `getQsBackup` (create), `postQuickServerRestore`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |
**all** | Option<**String**> | Set to `1` to list all backups across all services, not just the ones for the given QuickServer. |  |

### Return type

[**models::VpsBackupRows**](VpsBackupRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_change_hostname

> get_qs_change_hostname(id)
Get current QuickServer hostname plus change rules and platform support

Read-only probe before calling `postQsChangeHostname`. Path param: `id` (integer). Returns the current hostname and the validation rules the new hostname must satisfy. Returns: object with hostname metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: hostname changes are only supported on OpenVZ/Virtuozzo platforms — `postQsChangeHostname` rejects KVM/dedicated types with an explanatory error. Siblings: `postQsChangeHostname`, `getVpsChangeHostname`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_change_root_password

> get_qs_change_root_password(id)
Get metadata for QuickServer root/OS password change requirements

Read-only probe before calling `postQsChangeRootPassword`. Path param: `id` (integer). Use to surface password complexity rules and confirm the QuickServer accepts root password changes. Returns: object with reset metadata. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: this changes the OS root password (Linux) — for the Webuzo control panel password use `postQsChangeWebuzoPassword`. Siblings: `postQsChangeRootPassword`, `postQsResetPassword` (random password), `getVpsChangeRootPassword`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_change_timezone

> Vec<String> get_qs_change_timezone(id)
List timezones the QuickServer can be set to via change_timezone

Returns the system timezone catalog (parsed from `/usr/share/zoneinfo/zone.tab`) for use with `postQsChangeTimezone`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: array of timezone strings (e.g. `America/New_York`, `Europe/London`). Errors: 401, 404 if not owned by caller, 409 if status != `active` (handler labels these errors as `Invalid VPS Passed` / `VPS is not active` due to shared code). Siblings: `postQsChangeTimezone` (commit), `getVpsChangeTimezone`, `getQsChangeHostname` (also informational).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

**Vec<String>**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_change_webuzo_password

> get_qs_change_webuzo_password(id)
Get metadata for changing the Webuzo control panel admin password

Read-only probe before `postQsChangeWebuzoPassword`. Path param: `id` (integer). Webuzo is a control panel optionally installed on QuickServers — its admin password is separate from the OS root password. Returns: object with change instructions. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Siblings: `postQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root password), `postQsResetPassword`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_info

> models::Quickserver get_qs_info(id)
Get full details for one QuickServer including credentials and links

Returns the QuickServer dashboard payload — service info, IPs, hostname, OS, status, billing, and the list of available `client_links` (action endpoints the caller is allowed to invoke). Path param: `id` (integer QuickServer ID). Returns: `Quickserver` schema. Use response links to drive `doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, `getQsReinstallOs`, `getQsReverseDns`, `getQsInvoices`. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller. Siblings: `updateQsInfo` (mutate), `quickserversCancel` (delete), `getVpsInfo` (VPS equivalent).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number. | [required] |

### Return type

[**models::Quickserver**](Quickserver.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_insert_cd

> get_qs_insert_cd(id)
List ISO images available to mount on a QuickServer's virtual CD

Returns the catalog of bootable ISOs the caller can mount via `postQsInsertCd`. Path param: `id` (integer). Read-only — no queue, no charge. Returns: object with available ISO entries (URLs/labels) keyed for the QuickServer's hardware type. Errors: 401 if unauthenticated. Note: this handler does not validate ownership or active status — pair with `getQsInfo` first if you need those checks before presenting options to a user. Siblings: `postQsInsertCd` (mount the chosen URL), `doQsEjectCd`, `doQsDisableCd`, `getVpsInsertCd`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_invoices

> models::ChargeInvoiceRows get_qs_invoices(id)
List billing invoices charged for one QuickServer service

Returns invoices charged for this QuickServer (initial setup + recurring). Path param: `id` (integer). Returns: `ChargeInvoiceRows` — each row has invoice ID, amount, status (paid/unpaid), date. Use the invoice ID with `getBillingInvoice` for full detail or `initiatePayment` to settle. Errors: 401 if unauthenticated, 404 if not owned by caller. Siblings: `getQsInfo`, `getVpsInvoices`, `getBillingInvoice`, `quickserversCancel` (check next-invoice date before canceling).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::ChargeInvoiceRows**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_list

> Vec<models::QuickserverRow> get_qs_list()
List QuickServer rapid-deploy dedicated servers on the account

Use to enumerate the caller's QuickServers (quick-provision physical dedicated boxes that share the VPS billing model). No params, no body. Each row has `qs_id`, `qs_name`, `qs_hostname`, `qs_status`, `qs_comment`, and `cost`. Feed `qs_id` into `getQsInfo` for full details, or any per-server action (`doQsStart`, `doQsStop`, `doQsRestart`, `getQsBackups`, etc.). Returns: array of QuickServer rows. Errors: 401 if unauthenticated. Siblings: `getVpsList` (virtual VPS surface), `getQsInfo`, `getNewQs` for ordering metadata.

### Parameters

This endpoint does not need any parameter.

### Return type

[**Vec<models::QuickserverRow>**](QuickserverRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_reinstall_os

> models::VpsTemplatesList get_qs_reinstall_os(id)
List OS templates available for a QuickServer reinstall

Returns the OS template catalog filtered to the QuickServer's hardware/template type. Path param: `id` (integer). Read-only — no provisioning happens. Returns: `{ templates: [...] }` — each template has `template_file`, `template_name`, `template_version`. Use `template_file` with `postQsReinstallOs`. Non-admin callers only see templates with `template_available=1`. Errors: 401 if unauthenticated. Siblings: `postQsReinstallOs` (commit, destructive), `getVpsReinstallOs`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::VpsTemplatesList**](VpsTemplatesList.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_reset_password

> get_qs_reset_password(id)
Get options for QuickServer randomized root password reset

Read-only probe before `postQsResetPassword`. Path param: `id` (integer). Use to confirm the QuickServer is in a state that allows password resets. Returns: object with reset configuration. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Note: `postQsResetPassword` generates a random password — for a chosen value use `postQsChangeRootPassword`. Siblings: `postQsResetPassword`, `postQsChangeRootPassword`, `getVpsResetPassword`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_reverse_dns

> models::ReverseDnsEntries get_qs_reverse_dns(id)
Get reverse DNS (PTR) records for all of a QuickServer's IPs

Returns the current PTR record for the primary IP and any additional IPs assigned to the QuickServer. Path param: `id` (integer). Read-only — looks up live DNS, no queue. Returns: `{ ips: { \"<ip>\": \"<hostname>\", ... } }`. Use the keys with `postQsReverseDns` to update entries. Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `postQsReverseDns`, `getVpsReverseDns`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::ReverseDnsEntries**](ReverseDnsEntries.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_setup_vnc

> get_qs_setup_vnc(id)
Get current VNC console connection details for a QuickServer

Read-only probe for the VNC tunnel that exposes the server's console (host, port, credentials). Path param: `id` (integer). Returns: object with VNC connection info. Errors: 401 if unauthenticated, 404 if `id` is not owned by caller, 409 if service is not `active`. Note: this endpoint is currently a stub — the `// todo: return vnc info` line indicates the response body may be empty until completed. Siblings: `postQsSetupVnc` (configure access IP), `getVpsSetupVnc`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_traffic_usage

> get_qs_traffic_usage(id)
Get bandwidth usage for the QuickServer's current billing period

Returns the inbound/outbound bandwidth totals and time-series points for the QuickServer's current cycle. Path param: `id` (integer). Read-only. Returns: bandwidth-data object from `qs_bandwidth_data` (totals, daily/hourly points, overage flag). Errors: 401 if unauthenticated. Note: handler does not gate on ownership or active status. Siblings: `postQsTrafficUsage` (same data, accessible via POST for filtered queries), `getVpsTrafficUsage`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_view_desktop

> get_qs_view_desktop(id)
Get the full QuickServer dashboard view payload (rich format)

Returns the same rich payload the AdminLTE UI uses — service info, billing, available client_links, resource graphs. Heavier than `getQsInfo` and intended for desktop dashboards. Path param: `id` (integer). Returns: object with `serviceInfo`, `client_links`, etc. (admin-only fields stripped). Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: `getQsInfo` (lighter), `postQsViewDesktop` (mutate variant), `getVpsViewDesktop`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## get_qs_welcome_email

> models::TextResponse get_qs_welcome_email(id)
Resend the QuickServer welcome email with login credentials

Re-runs the `qs_welcome_email` function which composes and sends the welcome email containing connection details, root password, and management URLs to the account owner. Path param: `id` (integer). Returns: `{ text: \"Welcome Email has been resent.\" }`. Errors: 401, 404 if not owned by caller, 409 if status != `active`. Use when the original welcome email was lost or the customer needs credentials again. Siblings: `getVpsWelcomeEmail`, `getQsInfo` (also exposes connection info).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | Quickserver ID | [required] |

### Return type

[**models::TextResponse**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_change_hostname

> models::QueueResponse post_qs_change_hostname(id)
Change a QuickServer's system hostname (OpenVZ/Virtuozzo only)

Updates the hostname and the matching reverse DNS entry. Path param: `id`. Body (JSON or form): `hostname` (must pass `valid_hostname`, must differ from current). Only supported on OpenVZ/Virtuozzo platforms — KVM/dedicated returns a 4xx with a contact-support message. Pending services update the DB row directly (`{ text }`); active services queue the change (`{ text, queueId }`, ~2 min). Errors: 401, 404 if not owned, 409 if status != `active`, validation error for bad hostname or no change. Siblings: `getQsChangeHostname`, `postVpsChangeHostname`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_change_root_password

> models::QueueResponse post_qs_change_root_password(id)
Change QuickServer root/administrator password to a chosen value

Queues a root password change. Path param: `id`. Body (JSON or form): `password` (the new password — required, no server-side complexity validation here). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Both queue and history entries are written. Errors: 401, 404 if not owned, 409 if status != `active`, 400 if `password` is missing. For a randomly generated password use `postQsResetPassword` instead. For Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsChangeRootPassword`, `postVpsChangeRootPassword`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_change_timezone

> models::QueueResponse post_qs_change_timezone(id, timezone)
Change the system timezone on a QuickServer to a catalog entry

Queues a timezone change. Path param: `id`. Body (JSON or form): `timezone` (must be one of the strings returned by `getQsChangeTimezone`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status != `active`, 422 if `timezone` is not in the catalog. Siblings: `getQsChangeTimezone` (call first to get valid options), `postVpsChangeTimezone`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |
**timezone** | **String** | The time zone | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_change_webuzo_password

> models::QueueResponse post_qs_change_webuzo_password(id)
Change Webuzo control panel admin password live (synchronous, not queued)

Calls the Webuzo SDK directly on the server to change the panel `admin` password, then emails the new credentials. Path param: `id`. Body: `password` (new Webuzo password, must pass `valid_password`), `login_password` (caller's account login password — verified via md5 hash). Synchronous — no queue ID. Requires a prior Webuzo-Details history entry. Returns: success message string. Errors: 401, 404 if not owned, 409 if status != `active`, validation errors for missing fields, wrong login password, weak new password, or SDK failure. Siblings: `getQsChangeWebuzoPassword`, `postQsChangeRootPassword` (OS root).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_insert_cd

> models::QueueResponse post_qs_insert_cd(id)
Mount an ISO image as the QuickServer's virtual CD via URL

Queues an `insert_cd` job that attaches the given ISO URL to the QuickServer's virtual CD drive (typically for OS reinstalls or rescue boots). Path param: `id`. Body (JSON or form): `url` (the ISO URL — pick one from `getQsInsertCd`). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller. The action is idempotent in effect (latest mount wins). Siblings: `getQsInsertCd` (list options), `doQsEjectCd` (unmount), `doQsDisableCd`, `postQsReinstallOs` (template-based).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_reinstall_os

> models::QueueResponse post_qs_reinstall_os(id)
Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)

Wipes the disk and reinstalls the chosen OS template. All data, configs, and snapshots are erased. Path param: `id`. Body: `template` (a `template_file` from `getQsReinstallOs`), `password` (new root password — required for non-Windows templates). For active services, queues `reinstall_os` (~2 min). For inactive services, just stores the OS preference for next activation. Updates `qs_status` to `Reinstalling` and clears screenshots. Returns flash messages — typical envelope. Errors: 401, invalid template name returns error flash. Siblings: `getQsReinstallOs` (list options), `postVpsReinstallOs`, `postQuickServerRestore` (recover from backup instead).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_reset_password

> models::QueueResponse post_qs_reset_password(id)
Reset QuickServer root password to a server-generated random value

Queues a `reset_password` job that generates a new root password and emails it to the account owner. Path param: `id` (integer). No body — password is generated server-side. Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller, 409 if status != `active`. For a chosen password use `postQsChangeRootPassword` instead; for the Webuzo panel password use `postQsChangeWebuzoPassword`. Siblings: `getQsResetPassword`, `postVpsResetPassword`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_reverse_dns

> models::TextResponse post_qs_reverse_dns(id, reverse_dns_entries)
Update reverse DNS (PTR) records for a QuickServer's IPs

Sets PTR records for one or more of the QuickServer's IPs. Path param: `id`. Body (form): `ips` — keyed by IP, value is the desired hostname (must be valid). Returns: `{ message: \"DNS Updated\", success: true }`. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with `getQsReverseDns` after calling, and use the support channel if changes don't propagate. Errors: 401 if unauthenticated. Siblings: `getQsReverseDns`, `postVpsReverseDns`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |
**reverse_dns_entries** | [**ReverseDnsEntries**](ReverseDnsEntries.md) |  | [required] |

### Return type

[**models::TextResponse**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_setup_vnc

> models::QueueResponse post_qs_setup_vnc(id)
Configure the source IP allowed to reach a QuickServer's VNC console

Sets the IP allowed to reach the VNC tunnel and queues a `setup_vnc` to apply it. Path param: `id`. Body (JSON or form): `vnc` (a valid IPv4 address — only this address can reach the console). Returns: `{ text, queueId }`. Async — applied within ~2 minutes. Errors: 401, 404 if not owned, 409 if status != `active`. Returns an inline `Invalid IP` message when `vnc` fails `validIp`. The VPS-style helper also runs after the DB update. Siblings: `getQsSetupVnc` (read), `postVpsSetupVnc`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_traffic_usage

> post_qs_traffic_usage(id)
Query QuickServer bandwidth usage via POST (filtered variant)

Functional duplicate of `getQsTrafficUsage` exposed under POST so clients can pass a filter body. Path param: `id` (integer). Body fields are accepted but the current handler ignores them and returns the full current-cycle dataset. Returns: same bandwidth-data object as `getQsTrafficUsage`. Errors: 401 if unauthenticated. No active-status or ownership gate. Siblings: `getQsTrafficUsage`, `postVpsTrafficUsage`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_qs_view_desktop

> post_qs_view_desktop(id)
Submit changes and re-fetch the QuickServer dashboard view payload

Same handler as `getQsViewDesktop` but accessible via POST so callers can pass body fields alongside re-fetching the view. Path param: `id`. Body fields are accepted by the underlying View handler. Returns: refreshed dashboard object — `serviceInfo`, `client_links`, etc. Errors: 401 if unauthenticated. For structured updates prefer the dedicated endpoints (`postQsChangeHostname`, `postQsReverseDns`, `postQsSetupVnc`, etc.) which return queue IDs. Siblings: `getQsViewDesktop`, `postVpsViewDesktop`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## post_quick_server_restore

> models::QueueResponse post_quick_server_restore(id, restore_request)
Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)

Overwrites the live disk with a backup. Path param: `id`. Body (form): `backup` (composite key `<type>:<service>:<name>` from `getQsBackups`), `password` (caller's account login password — required for non-admin to confirm). Validates backup exists, caller's password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues `snapshot_restore` for ZFS or `restore` for swift/minio; allow up to 10 minutes. Returns: `{ text, queueId }`. Errors: 401, 404 if not owned, 409 if status != `active`, errors for invalid password, missing backup, or insufficient disk space. Siblings: `getQsBackups`, `getQsBackup` (create), `postVpsRestore`.

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |
**restore_request** | [**RestoreRequest**](RestoreRequest.md) | QuickServer Restore request | [required] |

### Return type

[**models::QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## put_qs

> put_qs(qs_order_request)
Validate a QuickServer order without charging or provisioning

Dry-run the order payload before calling `addQs`. No invoice is created and no service is provisioned. Use to surface form errors, compute the price, and resolve the chosen `server`/`os`/`distro` against the master pool. Body (form): `server` (master ID), `password`, `os` (template), `comment`, `tos`. Returns the `validate_buy_qs` result with `continue` flag, normalized fields, `service_cost`, and `errors` array. Errors: 401 if unauthenticated; validation errors are returned in the body, not as 4xx. Siblings: `addQs` (commits the order), `getNewQs` (form metadata), `putVps` (VPS equivalent).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**qs_order_request** | [**QsOrderRequest**](QsOrderRequest.md) |  | [required] |

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## quickservers_cancel

> models::QuickserversCancel200Response quickservers_cancel(id)
Cancel a QuickServer service at the end of the current billing cycle

Schedules deprovisioning. The server keeps running until the current billing period ends, then is canceled and the recurring invoice stops. Path param: `id` (integer). Returns: `{ success: bool, text: string }`. Errors: 401 if unauthenticated, 404 if not owned by caller. Reversible only by support before the cycle closes — use `getQsInvoices` to check the next invoice date first. Siblings: `getQsInfo`, `VPSCancel` (VPS equivalent), `serversCancel` (dedicated equivalent).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **i32** | QuickServer ID number | [required] |

### Return type

[**models::QuickserversCancel200Response**](quickserversCancel_200_response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)


## update_qs_info

> models::SuccessTextResponse update_qs_info(id)
Update QuickServer order metadata or stored settings without OS impact

Mutates QuickServer-level settings (comment, stored notes) without affecting the running OS. Path param: `id`. Body fields are module-specific and processed by the shared `View::go` handler. Returns: `SuccessTextResponse`. Errors: 401 if unauthenticated, 404 if not owned by caller. For server-side actions use the dedicated endpoints — hostname via `postQsChangeHostname`, password via `postQsChangeRootPassword`, OS via `postQsReinstallOs`. Siblings: `getQsInfo` (read), `quickserversCancel` (delete).

### Parameters


Name | Type | Description  | Required | Notes
------------- | ------------- | ------------- | ------------- | -------------
**id** | **String** | QuickServer ID number. | [required] |

### Return type

[**models::SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

