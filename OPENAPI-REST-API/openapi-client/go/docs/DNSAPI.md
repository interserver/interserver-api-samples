# \DNSAPI

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddDnsDomain**](DNSAPI.md#AddDnsDomain) | **Post** /dns | Create a new authoritative DNS zone seeded with apex A + NS + SOA records
[**AddDnsRecord**](DNSAPI.md#AddDnsRecord) | **Post** /dns/{id} | Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
[**DeleteDnsDomain**](DNSAPI.md#DeleteDnsDomain) | **Delete** /dns/{id} | Permanently delete a DNS zone and every record it contains
[**DeleteDnsRecord**](DNSAPI.md#DeleteDnsRecord) | **Delete** /dns/{domainId}/{recordId} | Permanently delete one DNS record from a zone — zone itself is preserved
[**GetDnsDomain**](DNSAPI.md#GetDnsDomain) | **Get** /dns/{id} | List every DNS record in one zone with the IDs needed to edit or delete them
[**GetDnsList**](DNSAPI.md#GetDnsList) | **Get** /dns | List DNS zones hosted on the account with each zone&#39;s apex A-record IP
[**UpdateDnsRecord**](DNSAPI.md#UpdateDnsRecord) | **Post** /dns/{domainId}/{recordId} | Replace values on an existing DNS record (name, type, content, ttl, priority)



## AddDnsDomain

> SuccessTextResponse AddDnsDomain(ctx).Domain(domain).Ip(ip).Execute()

Create a new authoritative DNS zone seeded with apex A + NS + SOA records



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
	domain := "domain_example" // string | The domain name.
	ip := "ip_example" // string | IP Address to point the domain to.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DNSAPI.AddDnsDomain(context.Background()).Domain(domain).Ip(ip).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DNSAPI.AddDnsDomain``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddDnsDomain`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `DNSAPI.AddDnsDomain`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddDnsDomainRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **domain** | **string** | The domain name. | 
 **ip** | **string** | IP Address to point the domain to. | 

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


## AddDnsRecord

> AddDnsRecord(ctx, id).Name(name).Type_(type_).Content(content).Ttl(ttl).Prio(prio).Execute()

Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone



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
	id := "472" // string | The DNS Domain ID.
	name := "name_example" // string | Name part of record
	type_ := openapiclient.DnsRecordType("A") // DnsRecordType | 
	content := "content_example" // string | Content of record
	ttl := int32(56) // int32 | Time-to-live (optional) (default to 86400)
	prio := int32(56) // int32 | Priority (optional) (default to 0)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.DNSAPI.AddDnsRecord(context.Background(), id).Name(name).Type_(type_).Content(content).Ttl(ttl).Prio(prio).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DNSAPI.AddDnsRecord``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The DNS Domain ID. | 

### Other Parameters

Other parameters are passed through a pointer to a apiAddDnsRecordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **name** | **string** | Name part of record | 
 **type_** | [**DnsRecordType**](DnsRecordType.md) |  | 
 **content** | **string** | Content of record | 
 **ttl** | **int32** | Time-to-live | [default to 86400]
 **prio** | **int32** | Priority | [default to 0]

### Return type

 (empty response body)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteDnsDomain

> SuccessTextResponse DeleteDnsDomain(ctx, id).Execute()

Permanently delete a DNS zone and every record it contains



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
	id := "id_example" // string | The DNS domain ID to delete. Use the `id` from `GET /dns` to identify the domain.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DNSAPI.DeleteDnsDomain(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DNSAPI.DeleteDnsDomain``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteDnsDomain`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `DNSAPI.DeleteDnsDomain`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | The DNS domain ID to delete. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteDnsDomainRequest struct via the builder pattern


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


## DeleteDnsRecord

> SuccessTextResponse DeleteDnsRecord(ctx, domainId, recordId).Execute()

Permanently delete one DNS record from a zone — zone itself is preserved



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
	domainId := int32(56) // int32 | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
	recordId := int32(56) // int32 | The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DNSAPI.DeleteDnsRecord(context.Background(), domainId, recordId).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DNSAPI.DeleteDnsRecord``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteDnsRecord`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `DNSAPI.DeleteDnsRecord`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**domainId** | **int32** | The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 
**recordId** | **int32** | The DNS record ID within the domain. Use the record &#x60;id&#x60; from &#x60;GET /dns/{id}&#x60; to identify the record. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteDnsRecordRequest struct via the builder pattern


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


## GetDnsDomain

> []DnsRecord GetDnsDomain(ctx, id).Execute()

List every DNS record in one zone with the IDs needed to edit or delete them



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
	id := int32(56) // int32 | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DNSAPI.GetDnsDomain(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DNSAPI.GetDnsDomain``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetDnsDomain`: []DnsRecord
	fmt.Fprintf(os.Stdout, "Response from `DNSAPI.GetDnsDomain`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetDnsDomainRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**[]DnsRecord**](DnsRecord.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetDnsList

> []DnsListItem GetDnsList(ctx).Execute()

List DNS zones hosted on the account with each zone's apex A-record IP



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
	resp, r, err := apiClient.DNSAPI.GetDnsList(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DNSAPI.GetDnsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetDnsList`: []DnsListItem
	fmt.Fprintf(os.Stdout, "Response from `DNSAPI.GetDnsList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetDnsListRequest struct via the builder pattern


### Return type

[**[]DnsListItem**](DnsListItem.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateDnsRecord

> SuccessTextResponse UpdateDnsRecord(ctx, domainId, recordId).Name(name).Type_(type_).Content(content).Ttl(ttl).Prio(prio).Disabled(disabled).Ordername(ordername).Auth(auth).Execute()

Replace values on an existing DNS record (name, type, content, ttl, priority)



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
	domainId := int32(56) // int32 | The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
	recordId := int32(56) // int32 | The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
	name := "name_example" // string |  (optional)
	type_ := openapiclient.DnsRecordType("A") // DnsRecordType |  (optional)
	content := "content_example" // string |  (optional)
	ttl := "ttl_example" // string |  (optional)
	prio := "prio_example" // string |  (optional)
	disabled := "disabled_example" // string |  (optional)
	ordername := "ordername_example" // string |  (optional)
	auth := "auth_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.DNSAPI.UpdateDnsRecord(context.Background(), domainId, recordId).Name(name).Type_(type_).Content(content).Ttl(ttl).Prio(prio).Disabled(disabled).Ordername(ordername).Auth(auth).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `DNSAPI.UpdateDnsRecord``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateDnsRecord`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `DNSAPI.UpdateDnsRecord`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**domainId** | **int32** | The DNS domain ID. Use the &#x60;id&#x60; from &#x60;GET /dns&#x60; to identify the domain. | 
**recordId** | **int32** | The DNS record ID within the domain. Use the record &#x60;id&#x60; from &#x60;GET /dns/{id}&#x60; to identify the record. | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateDnsRecordRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


 **name** | **string** |  | 
 **type_** | [**DnsRecordType**](DnsRecordType.md) |  | 
 **content** | **string** |  | 
 **ttl** | **string** |  | 
 **prio** | **string** |  | 
 **disabled** | **string** |  | 
 **ordername** | **string** |  | 
 **auth** | **string** |  | 

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

