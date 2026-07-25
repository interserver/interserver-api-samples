# \BillingAPI

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddBillingCreditCard**](BillingAPI.md#AddBillingCreditCard) | **Post** /billing/creditcards | Store a credit card on the account — may return a verification flow
[**AddBillingPrepay**](BillingAPI.md#AddBillingPrepay) | **Post** /billing/prepays | Create a prepay deposit and return an invoice id to fund it
[**DeleteBillingCreditCard**](BillingAPI.md#DeleteBillingCreditCard) | **Delete** /billing/creditcards/{id} | Remove a stored credit card from the account
[**DeleteBillingInvoice**](BillingAPI.md#DeleteBillingInvoice) | **Delete** /billing/invoices/{id} | Cancel a pending unpaid invoice — and its pending service or repeat invoice
[**DeleteBillingPrepay**](BillingAPI.md#DeleteBillingPrepay) | **Delete** /billing/prepays/{id} | Delete an unfunded prepay or strip its unpaid funding invoices
[**GetAffiliateBanners**](BillingAPI.md#GetAffiliateBanners) | **Get** /affiliate/banners | List affiliate banner image assets with filename and dimensions
[**GetAffiliateDownload**](BillingAPI.md#GetAffiliateDownload) | **Get** /affiliate/download | Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download
[**GetAffiliateRichReport**](BillingAPI.md#GetAffiliateRichReport) | **Get** /affiliate/rich_report | Read a combined affiliate performance summary (HTML payload)
[**GetAffiliateSalesGraph**](BillingAPI.md#GetAffiliateSalesGraph) | **Get** /affiliate/sales_graph | Read aggregated affiliate sales time-series (monthly buckets) for chart rendering
[**GetAffiliateSignups**](BillingAPI.md#GetAffiliateSignups) | **Get** /affiliate/signups | Read affiliate signup stats and per-customer conversion data
[**GetAffiliateTrafficGraph**](BillingAPI.md#GetAffiliateTrafficGraph) | **Get** /affiliate/traffic_graph | Read aggregated affiliate referral click/visit time-series for chart rendering
[**GetAffiliateWebTraffic**](BillingAPI.md#GetAffiliateWebTraffic) | **Get** /affiliate/web_traffic | List the 20 most recent affiliate referral visits with IP, referrer, timestamp
[**GetBillingCart**](BillingAPI.md#GetBillingCart) | **Get** /billing/cart | Read the current shopping cart contents, totals, and available payment methods
[**GetBillingCreditCardVerify**](BillingAPI.md#GetBillingCreditCardVerify) | **Get** /billing/creditcards/{id}/verify | Probe whether a stored card still needs micro-charge verification
[**GetBillingInvoice**](BillingAPI.md#GetBillingInvoice) | **Get** /billing/invoices/{id} | Read full invoice detail — line items, totals, paid status, customer info
[**GetBillingInvoices**](BillingAPI.md#GetBillingInvoices) | **Get** /billing/invoices | List every invoice on the account with summary totals and paid/unpaid status
[**GetBillingPrePays**](BillingAPI.md#GetBillingPrePays) | **Get** /billing/prepays | List prepay deposits on the account — remaining balance and auto-use flags
[**InitiatePayment**](BillingAPI.md#InitiatePayment) | **Get** /billing/pay/{method}/{invoices} | Pay invoices through the chosen gateway — returns the next-step action
[**PatchBillingCreditCardVerify**](BillingAPI.md#PatchBillingCreditCardVerify) | **Patch** /billing/creditcards/{id}/verify | Place two micro-charges on the card to start CVV verification (step 1 of 2)
[**PostBillingCreditCardVerify**](BillingAPI.md#PostBillingCreditCardVerify) | **Post** /billing/creditcards/{id}/verify | Submit two micro-charge amounts to finalize card verification (step 2 of 2)
[**UpdateAffiliateDockSetup**](BillingAPI.md#UpdateAffiliateDockSetup) | **Post** /affiliate/dock_setup | Configure the affiliate landing dock title, description, and referrer coupon
[**UpdateAffiliatePaymentSetup**](BillingAPI.md#UpdateAffiliatePaymentSetup) | **Post** /affiliate/payment_setup | Configure how affiliate commissions get paid out (PayPal or internal prepay)
[**UpdateBillingCreditCard**](BillingAPI.md#UpdateBillingCreditCard) | **Post** /billing/creditcards/{id} | Refresh stored card expiration and re-trigger MaxMind fraud scoring
[**UpdateBillingPaymentMethod**](BillingAPI.md#UpdateBillingPaymentMethod) | **Post** /billing/payment_method | Set the account&#39;s default payment method for recurring/auto charges



## AddBillingCreditCard

> SuccessTextResponse AddBillingCreditCard(ctx).BillingAddCcRequest(billingAddCcRequest).Execute()

Store a credit card on the account — may return a verification flow



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
	billingAddCcRequest := *openapiclient.NewBillingAddCcRequest() // BillingAddCcRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.AddBillingCreditCard(context.Background()).BillingAddCcRequest(billingAddCcRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.AddBillingCreditCard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddBillingCreditCard`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.AddBillingCreditCard`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddBillingCreditCardRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingAddCcRequest** | [**BillingAddCcRequest**](BillingAddCcRequest.md) |  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## AddBillingPrepay

> SuccessTextResponse AddBillingPrepay(ctx).BillingPrepayRequest(billingPrepayRequest).Execute()

Create a prepay deposit and return an invoice id to fund it



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
	billingPrepayRequest := *openapiclient.NewBillingPrepayRequest() // BillingPrepayRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.AddBillingPrepay(context.Background()).BillingPrepayRequest(billingPrepayRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.AddBillingPrepay``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddBillingPrepay`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.AddBillingPrepay`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddBillingPrepayRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingPrepayRequest** | [**BillingPrepayRequest**](BillingPrepayRequest.md) |  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteBillingCreditCard

> SuccessTextResponse DeleteBillingCreditCard(ctx, id).Execute()

Remove a stored credit card from the account



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
	id := int32(56) // int32 | The credit card ID to remove. Use IDs from `GET /billing/creditcards`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.DeleteBillingCreditCard(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.DeleteBillingCreditCard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteBillingCreditCard`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.DeleteBillingCreditCard`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The credit card ID to remove. Use IDs from &#x60;GET /billing/creditcards&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteBillingCreditCardRequest struct via the builder pattern


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


## DeleteBillingInvoice

> SuccessTextResponse DeleteBillingInvoice(ctx, id).Execute()

Cancel a pending unpaid invoice — and its pending service or repeat invoice



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
	id := int32(56) // int32 | The invoice ID to delete. Only unpaid invoices can be deleted.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.DeleteBillingInvoice(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.DeleteBillingInvoice``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteBillingInvoice`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.DeleteBillingInvoice`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The invoice ID to delete. Only unpaid invoices can be deleted. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteBillingInvoiceRequest struct via the builder pattern


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


## DeleteBillingPrepay

> SuccessTextResponse DeleteBillingPrepay(ctx, id).Execute()

Delete an unfunded prepay or strip its unpaid funding invoices



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
	id := int32(56) // int32 | The prepay balance ID to delete.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.DeleteBillingPrepay(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.DeleteBillingPrepay``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteBillingPrepay`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.DeleteBillingPrepay`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The prepay balance ID to delete. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteBillingPrepayRequest struct via the builder pattern


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


## GetAffiliateBanners

> []AffiliateBannerRow GetAffiliateBanners(ctx).Execute()

List affiliate banner image assets with filename and dimensions



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
	resp, r, err := apiClient.BillingAPI.GetAffiliateBanners(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetAffiliateBanners``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAffiliateBanners`: []AffiliateBannerRow
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetAffiliateBanners`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetAffiliateBannersRequest struct via the builder pattern


### Return type

[**[]AffiliateBannerRow**](AffiliateBannerRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAffiliateDownload

> GetAffiliateDownload(ctx).St(st).Ex(ex).Year(year).Execute()

Export the affiliate signup report as CSV, XLS, XLSX, or PDF file download



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
	st := "st_example" // string | Filter by status. (optional)
	ex := "ex_example" // string | Export format: csv, xls, xlsx, or pdf. Defaults to csv. (optional)
	year := int32(56) // int32 | Year to filter the report. Defaults to the current year. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	r, err := apiClient.BillingAPI.GetAffiliateDownload(context.Background()).St(st).Ex(ex).Year(year).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetAffiliateDownload``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetAffiliateDownloadRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **st** | **string** | Filter by status. | 
 **ex** | **string** | Export format: csv, xls, xlsx, or pdf. Defaults to csv. | 
 **year** | **int32** | Year to filter the report. Defaults to the current year. | 

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


## GetAffiliateRichReport

> TextResponse GetAffiliateRichReport(ctx).Execute()

Read a combined affiliate performance summary (HTML payload)



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
	resp, r, err := apiClient.BillingAPI.GetAffiliateRichReport(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetAffiliateRichReport``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAffiliateRichReport`: TextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetAffiliateRichReport`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetAffiliateRichReportRequest struct via the builder pattern


### Return type

[**TextResponse**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAffiliateSalesGraph

> StatusMonthlyBreakdown GetAffiliateSalesGraph(ctx).Days(days).Execute()

Read aggregated affiliate sales time-series (monthly buckets) for chart rendering



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
	days := int32(56) // int32 | Number of days of sales history to include in the graph data. Determines the time window for the returned data points. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.GetAffiliateSalesGraph(context.Background()).Days(days).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetAffiliateSalesGraph``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAffiliateSalesGraph`: StatusMonthlyBreakdown
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetAffiliateSalesGraph`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetAffiliateSalesGraphRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **int32** | Number of days of sales history to include in the graph data. Determines the time window for the returned data points. | 

### Return type

[**StatusMonthlyBreakdown**](StatusMonthlyBreakdown.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAffiliateSignups

> GetAffiliateSignups200Response GetAffiliateSignups(ctx).St(st).Execute()

Read affiliate signup stats and per-customer conversion data



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
	st := "st_example" // string | Filter signups by status. Use `default` to show all or pass a specific status value to narrow results. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.GetAffiliateSignups(context.Background()).St(st).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetAffiliateSignups``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAffiliateSignups`: GetAffiliateSignups200Response
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetAffiliateSignups`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetAffiliateSignupsRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **st** | **string** | Filter signups by status. Use &#x60;default&#x60; to show all or pass a specific status value to narrow results. | 

### Return type

[**GetAffiliateSignups200Response**](GetAffiliateSignups200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAffiliateTrafficGraph

> MonthlyCounts GetAffiliateTrafficGraph(ctx).Days(days).Execute()

Read aggregated affiliate referral click/visit time-series for chart rendering



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
	days := int32(56) // int32 | Number of days of traffic history to include in the graph data. Determines the time window for the returned data points. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.GetAffiliateTrafficGraph(context.Background()).Days(days).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetAffiliateTrafficGraph``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAffiliateTrafficGraph`: MonthlyCounts
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetAffiliateTrafficGraph`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetAffiliateTrafficGraphRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **days** | **int32** | Number of days of traffic history to include in the graph data. Determines the time window for the returned data points. | 

### Return type

[**MonthlyCounts**](MonthlyCounts.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetAffiliateWebTraffic

> []AffiliateTrafficRow GetAffiliateWebTraffic(ctx).Execute()

List the 20 most recent affiliate referral visits with IP, referrer, timestamp



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
	resp, r, err := apiClient.BillingAPI.GetAffiliateWebTraffic(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetAffiliateWebTraffic``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetAffiliateWebTraffic`: []AffiliateTrafficRow
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetAffiliateWebTraffic`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetAffiliateWebTrafficRequest struct via the builder pattern


### Return type

[**[]AffiliateTrafficRow**](AffiliateTrafficRow.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetBillingCart

> map[string]interface{} GetBillingCart(ctx).Execute()

Read the current shopping cart contents, totals, and available payment methods



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
	resp, r, err := apiClient.BillingAPI.GetBillingCart(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetBillingCart``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetBillingCart`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetBillingCart`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetBillingCartRequest struct via the builder pattern


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


## GetBillingCreditCardVerify

> SuccessTextResponse GetBillingCreditCardVerify(ctx, id).Execute()

Probe whether a stored card still needs micro-charge verification



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
	id := int32(56) // int32 | The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.GetBillingCreditCardVerify(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetBillingCreditCardVerify``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetBillingCreditCardVerify`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetBillingCreditCardVerify`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetBillingCreditCardVerifyRequest struct via the builder pattern


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


## GetBillingInvoice

> BillingInvoiceDetail GetBillingInvoice(ctx, id).Execute()

Read full invoice detail — line items, totals, paid status, customer info



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
	id := int32(56) // int32 | The invoice ID. Use IDs from `GET /billing/invoices` or from order responses.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.GetBillingInvoice(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetBillingInvoice``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetBillingInvoice`: BillingInvoiceDetail
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetBillingInvoice`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The invoice ID. Use IDs from &#x60;GET /billing/invoices&#x60; or from order responses. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetBillingInvoiceRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**BillingInvoiceDetail**](BillingInvoiceDetail.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetBillingInvoices

> BillingInvoiceList GetBillingInvoices(ctx).Execute()

List every invoice on the account with summary totals and paid/unpaid status



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
	resp, r, err := apiClient.BillingAPI.GetBillingInvoices(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetBillingInvoices``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetBillingInvoices`: BillingInvoiceList
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetBillingInvoices`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetBillingInvoicesRequest struct via the builder pattern


### Return type

[**BillingInvoiceList**](BillingInvoiceList.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetBillingPrePays

> map[string]interface{} GetBillingPrePays(ctx).Execute()

List prepay deposits on the account — remaining balance and auto-use flags



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
	resp, r, err := apiClient.BillingAPI.GetBillingPrePays(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.GetBillingPrePays``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetBillingPrePays`: map[string]interface{}
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.GetBillingPrePays`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetBillingPrePaysRequest struct via the builder pattern


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


## InitiatePayment

> InitiatePayment200Response InitiatePayment(ctx, method, invoices).Execute()

Pay invoices through the chosen gateway — returns the next-step action



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
	method := "method_example" // string | The payment method to use. Valid values: `cc` (credit card), `paypal`, `prepay`, `payssion`, `payu`, `ccavenue`, `cashfree`, `coinbase`, `btcpay`.
	invoices := "invoices_example" // string | A comma-separated list of invoice IDs or invoice Tags to pay. These IDs are returned by order endpoints (e.g. `/backups/order`, `/vps/order`) and by `/billing/invoices`. Invoice tags accepted are SERVICE<module><id>, RINV<module><repeat invoice id>, INV<module><invoice id>, PREPAY<prepay id><invoice id>, and <invoice id>.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.InitiatePayment(context.Background(), method, invoices).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.InitiatePayment``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `InitiatePayment`: InitiatePayment200Response
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.InitiatePayment`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**method** | **string** | The payment method to use. Valid values: &#x60;cc&#x60; (credit card), &#x60;paypal&#x60;, &#x60;prepay&#x60;, &#x60;payssion&#x60;, &#x60;payu&#x60;, &#x60;ccavenue&#x60;, &#x60;cashfree&#x60;, &#x60;coinbase&#x60;, &#x60;btcpay&#x60;. | 
**invoices** | **string** | A comma-separated list of invoice IDs or invoice Tags to pay. These IDs are returned by order endpoints (e.g. &#x60;/backups/order&#x60;, &#x60;/vps/order&#x60;) and by &#x60;/billing/invoices&#x60;. Invoice tags accepted are SERVICE&lt;module&gt;&lt;id&gt;, RINV&lt;module&gt;&lt;repeat invoice id&gt;, INV&lt;module&gt;&lt;invoice id&gt;, PREPAY&lt;prepay id&gt;&lt;invoice id&gt;, and &lt;invoice id&gt;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiInitiatePaymentRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------



### Return type

[**InitiatePayment200Response**](InitiatePayment200Response.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PatchBillingCreditCardVerify

> SuccessTextResponse PatchBillingCreditCardVerify(ctx, id).PatchBillingCreditCardVerifyRequest(patchBillingCreditCardVerifyRequest).Execute()

Place two micro-charges on the card to start CVV verification (step 1 of 2)



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
	id := int32(56) // int32 | The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.
	patchBillingCreditCardVerifyRequest := *openapiclient.NewPatchBillingCreditCardVerifyRequest("CcCcv2_example") // PatchBillingCreditCardVerifyRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.PatchBillingCreditCardVerify(context.Background(), id).PatchBillingCreditCardVerifyRequest(patchBillingCreditCardVerifyRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.PatchBillingCreditCardVerify``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PatchBillingCreditCardVerify`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.PatchBillingCreditCardVerify`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiPatchBillingCreditCardVerifyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **patchBillingCreditCardVerifyRequest** | [**PatchBillingCreditCardVerifyRequest**](PatchBillingCreditCardVerifyRequest.md) |  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostBillingCreditCardVerify

> SuccessTextResponse PostBillingCreditCardVerify(ctx, id).BillingVerifyCcRequest(billingVerifyCcRequest).Execute()

Submit two micro-charge amounts to finalize card verification (step 2 of 2)



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
	id := int32(56) // int32 | The credit card ID to verify. Use the ID returned from `POST /billing/creditcards`.
	billingVerifyCcRequest := *openapiclient.NewBillingVerifyCcRequest() // BillingVerifyCcRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.PostBillingCreditCardVerify(context.Background(), id).BillingVerifyCcRequest(billingVerifyCcRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.PostBillingCreditCardVerify``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostBillingCreditCardVerify`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.PostBillingCreditCardVerify`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The credit card ID to verify. Use the ID returned from &#x60;POST /billing/creditcards&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostBillingCreditCardVerifyRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **billingVerifyCcRequest** | [**BillingVerifyCcRequest**](BillingVerifyCcRequest.md) |  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAffiliateDockSetup

> TextResponse UpdateAffiliateDockSetup(ctx).AffiliateDockTitle(affiliateDockTitle).AffiliateDockDescription(affiliateDockDescription).ReferrerCoupon(referrerCoupon).Execute()

Configure the affiliate landing dock title, description, and referrer coupon



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
	affiliateDockTitle := "affiliateDockTitle_example" // string |  (optional)
	affiliateDockDescription := "affiliateDockDescription_example" // string |  (optional)
	referrerCoupon := "referrerCoupon_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.UpdateAffiliateDockSetup(context.Background()).AffiliateDockTitle(affiliateDockTitle).AffiliateDockDescription(affiliateDockDescription).ReferrerCoupon(referrerCoupon).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.UpdateAffiliateDockSetup``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAffiliateDockSetup`: TextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.UpdateAffiliateDockSetup`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAffiliateDockSetupRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **affiliateDockTitle** | **string** |  | 
 **affiliateDockDescription** | **string** |  | 
 **referrerCoupon** | **string** |  | 

### Return type

[**TextResponse**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateAffiliatePaymentSetup

> TextResponse UpdateAffiliatePaymentSetup(ctx).AffiliatePaypal(affiliatePaypal).AffiliatePaymentMethod(affiliatePaymentMethod).Execute()

Configure how affiliate commissions get paid out (PayPal or internal prepay)



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
	affiliatePaypal := "affiliatePaypal_example" // string |  (optional)
	affiliatePaymentMethod := "affiliatePaymentMethod_example" // string |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.UpdateAffiliatePaymentSetup(context.Background()).AffiliatePaypal(affiliatePaypal).AffiliatePaymentMethod(affiliatePaymentMethod).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.UpdateAffiliatePaymentSetup``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateAffiliatePaymentSetup`: TextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.UpdateAffiliatePaymentSetup`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateAffiliatePaymentSetupRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **affiliatePaypal** | **string** |  | 
 **affiliatePaymentMethod** | **string** |  | 

### Return type

[**TextResponse**](TextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: multipart/form-data, application/json
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateBillingCreditCard

> SuccessTextResponse UpdateBillingCreditCard(ctx, id).Execute()

Refresh stored card expiration and re-trigger MaxMind fraud scoring



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
	id := int32(56) // int32 | The credit card ID. Use IDs from `GET /billing/creditcards` or the response from `POST /billing/creditcards`.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.UpdateBillingCreditCard(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.UpdateBillingCreditCard``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateBillingCreditCard`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.UpdateBillingCreditCard`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **int32** | The credit card ID. Use IDs from &#x60;GET /billing/creditcards&#x60; or the response from &#x60;POST /billing/creditcards&#x60;. | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateBillingCreditCardRequest struct via the builder pattern


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


## UpdateBillingPaymentMethod

> SuccessTextResponse UpdateBillingPaymentMethod(ctx).BillingPaymentMethodRequest(billingPaymentMethodRequest).Execute()

Set the account's default payment method for recurring/auto charges



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
	billingPaymentMethodRequest := *openapiclient.NewBillingPaymentMethodRequest() // BillingPaymentMethodRequest | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.BillingAPI.UpdateBillingPaymentMethod(context.Background()).BillingPaymentMethodRequest(billingPaymentMethodRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `BillingAPI.UpdateBillingPaymentMethod``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateBillingPaymentMethod`: SuccessTextResponse
	fmt.Fprintf(os.Stdout, "Response from `BillingAPI.UpdateBillingPaymentMethod`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiUpdateBillingPaymentMethodRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **billingPaymentMethodRequest** | [**BillingPaymentMethodRequest**](BillingPaymentMethodRequest.md) |  | 

### Return type

[**SuccessTextResponse**](SuccessTextResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

