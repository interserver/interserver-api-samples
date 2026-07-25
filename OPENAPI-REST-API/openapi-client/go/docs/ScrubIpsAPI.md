# \ScrubIpsAPI

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**CancelScrubIp**](ScrubIpsAPI.md#CancelScrubIp) | **Delete** /scrub_ips/{id} | Cancel a Scrub IP service and stop its recurring DDoS billing
[**CreateFilter**](ScrubIpsAPI.md#CreateFilter) | **Post** /scrub_ips/{id}/create_filter | Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
[**CreateGeoRule**](ScrubIpsAPI.md#CreateGeoRule) | **Post** /scrub_ips/{id}/create_geo_rule | Add a geographic firewall rule (block/allow by country code or ASN)
[**CreateRule**](ScrubIpsAPI.md#CreateRule) | **Post** /scrub_ips/{id}/create_rule | Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
[**DeleteFilter**](ScrubIpsAPI.md#DeleteFilter) | **Post** /scrub_ips/{id}/delete_filter | Remove a scrubbing filter by matching filter_type and port
[**DisableScrub**](ScrubIpsAPI.md#DisableScrub) | **Get** /scrub_ips/{id}/disable | Disable DDoS scrubbing and remove the BGP announcement on the IP
[**EnableScrub**](ScrubIpsAPI.md#EnableScrub) | **Get** /scrub_ips/{id}/enable | Enable DDoS scrubbing (BGP announcement) on the service&#39;s protected IP
[**GetOrderDetail**](ScrubIpsAPI.md#GetOrderDetail) | **Get** /scrub_ips/order | Get plans, pricing, and eligible IPs for a new Scrub IP order
[**GetScrubIpDetails**](ScrubIpsAPI.md#GetScrubIpDetails) | **Get** /scrub_ips/{id} | Get full Scrub IP service detail (rules + geo + filters)
[**GetScrubIpFilterTypes**](ScrubIpsAPI.md#GetScrubIpFilterTypes) | **Get** /scrub_ips/filter_types | List enabled traffic filter profiles available for createFilter
[**GetScrubIpInvoices**](ScrubIpsAPI.md#GetScrubIpInvoices) | **Get** /scrub_ips/{id}/invoices | List recurring and one-time invoices billed for this Scrub IP service
[**GetScrubIpLogs**](ScrubIpsAPI.md#GetScrubIpLogs) | **Get** /scrub_ips/{id}/logs | Get last 50000 packet/event log entries for the protected IP
[**GetScrubIpsList**](ScrubIpsAPI.md#GetScrubIpsList) | **Get** /scrub_ips | List all Scrub IP DDoS protection services on the authenticated account
[**PlaceScrubOrder**](ScrubIpsAPI.md#PlaceScrubOrder) | **Post** /scrub_ips/order | Place a new Scrub IP DDoS protection order and generate an invoice
[**PutScrubIps**](ScrubIpsAPI.md#PutScrubIps) | **Put** /scrub_ips/order | Validate a Scrub IP order and return effective pricing without billing
[**ScrubIpsDeleteGeoRule**](ScrubIpsAPI.md#ScrubIpsDeleteGeoRule) | **Post** /scrub_ips/{id}/delete_geo_rule | Delete a geo firewall rule by rule_id from getScrubIpDetails
[**ScrubIpsDeleteRule**](ScrubIpsAPI.md#ScrubIpsDeleteRule) | **Post** /scrub_ips/{id}/delete_rule | Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails



## CancelScrubIp

> CancelScrubIp200Response CancelScrubIp(ctx, id).Execute()

Cancel a Scrub IP service and stop its recurring DDoS billing



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
	id := int32(56) // int32 | ScrubIp ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.CancelScrubIp(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.CancelScrubIp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CancelScrubIp`: CancelScrubIp200Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.CancelScrubIp`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiCancelScrubIpRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CancelScrubIp200Response**](CancelScrubIp200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateFilter

> CreateFilter201Response CreateFilter(ctx, id).CreateFilter(createFilter).Execute()

Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port



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
	id := int32(56) // int32 | ScrubIp ID number
	createFilter := *openapiclient.NewCreateFilter("cs2_udp", int32(8080)) // CreateFilter | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.CreateFilter(context.Background(), id).CreateFilter(createFilter).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.CreateFilter``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateFilter`: CreateFilter201Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.CreateFilter`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateFilterRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **createFilter** | [**CreateFilter**](CreateFilter.md) |  | 

### Return type

[**CreateFilter201Response**](CreateFilter201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateGeoRule

> CreateRule201Response CreateGeoRule(ctx, id).CreateGeoFirewallRule(createGeoFirewallRule).Execute()

Add a geographic firewall rule (block/allow by country code or ASN)



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
	id := int32(56) // int32 | ScrubIp ID number
	createGeoFirewallRule := *openapiclient.NewCreateGeoFirewallRule(int32(1)) // CreateGeoFirewallRule | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.CreateGeoRule(context.Background(), id).CreateGeoFirewallRule(createGeoFirewallRule).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.CreateGeoRule``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateGeoRule`: CreateRule201Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.CreateGeoRule`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateGeoRuleRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **createGeoFirewallRule** | [**CreateGeoFirewallRule**](CreateGeoFirewallRule.md) |  | 

### Return type

[**CreateRule201Response**](CreateRule201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CreateRule

> CreateRule201Response CreateRule(ctx, id).CreateFirewallRule(createFirewallRule).Execute()

Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)



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
	id := int32(56) // int32 | ScrubIp ID number
	createFirewallRule := *openapiclient.NewCreateFirewallRule(int32(1), int32(1)) // CreateFirewallRule | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.CreateRule(context.Background(), id).CreateFirewallRule(createFirewallRule).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.CreateRule``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CreateRule`: CreateRule201Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.CreateRule`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiCreateRuleRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **createFirewallRule** | [**CreateFirewallRule**](CreateFirewallRule.md) |  | 

### Return type

[**CreateRule201Response**](CreateRule201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteFilter

> DeleteFilter200Response DeleteFilter(ctx, id).CreateFilter(createFilter).Execute()

Remove a scrubbing filter by matching filter_type and port



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
	id := int32(56) // int32 | ScrubIp ID number
	createFilter := *openapiclient.NewCreateFilter("cs2_udp", int32(8080)) // CreateFilter | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.DeleteFilter(context.Background(), id).CreateFilter(createFilter).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.DeleteFilter``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteFilter`: DeleteFilter200Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.DeleteFilter`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteFilterRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **createFilter** | [**CreateFilter**](CreateFilter.md) |  | 

### Return type

[**DeleteFilter200Response**](DeleteFilter200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DisableScrub

> DisableScrub200Response DisableScrub(ctx, id).Execute()

Disable DDoS scrubbing and remove the BGP announcement on the IP



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
	id := int32(56) // int32 | ScrubIp ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.DisableScrub(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.DisableScrub``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DisableScrub`: DisableScrub200Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.DisableScrub`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiDisableScrubRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**DisableScrub200Response**](DisableScrub200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## EnableScrub

> EnableScrub200Response EnableScrub(ctx, id).Execute()

Enable DDoS scrubbing (BGP announcement) on the service's protected IP



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
	id := int32(56) // int32 | ScrubIp ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.EnableScrub(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.EnableScrub``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `EnableScrub`: EnableScrub200Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.EnableScrub`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiEnableScrubRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**EnableScrub200Response**](EnableScrub200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetOrderDetail

> GetOrderDetail200Response GetOrderDetail(ctx).Execute()

Get plans, pricing, and eligible IPs for a new Scrub IP order



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
	resp, r, err := apiClient.ScrubIpsAPI.GetOrderDetail(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.GetOrderDetail``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetOrderDetail`: GetOrderDetail200Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.GetOrderDetail`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetOrderDetailRequest struct via the builder pattern


### Return type

[**GetOrderDetail200Response**](GetOrderDetail200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetScrubIpDetails

> GetScrubIpDetails200Response GetScrubIpDetails(ctx, id).Execute()

Get full Scrub IP service detail (rules + geo + filters)



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
	id := int32(56) // int32 | ScrubIp ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.GetScrubIpDetails(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.GetScrubIpDetails``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetScrubIpDetails`: GetScrubIpDetails200Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.GetScrubIpDetails`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetScrubIpDetailsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**GetScrubIpDetails200Response**](GetScrubIpDetails200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetScrubIpFilterTypes

> ScrubIpFilterTypes GetScrubIpFilterTypes(ctx).Execute()

List enabled traffic filter profiles available for createFilter



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
	resp, r, err := apiClient.ScrubIpsAPI.GetScrubIpFilterTypes(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.GetScrubIpFilterTypes``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetScrubIpFilterTypes`: ScrubIpFilterTypes
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.GetScrubIpFilterTypes`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetScrubIpFilterTypesRequest struct via the builder pattern


### Return type

[**ScrubIpFilterTypes**](ScrubIpFilterTypes.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetScrubIpInvoices

> ChargeInvoiceRows GetScrubIpInvoices(ctx, id).Execute()

List recurring and one-time invoices billed for this Scrub IP service



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
	id := int32(56) // int32 | ScrubIp ID number

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.GetScrubIpInvoices(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.GetScrubIpInvoices``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetScrubIpInvoices`: ChargeInvoiceRows
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.GetScrubIpInvoices`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetScrubIpInvoicesRequest struct via the builder pattern


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


## GetScrubIpLogs

> []ScrubIpsLogRowSchema GetScrubIpLogs(ctx, id).Execute()

Get last 50000 packet/event log entries for the protected IP



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
	id := "413232  " // string | Scrub Order ID

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.GetScrubIpLogs(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.GetScrubIpLogs``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetScrubIpLogs`: []ScrubIpsLogRowSchema
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.GetScrubIpLogs`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Scrub Order ID | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetScrubIpLogsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]ScrubIpsLogRowSchema**](ScrubIpsLogRowSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetScrubIpsList

> []ScrubIpsRowSchema GetScrubIpsList(ctx).Execute()

List all Scrub IP DDoS protection services on the authenticated account



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
	resp, r, err := apiClient.ScrubIpsAPI.GetScrubIpsList(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.GetScrubIpsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetScrubIpsList`: []ScrubIpsRowSchema
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.GetScrubIpsList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetScrubIpsListRequest struct via the builder pattern


### Return type

[**[]ScrubIpsRowSchema**](ScrubIpsRowSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PlaceScrubOrder

> PlaceScrubOrder201Response PlaceScrubOrder(ctx).ScrubIpPlaceOrder(scrubIpPlaceOrder).Execute()

Place a new Scrub IP DDoS protection order and generate an invoice



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
	scrubIpPlaceOrder := *openapiclient.NewScrubIpPlaceOrder(int32(102), "1.2.3.4") // ScrubIpPlaceOrder | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.PlaceScrubOrder(context.Background()).ScrubIpPlaceOrder(scrubIpPlaceOrder).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.PlaceScrubOrder``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PlaceScrubOrder`: PlaceScrubOrder201Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.PlaceScrubOrder`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPlaceScrubOrderRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scrubIpPlaceOrder** | [**ScrubIpPlaceOrder**](ScrubIpPlaceOrder.md) |  | 

### Return type

[**PlaceScrubOrder201Response**](PlaceScrubOrder201Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutScrubIps

> PutScrubIps200Response PutScrubIps(ctx).ScrubIpPlaceOrder(scrubIpPlaceOrder).Execute()

Validate a Scrub IP order and return effective pricing without billing



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
	scrubIpPlaceOrder := *openapiclient.NewScrubIpPlaceOrder(int32(102), "1.2.3.4") // ScrubIpPlaceOrder | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.PutScrubIps(context.Background()).ScrubIpPlaceOrder(scrubIpPlaceOrder).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.PutScrubIps``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutScrubIps`: PutScrubIps200Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.PutScrubIps`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPutScrubIpsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **scrubIpPlaceOrder** | [**ScrubIpPlaceOrder**](ScrubIpPlaceOrder.md) |  | 

### Return type

[**PutScrubIps200Response**](PutScrubIps200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScrubIpsDeleteGeoRule

> ScrubIpsDeleteRule200Response ScrubIpsDeleteGeoRule(ctx, id).DeleteGeoFirewallRule(deleteGeoFirewallRule).Execute()

Delete a geo firewall rule by rule_id from getScrubIpDetails



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
	id := int32(56) // int32 | ScrubIp ID number
	deleteGeoFirewallRule := *openapiclient.NewDeleteGeoFirewallRule(int32(2045)) // DeleteGeoFirewallRule | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.ScrubIpsDeleteGeoRule(context.Background(), id).DeleteGeoFirewallRule(deleteGeoFirewallRule).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.ScrubIpsDeleteGeoRule``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScrubIpsDeleteGeoRule`: ScrubIpsDeleteRule200Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.ScrubIpsDeleteGeoRule`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiScrubIpsDeleteGeoRuleRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **deleteGeoFirewallRule** | [**DeleteGeoFirewallRule**](DeleteGeoFirewallRule.md) |  | 

### Return type

[**ScrubIpsDeleteRule200Response**](ScrubIpsDeleteRule200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ScrubIpsDeleteRule

> ScrubIpsDeleteRule200Response ScrubIpsDeleteRule(ctx, id).DeleteFirewallRule(deleteFirewallRule).Execute()

Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails



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
	id := int32(56) // int32 | ScrubIp ID number
	deleteFirewallRule := *openapiclient.NewDeleteFirewallRule(int32(2045)) // DeleteFirewallRule | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.ScrubIpsAPI.ScrubIpsDeleteRule(context.Background(), id).DeleteFirewallRule(deleteFirewallRule).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `ScrubIpsAPI.ScrubIpsDeleteRule``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ScrubIpsDeleteRule`: ScrubIpsDeleteRule200Response
	fmt.Fprintf(os.Stdout, "Response from `ScrubIpsAPI.ScrubIpsDeleteRule`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | ScrubIp ID number | 

### Other Parameters

Other parameters are passed through a pointer to a apiScrubIpsDeleteRuleRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **deleteFirewallRule** | [**DeleteFirewallRule**](DeleteFirewallRule.md) |  | 

### Return type

[**ScrubIpsDeleteRule200Response**](ScrubIpsDeleteRule200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

