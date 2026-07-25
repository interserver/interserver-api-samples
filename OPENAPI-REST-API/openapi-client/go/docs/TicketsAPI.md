# \TicketsAPI

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**AddNewTicket**](TicketsAPI.md#AddNewTicket) | **Post** /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments
[**CloseTicket**](TicketsAPI.md#CloseTicket) | **Get** /tickets/{id}/close | Close an open support ticket via simple GET request (no body required)
[**DeleteTicketInfo**](TicketsAPI.md#DeleteTicketInfo) | **Delete** /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data)
[**GetNewTicket**](TicketsAPI.md#GetNewTicket) | **Get** /tickets/new | Fetch services and product options to populate the new-ticket form
[**GetTicketInfo**](TicketsAPI.md#GetTicketInfo) | **Get** /tickets/{id} | Get full ticket details including subject, status, and the reply thread
[**GetTicketsList**](TicketsAPI.md#GetTicketsList) | **Get** /tickets | List the authenticated account&#39;s support tickets with status and date filters
[**PostTicketInfo**](TicketsAPI.md#PostTicketInfo) | **Post** /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket
[**PostTicketsList**](TicketsAPI.md#PostTicketsList) | **Post** /tickets | Search the authenticated account&#39;s tickets by subject, email, or mask ID
[**PutTicketInfo**](TicketsAPI.md#PutTicketInfo) | **Put** /tickets/{id} | Update a ticket&#39;s properties such as subject or status (stub, not implemented)
[**ReplyTicket**](TicketsAPI.md#ReplyTicket) | **Post** /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments)
[**UpdateTicketInfo**](TicketsAPI.md#UpdateTicketInfo) | **Post** /tickets/{id}/update | Update a ticket&#39;s custom field values (server-access details, etc.)



## AddNewTicket

> TicketNewResponse AddNewTicket(ctx).TicketNew(ticketNew).Execute()

Open a new helpdesk ticket, optionally linked to a service and attachments



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
	ticketNew := *openapiclient.NewTicketNew("Subject_example", "Body_example") // TicketNew | 

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TicketsAPI.AddNewTicket(context.Background()).TicketNew(ticketNew).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.AddNewTicket``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `AddNewTicket`: TicketNewResponse
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.AddNewTicket`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiAddNewTicketRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ticketNew** | [**TicketNew**](TicketNew.md) |  | 

### Return type

[**TicketNewResponse**](TicketNewResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## CloseTicket

> CloseTicketResponseSchema CloseTicket(ctx, id).Execute()

Close an open support ticket via simple GET request (no body required)



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
	id := "1511222" // string | Ticket ID

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TicketsAPI.CloseTicket(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.CloseTicket``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `CloseTicket`: CloseTicketResponseSchema
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.CloseTicket`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **string** | Ticket ID | 

### Other Parameters

Other parameters are passed through a pointer to a apiCloseTicketRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**CloseTicketResponseSchema**](CloseTicketResponseSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## DeleteTicketInfo

> ViewTicketResponse DeleteTicketInfo(ctx, id).Execute()

Close a customer ticket via DELETE verb (closes only, never destroys data)



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
	id := float32(8.14) // float32 | Ticket ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TicketsAPI.DeleteTicketInfo(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.DeleteTicketInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `DeleteTicketInfo`: ViewTicketResponse
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.DeleteTicketInfo`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | Ticket ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiDeleteTicketInfoRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetNewTicket

> GetNewTicket(ctx).Execute()

Fetch services and product options to populate the new-ticket form



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
	r, err := apiClient.TicketsAPI.GetNewTicket(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.GetNewTicket``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiGetNewTicketRequest struct via the builder pattern


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


## GetTicketInfo

> ViewTicketResponse GetTicketInfo(ctx, id).Execute()

Get full ticket details including subject, status, and the reply thread



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
	id := float32(8.14) // float32 | Ticket ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TicketsAPI.GetTicketInfo(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.GetTicketInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetTicketInfo`: ViewTicketResponse
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.GetTicketInfo`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | Ticket ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiGetTicketInfoRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## GetTicketsList

> Tickets GetTicketsList(ctx).Page(page).Period(period).View(view).Execute()

List the authenticated account's support tickets with status and date filters



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
	page := int32(56) // int32 | Page number for paginated results. (optional) (default to 1)
	period := "period_example" // string | How far back to show tickets from. Value is in days. (optional) (default to "30")
	view := "view_example" // string | The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types. (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TicketsAPI.GetTicketsList(context.Background()).Page(page).Period(period).View(view).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.GetTicketsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `GetTicketsList`: Tickets
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.GetTicketsList`: %v\n", resp)
}
```

### Path Parameters



### Other Parameters

Other parameters are passed through a pointer to a apiGetTicketsListRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int32** | Page number for paginated results. | [default to 1]
 **period** | **string** | How far back to show tickets from. Value is in days. | [default to &quot;30&quot;]
 **view** | **string** | The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types. | 

### Return type

[**Tickets**](Tickets.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostTicketInfo

> ViewTicketResponse PostTicketInfo(ctx, id).Execute()

Append a reply (and optional attachment, server-access fields) to a ticket



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
	id := float32(8.14) // float32 | Ticket ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TicketsAPI.PostTicketInfo(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.PostTicketInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostTicketInfo`: ViewTicketResponse
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.PostTicketInfo`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | Ticket ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiPostTicketInfoRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PostTicketsList

> Tickets PostTicketsList(ctx).Execute()

Search the authenticated account's tickets by subject, email, or mask ID



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
	resp, r, err := apiClient.TicketsAPI.PostTicketsList(context.Background()).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.PostTicketsList``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PostTicketsList`: Tickets
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.PostTicketsList`: %v\n", resp)
}
```

### Path Parameters

This endpoint does not need any parameter.

### Other Parameters

Other parameters are passed through a pointer to a apiPostTicketsListRequest struct via the builder pattern


### Return type

[**Tickets**](Tickets.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## PutTicketInfo

> ViewTicketResponse PutTicketInfo(ctx, id).Execute()

Update a ticket's properties such as subject or status (stub, not implemented)



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
	id := float32(8.14) // float32 | Ticket ID number.

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TicketsAPI.PutTicketInfo(context.Background(), id).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.PutTicketInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `PutTicketInfo`: ViewTicketResponse
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.PutTicketInfo`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | Ticket ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiPutTicketInfoRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------


### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## ReplyTicket

> ReplyTicketResponseSchema ReplyTicket(ctx, id).ReplyTicketRequest(replyTicketRequest).Execute()

Post a simple text reply to an existing ticket thread (no attachments)



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
	id := float32(8.14) // float32 | The ticket ID number.
	replyTicketRequest := *openapiclient.NewReplyTicketRequest() // ReplyTicketRequest |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TicketsAPI.ReplyTicket(context.Background(), id).ReplyTicketRequest(replyTicketRequest).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.ReplyTicket``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `ReplyTicket`: ReplyTicketResponseSchema
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.ReplyTicket`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The ticket ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiReplyTicketRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **replyTicketRequest** | [**ReplyTicketRequest**](ReplyTicketRequest.md) |  | 

### Return type

[**ReplyTicketResponseSchema**](ReplyTicketResponseSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)


## UpdateTicketInfo

> UpdateTicketResponseSchema UpdateTicketInfo(ctx, id).UpdateTicket(updateTicket).Execute()

Update a ticket's custom field values (server-access details, etc.)



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
	id := float32(8.14) // float32 | The ticket ID number.
	updateTicket := *openapiclient.NewUpdateTicket() // UpdateTicket |  (optional)

	configuration := openapiclient.NewConfiguration()
	apiClient := openapiclient.NewAPIClient(configuration)
	resp, r, err := apiClient.TicketsAPI.UpdateTicketInfo(context.Background(), id).UpdateTicket(updateTicket).Execute()
	if err != nil {
		fmt.Fprintf(os.Stderr, "Error when calling `TicketsAPI.UpdateTicketInfo``: %v\n", err)
		fmt.Fprintf(os.Stderr, "Full HTTP response: %v\n", r)
	}
	// response from `UpdateTicketInfo`: UpdateTicketResponseSchema
	fmt.Fprintf(os.Stdout, "Response from `TicketsAPI.UpdateTicketInfo`: %v\n", resp)
}
```

### Path Parameters


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
**ctx** | **context.Context** | context for authentication, logging, cancellation, deadlines, tracing, etc.
**id** | **float32** | The ticket ID number. | 

### Other Parameters

Other parameters are passed through a pointer to a apiUpdateTicketInfoRequest struct via the builder pattern


Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------

 **updateTicket** | [**UpdateTicket**](UpdateTicket.md) |  | 

### Return type

[**UpdateTicketResponseSchema**](UpdateTicketResponseSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

- **Content-Type**: application/json, multipart/form-data
- **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints)
[[Back to Model list]](../README.md#documentation-for-models)
[[Back to README]](../README.md)

