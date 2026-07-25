# \FloatingIPsAPI

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddFloatingIp**](FloatingIPsAPI.md#AddFloatingIp) | **Post** /floating_ips/order | Place a real Floating IP order, create billing records, and provision the service
[**FloatingIpsCancel**](FloatingIPsAPI.md#FloatingIpsCancel) | **Delete** /floating_ips/{id} | Cancel a Floating IP service and release the IP — destructive, billing stops
[**GetFloatingIpInfo**](FloatingIPsAPI.md#GetFloatingIpInfo) | **Get** /floating_ips/{id} | Fetch full details for one Floating IP service, including current target IP
[**GetFloatingIpInvoices**](FloatingIPsAPI.md#GetFloatingIpInvoices) | **Get** /floating_ips/{id}/invoices | List all billing invoices charged against a specific Floating IP service
[**GetFloatingIpsList**](FloatingIPsAPI.md#GetFloatingIpsList) | **Get** /floating_ips | List all Floating IP services on the authenticated customer&#39;s account
[**GetFloatingIpsWelcomeEmail**](FloatingIPsAPI.md#GetFloatingIpsWelcomeEmail) | **Get** /floating_ips/{id}/welcome_email | Resend the Floating IP welcome / setup email to the account contact
[**GetNewFloatingIp**](FloatingIPsAPI.md#GetNewFloatingIp) | **Get** /floating_ips/order | Get pricing and service-type options for ordering a new Floating IP
[**PostFloatingIpsChangeIp**](FloatingIPsAPI.md#PostFloatingIpsChangeIp) | **Post** /floating_ips/{id}/change_ip | Re-point a Floating IP to a different target IP on one of the customer&#39;s services
[**PutFloatingIps**](FloatingIPsAPI.md#PutFloatingIps) | **Put** /floating_ips/order | Validate a Floating IP order and price it without charging the customer
[**UpdateFloatingIpInfo**](FloatingIPsAPI.md#UpdateFloatingIpInfo) | **Post** /floating_ips/{id} | Update a Floating IP service&#39;s editable settings (label / metadata)



## AddFloatingIp

> ServiceOrderPostResponse AddFloatingIp(ctx).FloatingIpOrderRequest(floatingIpOrderRequest).Execute()

Place a real Floating IP order, create billing records, and provision the service



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
	floatingIpOrderRequest := *openapiclient.NewFloatingIpOrderRequest(int32(123)) // FloatingIpOrderRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FloatingIPsAPI.AddFloatingIp(context.Background()).FloatingIpOrderRequest(floatingIpOrderRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.AddFloatingIp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddFloatingIp`: ServiceOrderPostResponse
	fmt.Fprintf(os.Stdout, "Response from `FloatingIPsAPI.AddFloatingIp`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddFloatingIpRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **floatingIpOrderRequest** | [**FloatingIpOrderRequest**](FloatingIpOrderRequest.md) |  | 

### Return type

[**ServiceOrderPostResponse**](ServiceOrderPostResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## FloatingIpsCancel

> FloatingIpsCancel200Response FloatingIpsCancel(ctx, id).Execute()

Cancel a Floating IP service and release the IP — destructive, billing stops



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
	id := int32(56) // int32 | The Floating IP service ID. Use the ID from `GET /floating_ips`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FloatingIPsAPI.FloatingIpsCancel(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.FloatingIpsCancel``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `FloatingIpsCancel`: FloatingIpsCancel200Response
	fmt.Fprintf(os.Stdout, "Response from `FloatingIPsAPI.FloatingIpsCancel`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiFloatingIpsCancelRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**FloatingIpsCancel200Response**](FloatingIpsCancel200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetFloatingIpInfo

> map[string]interface{} GetFloatingIpInfo(ctx, id).Execute()

Fetch full details for one Floating IP service, including current target IP



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
	id := int32(56) // int32 | The Floating IP service ID. Use the ID from `GET /floating_ips`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FloatingIPsAPI.GetFloatingIpInfo(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.GetFloatingIpInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetFloatingIpInfo`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `FloatingIPsAPI.GetFloatingIpInfo`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetFloatingIpInfoRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

**map[string]interface{}**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetFloatingIpInvoices

> ChargeInvoiceRows GetFloatingIpInvoices(ctx, id).Execute()

List all billing invoices charged against a specific Floating IP service



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
	id := int32(56) // int32 | The Floating IP service ID. Use the ID from `GET /floating_ips`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FloatingIPsAPI.GetFloatingIpInvoices(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.GetFloatingIpInvoices``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetFloatingIpInvoices`: ChargeInvoiceRows
	fmt.Fprintf(os.Stdout, "Response from `FloatingIPsAPI.GetFloatingIpInvoices`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetFloatingIpInvoicesRequest struct via the builder pattern


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


## GetFloatingIpsList

> []map[string]interface{} GetFloatingIpsList(ctx).Execute()

List all Floating IP services on the authenticated customer's account



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
	resp, r, err := apiClient.FloatingIPsAPI.GetFloatingIpsList(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.GetFloatingIpsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetFloatingIpsList`: []map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `FloatingIPsAPI.GetFloatingIpsList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetFloatingIpsListRequest struct via the builder pattern


### Return type

**[]map[string]interface{}**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetFloatingIpsWelcomeEmail

> SuccessTextResponse GetFloatingIpsWelcomeEmail(ctx, id).Execute()

Resend the Floating IP welcome / setup email to the account contact



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
	id := int32(56) // int32 | The Floating IP service ID. Use the ID from `GET /floating_ips`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FloatingIPsAPI.GetFloatingIpsWelcomeEmail(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.GetFloatingIpsWelcomeEmail``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetFloatingIpsWelcomeEmail`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `FloatingIPsAPI.GetFloatingIpsWelcomeEmail`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetFloatingIpsWelcomeEmailRequest struct via the builder pattern


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


## GetNewFloatingIp

> map[string]interface{} GetNewFloatingIp(ctx).Execute()

Get pricing and service-type options for ordering a new Floating IP



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
	resp, r, err := apiClient.FloatingIPsAPI.GetNewFloatingIp(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.GetNewFloatingIp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetNewFloatingIp`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `FloatingIPsAPI.GetNewFloatingIp`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetNewFloatingIpRequest struct via the builder pattern


### Return type

**map[string]interface{}**

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostFloatingIpsChangeIp

> SuccessTextResponse PostFloatingIpsChangeIp(ctx, id).Ip(ip).Execute()

Re-point a Floating IP to a different target IP on one of the customer's services



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
	id := int32(56) // int32 | The Floating IP service ID. Use the ID from `GET /floating_ips`.
	ip := "ip_example" // string | IP Address

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FloatingIPsAPI.PostFloatingIpsChangeIp(context.Background(), id).Ip(ip).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.PostFloatingIpsChangeIp``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostFloatingIpsChangeIp`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `FloatingIPsAPI.PostFloatingIpsChangeIp`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostFloatingIpsChangeIpRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **ip** | **string** | IP Address | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutFloatingIps

> PutFloatingIps(ctx).FloatingIpOrderRequest(floatingIpOrderRequest).Execute()

Validate a Floating IP order and price it without charging the customer



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
	floatingIpOrderRequest := *openapiclient.NewFloatingIpOrderRequest(int32(123)) // FloatingIpOrderRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.FloatingIPsAPI.PutFloatingIps(context.Background()).FloatingIpOrderRequest(floatingIpOrderRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.PutFloatingIps``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiPutFloatingIpsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **floatingIpOrderRequest** | [**FloatingIpOrderRequest**](FloatingIpOrderRequest.md) |  | 

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateFloatingIpInfo

> SuccessTextResponse UpdateFloatingIpInfo(ctx, id).Execute()

Update a Floating IP service's editable settings (label / metadata)



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
	id := "id_example" // string | The Floating IP service ID. Use the ID from `GET /floating_ips`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.FloatingIPsAPI.UpdateFloatingIpInfo(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `FloatingIPsAPI.UpdateFloatingIpInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateFloatingIpInfo`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `FloatingIPsAPI.UpdateFloatingIpInfo`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateFloatingIpInfoRequest struct via the builder pattern


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

