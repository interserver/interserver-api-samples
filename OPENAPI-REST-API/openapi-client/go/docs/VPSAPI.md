# \VPSAPI

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddVps**](VPSAPI.md#AddVps) | **Post** /vps/order | Place a new VPS order, create the invoice, and queue provisioning
[**DeleteVpsBackup**](VPSAPI.md#DeleteVpsBackup) | **Delete** /vps/{id}/backups | Permanently delete a VPS backup file by name (irreversible)
[**DoVpsBlockSmtp**](VPSAPI.md#DoVpsBlockSmtp) | **Get** /vps/{id}/block_smtp | Block outbound SMTP (port 25) on the VPS to prevent spam/abuse
[**DoVpsDisableCd**](VPSAPI.md#DoVpsDisableCd) | **Get** /vps/{id}/disable_cd | Remove the virtual CD/DVD device entirely from the VPS configuration
[**DoVpsDisableQuota**](VPSAPI.md#DoVpsDisableQuota) | **Get** /vps/{id}/disable_quota | Disable per-user disk quota enforcement inside the VPS guest OS
[**DoVpsEjectCd**](VPSAPI.md#DoVpsEjectCd) | **Get** /vps/{id}/eject_cd | Eject the mounted ISO from the VPS virtual CD drive (keep the drive)
[**DoVpsEnableQuota**](VPSAPI.md#DoVpsEnableQuota) | **Get** /vps/{id}/enable_quota | Enable per-user disk quota enforcement inside the VPS guest OS
[**DoVpsRestart**](VPSAPI.md#DoVpsRestart) | **Get** /vps/{id}/restart | Reboot the VPS — preferred over stop+start for software changes
[**DoVpsStart**](VPSAPI.md#DoVpsStart) | **Get** /vps/{id}/start | Power on a stopped VPS instance
[**DoVpsStop**](VPSAPI.md#DoVpsStop) | **Get** /vps/{id}/stop | Power off a running VPS — billing continues until cancellation
[**DownloadVpsBackup**](VPSAPI.md#DownloadVpsBackup) | **Patch** /vps/{id}/backups | Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup
[**GetNewVps**](VPSAPI.md#GetNewVps) | **Get** /vps/order | Get the VPS order catalog — platforms, OS templates, locations, pricing
[**GetVpsBackup**](VPSAPI.md#GetVpsBackup) | **Get** /vps/{id}/backup | Trigger a manual on-demand snapshot/backup of the VPS
[**GetVpsBackups**](VPSAPI.md#GetVpsBackups) | **Get** /vps/{id}/backups | List existing backups for the VPS across Swift, MinIO, and ZFS
[**GetVpsBuyHdSpace**](VPSAPI.md#GetVpsBuyHdSpace) | **Get** /vps/{id}/buy_hd_space | Get current additional disk size and per-GB monthly cost for the VPS
[**GetVpsBuyIp**](VPSAPI.md#GetVpsBuyIp) | **Get** /vps/{id}/buy_ip | Read current additional IPs, cap, and per-IP monthly cost for the VPS
[**GetVpsChangeHostname**](VPSAPI.md#GetVpsChangeHostname) | **Get** /vps/{id}/change_hostname | Read the VPS&#39;s current hostname before changing it
[**GetVpsChangeRootPassword**](VPSAPI.md#GetVpsChangeRootPassword) | **Get** /vps/{id}/change_root_password | Pre-flight check before changing the VPS root password
[**GetVpsChangeTimezone**](VPSAPI.md#GetVpsChangeTimezone) | **Get** /vps/{id}/change_timezone | List IANA timezones supported by the VPS guest OS
[**GetVpsInfo**](VPSAPI.md#GetVpsInfo) | **Get** /vps/{id} | Get full details for one VPS — IPs, hostname, OS, slices, status, addons
[**GetVpsInsertCd**](VPSAPI.md#GetVpsInsertCd) | **Get** /vps/{id}/insert_cd | List ISO templates that can be mounted in the VPS virtual CD drive
[**GetVpsInvoices**](VPSAPI.md#GetVpsInvoices) | **Get** /vps/{id}/invoices | List all billing invoices associated with this specific VPS
[**GetVpsList**](VPSAPI.md#GetVpsList) | **Get** /vps | List all VPS services on the customer&#39;s account
[**GetVpsReinstallOs**](VPSAPI.md#GetVpsReinstallOs) | **Get** /vps/{id}/reinstall_os | List OS templates compatible with this VPS&#39;s hypervisor for reinstall
[**GetVpsResetPassword**](VPSAPI.md#GetVpsResetPassword) | **Get** /vps/{id}/reset_password | Pre-flight check before resetting the VPS root password to a random value
[**GetVpsReverseDns**](VPSAPI.md#GetVpsReverseDns) | **Get** /vps/{id}/reverse_dns | Read the current PTR (reverse-DNS) records for every IP on the VPS
[**GetVpsSetupVnc**](VPSAPI.md#GetVpsSetupVnc) | **Get** /vps/{id}/setup_vnc | Read current VNC console connection info for the VPS
[**GetVpsSlices**](VPSAPI.md#GetVpsSlices) | **Get** /vps/{id}/slices | Read current slice count, min/max range, and prorated per-slice upgrade cost
[**GetVpsTrafficUsage**](VPSAPI.md#GetVpsTrafficUsage) | **Get** /vps/{id}/traffic_usage | Read bandwidth traffic usage data for the VPS
[**GetVpsViewDesktop**](VPSAPI.md#GetVpsViewDesktop) | **Get** /vps/{id}/view_desktop | Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS
[**GetVpsWelcomeEmail**](VPSAPI.md#GetVpsWelcomeEmail) | **Get** /vps/{id}/welcome_email | Resend the welcome email containing VPS IP, hostname, and root credentials
[**PostVpsBuyHdSpace**](VPSAPI.md#PostVpsBuyHdSpace) | **Post** /vps/{id}/buy_hd_space | Buy or resize the VPS additional-disk addon and create a prorated invoice
[**PostVpsBuyIp**](VPSAPI.md#PostVpsBuyIp) | **Post** /vps/{id}/buy_ip | Purchase one additional IP for the VPS and create the invoice
[**PostVpsChangeHostname**](VPSAPI.md#PostVpsChangeHostname) | **Post** /vps/{id}/change_hostname | Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP
[**PostVpsChangeRootPassword**](VPSAPI.md#PostVpsChangeRootPassword) | **Post** /vps/{id}/change_root_password | Set a specific new root/Administrator password on the VPS
[**PostVpsChangeTimezone**](VPSAPI.md#PostVpsChangeTimezone) | **Post** /vps/{id}/change_timezone | Set the system timezone on the VPS guest OS
[**PostVpsChangeWebuzoPassword**](VPSAPI.md#PostVpsChangeWebuzoPassword) | **Post** /vps/{id}/change_webuzo_password | Rotate the Webuzo control panel admin password (re-auth required)
[**PostVpsInsertCd**](VPSAPI.md#PostVpsInsertCd) | **Post** /vps/{id}/insert_cd | Mount an ISO image in the VPS virtual CD drive from a URL
[**PostVpsReinstallOs**](VPSAPI.md#PostVpsReinstallOs) | **Post** /vps/{id}/reinstall_os | Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)
[**PostVpsResetPassword**](VPSAPI.md#PostVpsResetPassword) | **Post** /vps/{id}/reset_password | Reset the VPS root password to a server-generated random value
[**PostVpsRestore**](VPSAPI.md#PostVpsRestore) | **Post** /vps/{id}/restore | Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)
[**PostVpsReverseDns**](VPSAPI.md#PostVpsReverseDns) | **Post** /vps/{id}/reverse_dns | Bulk-update PTR (reverse-DNS) records for one or more VPS IPs
[**PostVpsSetupVnc**](VPSAPI.md#PostVpsSetupVnc) | **Post** /vps/{id}/setup_vnc | Provision or refresh the VNC console endpoint for the VPS
[**PostVpsSlices**](VPSAPI.md#PostVpsSlices) | **Post** /vps/{id}/slices | Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)
[**PostVpsTrafficUsage**](VPSAPI.md#PostVpsTrafficUsage) | **Post** /vps/{id}/traffic_usage | Search/filter VPS bandwidth usage with custom criteria (reserved)
[**PostVpsViewDesktop**](VPSAPI.md#PostVpsViewDesktop) | **Post** /vps/{id}/view_desktop | Refresh the remote-desktop session connection info after IP/hostname changes
[**PutVps**](VPSAPI.md#PutVps) | **Put** /vps/order | Validate a VPS order configuration and quote the cost — dry run, no charge
[**PutVpsBuyHdSpace**](VPSAPI.md#PutVpsBuyHdSpace) | **Put** /vps/{id}/buy_hd_space | Preview cost to set additional VPS disk to a target GB size — dry run
[**UpdateVpsInfo**](VPSAPI.md#UpdateVpsInfo) | **Post** /vps/{id} | Update editable settings on a VPS service record
[**VPSCancel**](VPSAPI.md#VPSCancel) | **Delete** /vps/{id} | Cancel a VPS service at the end of the current billing cycle



## AddVps

> ServiceOrderPostResponse AddVps(ctx).VpsOrderPostRequest(vpsOrderPostRequest).Execute()

Place a new VPS order, create the invoice, and queue provisioning



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	vpsOrderPostRequest := *openapiclient.NewVpsOrderPostRequest("OsDistro_example", int32(123), "VpsPlatform_example", int32(123), int32(123), "OsVersion_example", "Hostname_example", "Rootpass_example") // VpsOrderPostRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.AddVps(context.Background()).VpsOrderPostRequest(vpsOrderPostRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.AddVps``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddVps`: ServiceOrderPostResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.AddVps`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddVpsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vpsOrderPostRequest** | [**VpsOrderPostRequest**](VpsOrderPostRequest.md) |  | 

### Return type

[**ServiceOrderPostResponse**](ServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteVpsBackup

> SuccessTextResponse DeleteVpsBackup(ctx, id).File(file).All(all).Execute()

Permanently delete a VPS backup file by name (irreversible)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	file := "file_example" // string | The backup filename to delete.
	all := "all_example" // string | Set to `1` to list all backups across all services, not just the ones for the given VPS. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DeleteVpsBackup(context.Background(), id).File(file).All(all).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DeleteVpsBackup``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteVpsBackup`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DeleteVpsBackup`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteVpsBackupRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **file** | **string** | The backup filename to delete. | 
 **all** | **string** | Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given VPS. | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DoVpsBlockSmtp

> QueueResponse DoVpsBlockSmtp(ctx, id).Execute()

Block outbound SMTP (port 25) on the VPS to prevent spam/abuse



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DoVpsBlockSmtp(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DoVpsBlockSmtp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DoVpsBlockSmtp`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DoVpsBlockSmtp`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDoVpsBlockSmtpRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DoVpsDisableCd

> QueueResponse DoVpsDisableCd(ctx, id).Execute()

Remove the virtual CD/DVD device entirely from the VPS configuration



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DoVpsDisableCd(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DoVpsDisableCd``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DoVpsDisableCd`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DoVpsDisableCd`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDoVpsDisableCdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DoVpsDisableQuota

> QueueResponse DoVpsDisableQuota(ctx, id).Execute()

Disable per-user disk quota enforcement inside the VPS guest OS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DoVpsDisableQuota(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DoVpsDisableQuota``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DoVpsDisableQuota`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DoVpsDisableQuota`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDoVpsDisableQuotaRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DoVpsEjectCd

> QueueResponse DoVpsEjectCd(ctx, id).Execute()

Eject the mounted ISO from the VPS virtual CD drive (keep the drive)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DoVpsEjectCd(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DoVpsEjectCd``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DoVpsEjectCd`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DoVpsEjectCd`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDoVpsEjectCdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DoVpsEnableQuota

> QueueResponse DoVpsEnableQuota(ctx, id).Execute()

Enable per-user disk quota enforcement inside the VPS guest OS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DoVpsEnableQuota(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DoVpsEnableQuota``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DoVpsEnableQuota`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DoVpsEnableQuota`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDoVpsEnableQuotaRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DoVpsRestart

> QueueResponse DoVpsRestart(ctx, id).Execute()

Reboot the VPS — preferred over stop+start for software changes



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DoVpsRestart(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DoVpsRestart``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DoVpsRestart`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DoVpsRestart`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDoVpsRestartRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DoVpsStart

> QueueResponse DoVpsStart(ctx, id).Execute()

Power on a stopped VPS instance



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DoVpsStart(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DoVpsStart``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DoVpsStart`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DoVpsStart`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDoVpsStartRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DoVpsStop

> QueueResponse DoVpsStop(ctx, id).Execute()

Power off a running VPS — billing continues until cancellation



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DoVpsStop(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DoVpsStop``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DoVpsStop`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DoVpsStop`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDoVpsStopRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DownloadVpsBackup

> DownloadQsBackup200Response DownloadVpsBackup(ctx, id).DownloadQsBackupRequest(downloadQsBackupRequest).All(all).Execute()

Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	downloadQsBackupRequest := *openapiclient.NewDownloadQsBackupRequest("File_example") // DownloadQsBackupRequest | 
	all := "all_example" // string | Set to `1` to list all backups across all services, not just the ones for the given VPS. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.DownloadVpsBackup(context.Background(), id).DownloadQsBackupRequest(downloadQsBackupRequest).All(all).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.DownloadVpsBackup``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DownloadVpsBackup`: DownloadQsBackup200Response
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.DownloadVpsBackup`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiDownloadVpsBackupRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **downloadQsBackupRequest** | [**DownloadQsBackupRequest**](DownloadQsBackupRequest.md) |  | 
 **all** | **string** | Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given VPS. | 

### Return type

[**DownloadQsBackup200Response**](DownloadQsBackup200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetNewVps

> VpsOrder GetNewVps(ctx).Execute()

Get the VPS order catalog — platforms, OS templates, locations, pricing



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetNewVps(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetNewVps``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetNewVps`: VpsOrder
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetNewVps`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetNewVpsRequest struct via the builder pattern


### Return type

[**VpsOrder**](VpsOrder.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsBackup

> QueueResponse GetVpsBackup(ctx, id).Execute()

Trigger a manual on-demand snapshot/backup of the VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsBackup(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsBackup``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsBackup`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsBackup`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsBackupRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsBackups

> VpsBackupRows GetVpsBackups(ctx, id).All(all).Execute()

List existing backups for the VPS across Swift, MinIO, and ZFS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	all := "all_example" // string | Set to `1` to list all backups across all services, not just the ones for the given VPS. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsBackups(context.Background(), id).All(all).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsBackups``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsBackups`: VpsBackupRows
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsBackups`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsBackupsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **all** | **string** | Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given VPS. | 

### Return type

[**VpsBackupRows**](VpsBackupRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsBuyHdSpace

> GetVpsBuyHdSpace(ctx, id).Execute()

Get current additional disk size and per-GB monthly cost for the VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.GetVpsBuyHdSpace(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsBuyHdSpace``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsBuyHdSpaceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsBuyIp

> GetVpsBuyIp(ctx, id).Execute()

Read current additional IPs, cap, and per-IP monthly cost for the VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.GetVpsBuyIp(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsBuyIp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsBuyIpRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsChangeHostname

> GetVpsChangeHostname(ctx, id).Execute()

Read the VPS's current hostname before changing it



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.GetVpsChangeHostname(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsChangeHostname``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsChangeHostnameRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsChangeRootPassword

> GetVpsChangeRootPassword(ctx, id).Execute()

Pre-flight check before changing the VPS root password



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.GetVpsChangeRootPassword(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsChangeRootPassword``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsChangeRootPasswordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsChangeTimezone

> []string GetVpsChangeTimezone(ctx, id).Execute()

List IANA timezones supported by the VPS guest OS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsChangeTimezone(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsChangeTimezone``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsChangeTimezone`: []string
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsChangeTimezone`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsChangeTimezoneRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**[]string**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsInfo

> Vps GetVpsInfo(ctx, id).Execute()

Get full details for one VPS — IPs, hostname, OS, slices, status, addons



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsInfo(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsInfo`: Vps
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsInfo`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsInfoRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**Vps**](Vps.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsInsertCd

> GetVpsInsertCd(ctx, id).Execute()

List ISO templates that can be mounted in the VPS virtual CD drive



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.GetVpsInsertCd(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsInsertCd``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsInsertCdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsInvoices

> ChargeInvoiceRows GetVpsInvoices(ctx, id).Execute()

List all billing invoices associated with this specific VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsInvoices(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsInvoices``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsInvoices`: ChargeInvoiceRows
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsInvoices`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsInvoicesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ChargeInvoiceRows**](ChargeInvoiceRows.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsList

> []VpsRow GetVpsList(ctx).Execute()

List all VPS services on the customer's account



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsList(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsList`: []VpsRow
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsListRequest struct via the builder pattern


### Return type

[**[]VpsRow**](VpsRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsReinstallOs

> VpsTemplatesList GetVpsReinstallOs(ctx, id).Execute()

List OS templates compatible with this VPS's hypervisor for reinstall



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsReinstallOs(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsReinstallOs``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsReinstallOs`: VpsTemplatesList
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsReinstallOs`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsReinstallOsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**VpsTemplatesList**](VpsTemplatesList.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsResetPassword

> GetVpsResetPassword(ctx, id).Execute()

Pre-flight check before resetting the VPS root password to a random value



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.GetVpsResetPassword(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsResetPassword``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsResetPasswordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsReverseDns

> ReverseDnsEntries GetVpsReverseDns(ctx, id).Execute()

Read the current PTR (reverse-DNS) records for every IP on the VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsReverseDns(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsReverseDns``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsReverseDns`: ReverseDnsEntries
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsReverseDns`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsReverseDnsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ReverseDnsEntries**](ReverseDnsEntries.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsSetupVnc

> GetVpsSetupVnc(ctx, id).Execute()

Read current VNC console connection info for the VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.GetVpsSetupVnc(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsSetupVnc``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsSetupVncRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsSlices

> GetVpsSlices(ctx, id).Execute()

Read current slice count, min/max range, and prorated per-slice upgrade cost



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.GetVpsSlices(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsSlices``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsSlicesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsTrafficUsage

> VpsTrafficResponse GetVpsTrafficUsage(ctx, id).Execute()

Read bandwidth traffic usage data for the VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsTrafficUsage(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsTrafficUsage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsTrafficUsage`: VpsTrafficResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsTrafficUsage`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsTrafficUsageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**VpsTrafficResponse**](VpsTrafficResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsViewDesktop

> GetVpsViewDesktop(ctx, id).Execute()

Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.GetVpsViewDesktop(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsViewDesktop``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsViewDesktopRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetVpsWelcomeEmail

> SuccessTextResponse GetVpsWelcomeEmail(ctx, id).Execute()

Resend the welcome email containing VPS IP, hostname, and root credentials



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := "4813" // string | VPS ID

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.GetVpsWelcomeEmail(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.GetVpsWelcomeEmail``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetVpsWelcomeEmail`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.GetVpsWelcomeEmail`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | VPS ID | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetVpsWelcomeEmailRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsBuyHdSpace

> PostVpsBuyHdSpace(ctx, id).Execute()

Buy or resize the VPS additional-disk addon and create a prorated invoice



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.PostVpsBuyHdSpace(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsBuyHdSpace``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsBuyHdSpaceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsBuyIp

> PostVpsBuyIp(ctx, id).Execute()

Purchase one additional IP for the VPS and create the invoice



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.PostVpsBuyIp(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsBuyIp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsBuyIpRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsChangeHostname

> QueueResponse PostVpsChangeHostname(ctx, id).Hostname(hostname).Execute()

Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	hostname := "hostname_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsChangeHostname(context.Background(), id).Hostname(hostname).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsChangeHostname``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsChangeHostname`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsChangeHostname`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsChangeHostnameRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **hostname** | **string** |  | 

### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsChangeRootPassword

> QueueResponse PostVpsChangeRootPassword(ctx, id).Password(password).Execute()

Set a specific new root/Administrator password on the VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	password := "password_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsChangeRootPassword(context.Background(), id).Password(password).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsChangeRootPassword``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsChangeRootPassword`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsChangeRootPassword`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsChangeRootPasswordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **password** | **string** |  | 

### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsChangeTimezone

> QueueResponse PostVpsChangeTimezone(ctx, id).Timezone(timezone).Execute()

Set the system timezone on the VPS guest OS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	timezone := "timezone_example" // string | The time zone

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsChangeTimezone(context.Background(), id).Timezone(timezone).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsChangeTimezone``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsChangeTimezone`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsChangeTimezone`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsChangeTimezoneRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **timezone** | **string** | The time zone | 

### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsChangeWebuzoPassword

> QueueResponse PostVpsChangeWebuzoPassword(ctx, id).Password(password).Execute()

Rotate the Webuzo control panel admin password (re-auth required)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	password := "password_example" // string | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsChangeWebuzoPassword(context.Background(), id).Password(password).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsChangeWebuzoPassword``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsChangeWebuzoPassword`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsChangeWebuzoPassword`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsChangeWebuzoPasswordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **password** | **string** |  | 

### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsInsertCd

> QueueResponse PostVpsInsertCd(ctx, id).Url(url).Execute()

Mount an ISO image in the VPS virtual CD drive from a URL



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	url := "url_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsInsertCd(context.Background(), id).Url(url).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsInsertCd``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsInsertCd`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsInsertCd`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsInsertCdRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **url** | **string** |  | 

### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsReinstallOs

> QueueResponse PostVpsReinstallOs(ctx, id).Template(template).LocalPassword(localPassword).Password(password).Execute()

Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	template := "template_example" // string | OS Template Filename
	localPassword := "localPassword_example" // string | Password for this account.
	password := "password_example" // string | Password for Root / Administrator Account. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsReinstallOs(context.Background(), id).Template(template).LocalPassword(localPassword).Password(password).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsReinstallOs``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsReinstallOs`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsReinstallOs`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsReinstallOsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **template** | **string** | OS Template Filename | 
 **localPassword** | **string** | Password for this account. | 
 **password** | **string** | Password for Root / Administrator Account. | 

### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsResetPassword

> QueueResponse PostVpsResetPassword(ctx, id).Execute()

Reset the VPS root password to a server-generated random value



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsResetPassword(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsResetPassword``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsResetPassword`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsResetPassword`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsResetPasswordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsRestore

> QueueResponse PostVpsRestore(ctx, id).RestoreRequest(restoreRequest).Execute()

Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	restoreRequest := *openapiclient.NewRestoreRequest() // RestoreRequest | VPS Restore request

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsRestore(context.Background(), id).RestoreRequest(restoreRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsRestore``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsRestore`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsRestore`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsRestoreRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **restoreRequest** | [**RestoreRequest**](RestoreRequest.md) | VPS Restore request | 

### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsReverseDns

> TextResponse PostVpsReverseDns(ctx, id).ReverseDnsEntries(reverseDnsEntries).Execute()

Bulk-update PTR (reverse-DNS) records for one or more VPS IPs



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number
	reverseDnsEntries := *openapiclient.NewReverseDnsEntries() // ReverseDnsEntries | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsReverseDns(context.Background(), id).ReverseDnsEntries(reverseDnsEntries).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsReverseDns``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsReverseDns`: TextResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsReverseDns`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsReverseDnsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **reverseDnsEntries** | [**ReverseDnsEntries**](ReverseDnsEntries.md) |  | 

### Return type

[**TextResponse**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsSetupVnc

> QueueResponse PostVpsSetupVnc(ctx, id).Execute()

Provision or refresh the VNC console endpoint for the VPS



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PostVpsSetupVnc(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsSetupVnc``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostVpsSetupVnc`: QueueResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PostVpsSetupVnc`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsSetupVncRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**QueueResponse**](QueueResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsSlices

> PostVpsSlices(ctx, id).Execute()

Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.PostVpsSlices(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsSlices``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsSlicesRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsTrafficUsage

> PostVpsTrafficUsage(ctx, id).Execute()

Search/filter VPS bandwidth usage with custom criteria (reserved)



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.PostVpsTrafficUsage(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsTrafficUsage``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsTrafficUsageRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostVpsViewDesktop

> PostVpsViewDesktop(ctx, id).Execute()

Refresh the remote-desktop session connection info after IP/hostname changes



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.PostVpsViewDesktop(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PostVpsViewDesktop``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostVpsViewDesktopRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutVps

> VpsOrderPutResponse PutVps(ctx).VpsOrderPutRequest(vpsOrderPutRequest).Execute()

Validate a VPS order configuration and quote the cost — dry run, no charge



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	vpsOrderPutRequest := *openapiclient.NewVpsOrderPutRequest("OsDistro_example", int32(123), "VpsPlatform_example", int32(123), int32(123), "OsVersion_example", "Hostname_example", "Rootpass_example") // VpsOrderPutRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.PutVps(context.Background()).VpsOrderPutRequest(vpsOrderPutRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PutVps``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutVps`: VpsOrderPutResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.PutVps`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPutVpsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vpsOrderPutRequest** | [**VpsOrderPutRequest**](VpsOrderPutRequest.md) |  | 

### Return type

[**VpsOrderPutResponse**](VpsOrderPutResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutVpsBuyHdSpace

> PutVpsBuyHdSpace(ctx, id).Execute()

Preview cost to set additional VPS disk to a target GB size — dry run



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.VPSAPI.PutVpsBuyHdSpace(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.PutVpsBuyHdSpace``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutVpsBuyHdSpaceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateVpsInfo

> SuccessTextResponse UpdateVpsInfo(ctx, id).Execute()

Update editable settings on a VPS service record



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := "id_example" // string | VPS ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.UpdateVpsInfo(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.UpdateVpsInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateVpsInfo`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.UpdateVpsInfo`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | VPS ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateVpsInfoRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## VPSCancel

> VPSCancel200Response VPSCancel(ctx, id).Execute()

Cancel a VPS service at the end of the current billing cycle



### Example

```go
package main

import (
	"context"
	"fmt"
	"os"
	openapiclient "github.com/GIT_USER_ID/GIT_REPO_ID"
)

func main() {
	id := int32(56) // int32 | VPS ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.VPSAPI.VPSCancel(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `VPSAPI.VPSCancel``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `VPSCancel`: VPSCancel200Response
	fmt.Fprintf(os.Stdout, "Response from `VPSAPI.VPSCancel`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | VPS ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiVPSCancelRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**VPSCancel200Response**](VPSCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

