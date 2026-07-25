# swagger.api.TicketsApi

## Load the API package
```dart
import 'package:swagger/api.dart';
```

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addNewTicket**](TicketsApi.md#addNewTicket) | **POST** /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments
[**closeTicket**](TicketsApi.md#closeTicket) | **GET** /tickets/{id}/close | Close an open support ticket via simple GET request (no body required)
[**deleteTicketInfo**](TicketsApi.md#deleteTicketInfo) | **DELETE** /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data)
[**getNewTicket**](TicketsApi.md#getNewTicket) | **GET** /tickets/new | Fetch services and product options to populate the new-ticket form
[**getTicketInfo**](TicketsApi.md#getTicketInfo) | **GET** /tickets/{id} | Get full ticket details including subject, status, and the reply thread
[**getTicketsList**](TicketsApi.md#getTicketsList) | **GET** /tickets | List the authenticated account&#x27;s support tickets with status and date filters
[**postTicketInfo**](TicketsApi.md#postTicketInfo) | **POST** /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket
[**postTicketsList**](TicketsApi.md#postTicketsList) | **POST** /tickets | Search the authenticated account&#x27;s tickets by subject, email, or mask ID
[**putTicketInfo**](TicketsApi.md#putTicketInfo) | **PUT** /tickets/{id} | Update a ticket&#x27;s properties such as subject or status (stub, not implemented)
[**replyTicket**](TicketsApi.md#replyTicket) | **POST** /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments)
[**updateTicketInfo**](TicketsApi.md#updateTicketInfo) | **POST** /tickets/{id}/update | Update a ticket&#x27;s custom field values (server-access details, etc.)

# **addNewTicket**
> TicketNewResponse addNewTicket(body, subject, body, serviceId, serviceModule)

Open a new helpdesk ticket, optionally linked to a service and attachments

Use when the customer wants to contact support. Creates the Kayako ticket in the 'New Unassigned' department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format '{module}-{service_id}' from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();
var body = new TicketNew(); // TicketNew | 
var subject = subject_example; // String | 
var body = body_example; // String | 
var serviceId = 56; // int | 
var serviceModule = serviceModule_example; // String | 

try {
    var result = api_instance.addNewTicket(body, subject, body, serviceId, serviceModule);
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->addNewTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TicketNew**](TicketNew.md)|  | 
 **subject** | **String**|  | 
 **body** | **String**|  | 
 **serviceId** | **int**|  | 
 **serviceModule** | **String**|  | 

### Return type

[**TicketNewResponse**](TicketNewResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **closeTicket**
> CloseTicketResponseSchema closeTicket(id)

Close an open support ticket via simple GET request (no body required)

Use to close a ticket from a link or one-click action — closure-only equivalent of deleteTicketInfo with friendlier semantics. Calls Ticket::closeTicket on the resolved ticket and leaves the record fully readable; closed tickets disappear from the active inbox but remain in getTicketsList when view=Closed. Path: id (int ticket ID, e.g. 1511222). Body: none. Returns: {success: true, text: 'Ticket is closed!'} or {success: false, text: 'Unable to close ticket'}. Errors: 401 unauthorized; 404 implied via 'Unable to close ticket' when id is unknown or cross-account. Idempotent on already-closed tickets. Siblings: deleteTicketInfo (DELETE /tickets/{id} — same effect), getTicketInfo to confirm new status.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();
var id = id_example; // String | Ticket ID

try {
    var result = api_instance.closeTicket(id);
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->closeTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| Ticket ID | 

### Return type

[**CloseTicketResponseSchema**](CloseTicketResponseSchema.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **deleteTicketInfo**
> ViewTicketResponse deleteTicketInfo(id)

Close a customer ticket via DELETE verb (closes only, never destroys data)

Use when the customer marks a ticket resolved. IMPORTANT: despite the DELETE verb this only CLOSES the ticket via Ticket::closeTicket — no data is destroyed. Closed tickets remain readable through getTicketInfo and appear in getTicketsList when view=Closed. Path: id (int ticket ID). Body: none. Returns: 'Ticket is closed!' string on success. Errors: 401 unauthorized; 404/422 'Invalid ticket!' when id is unknown or owned by another account. Idempotent on already-closed tickets. Siblings: CloseTicket (GET /tickets/{id}/close — same effect, simpler URL), ReplyTicket to add a final reply before closing, getTicketInfo to verify state.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();
var id = 1.2; // double | Ticket ID number.

try {
    var result = api_instance.deleteTicketInfo(id);
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->deleteTicketInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| Ticket ID number. | 

### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getNewTicket**
> getNewTicket()

Fetch services and product options to populate the new-ticket form

Use to populate dropdowns before calling addNewTicket. Returns the customer's services grouped by product type so the user can attach a ticket to a specific resource. Iterates all enabled modules (vps, webhosting, domains, mail, etc.; mailbaby instances see only mail) and filters out services with status canceled, deleted, or fraud. Params: none. Body: none. Returns: object keyed by product TITLE (e.g. 'Vps', 'Webhosting'), each value a map of '{module}-{service_id}' to a description string including title, type/plan, VPS hypervisor name where applicable, and uppercase status tag. Errors: 401 unauthorized. Use the returned product key as the 'product' field on addNewTicket.  Sibling ops: `addNewTicket` (consumes the product key), `getTicketsList`.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();

try {
    api_instance.getNewTicket();
} catch (e) {
    print("Exception when calling TicketsApi->getNewTicket: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

void (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketInfo**
> ViewTicketResponse getTicketInfo(id)

Get full ticket details including subject, status, and the reply thread

Use to render a ticket page or feed full context to an LLM. Path: id (int, ticket ID, e.g. 1511222). Returns ticket header (subject, status, department, dates), the ordered post/reply history, attachments, and any custom-field values. Resolved via Ticket::getTicket(id, account_lid) so cross-account access returns Invalid ticket. Body: none. Errors: 401 unauthorized; 404/422 'Invalid ticket!' when the id is unknown or owned by another account. Caveats: the same path with POST appends a reply (postTicketInfo) and DELETE closes the ticket (deleteTicketInfo) — it does not destroy data. Siblings: ReplyTicket, updateTicketInfo, CloseTicket, getTicketsList.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();
var id = 1.2; // double | Ticket ID number.

try {
    var result = api_instance.getTicketInfo(id);
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->getTicketInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| Ticket ID number. | 

### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getTicketsList**
> Tickets getTicketsList(page, period, view)

List the authenticated account's support tickets with status and date filters

Use to browse the customer's helpdesk tickets, paginated, with optional status and recency filters. Returns tickets where email matches the session account_lid. Query params: page (int, default 1, 50 per page), period (string: '30', '90', '365', '1825', or 'all' days back; default '30'), view (string: 'Open', 'Closed', 'On Hold', 'In Progress'; omit for all). Body: none. Returns: object with tickets[], total, pages, currentPage, st_count[] (counts grouped by status: Open/On Hold/Closed), selected_period, view. Errors: 401 unauthorized session. Note ticketstatusid mapping (Open=4, On Hold=5, Closed=6, In Progress=7). To search by subject/email/mask use postTicketsList. To open a ticket detail use getTicketInfo with the returned id. To create a new ticket see addNewTicket.  Sibling ops: `getTicketInfo` (detail), `postTicketsList` (search), `addNewTicket` (open new).

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();
var page = 56; // int | Page number for paginated results.
var period = period_example; // String | How far back to show tickets from. Value is in days.
var view = view_example; // String | The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types.

try {
    var result = api_instance.getTicketsList(page, period, view);
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->getTicketsList: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **int**| Page number for paginated results. | [optional] [default to 1]
 **period** | **String**| How far back to show tickets from. Value is in days. | [optional] [default to 30]
 **view** | **String**| The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types. | [optional] 

### Return type

[**Tickets**](Tickets.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTicketInfo**
> ViewTicketResponse postTicketInfo(id)

Append a reply (and optional attachment, server-access fields) to a ticket

Use to post a customer reply on an existing ticket. Path: id (int ticket ID). Body: body (string reply text; trimmed to first 500 words), file_attachment (multipart upload, optional), and the server-access custom fields ip/root_pass/sudo_user/sudo_pass/port_no/server_access (passwords AES-encrypted with auth_key=7). Either body OR an attachment is required. Notifies any swticketwatchers staff via templated email after posting. Returns: {status: 'success', message: 'Reply posted successfully'}. Errors: 400 'Please enter a message or attach a file'; 401 unauthorized; 404/422 'Invalid ticket!' when id missing or cross-account. Sibling: ReplyTicket (cleaner JSON-only reply at /tickets/{id}/reply), updateTicketInfo, getTicketInfo, deleteTicketInfo.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();
var id = 1.2; // double | Ticket ID number.

try {
    var result = api_instance.postTicketInfo(id);
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->postTicketInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| Ticket ID number. | 

### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **postTicketsList**
> Tickets postTicketsList()

Search the authenticated account's tickets by subject, email, or mask ID

Use when the user supplies a search term (subject keyword, email substring, or full ticket mask ID like 'ABC-123-456'). Scoped to tickets owned by the session account_lid. Body (form): search (string, required). If the term contains exactly two hyphens it is treated as an exact ticketmaskid match; otherwise a LIKE search runs across subject, email, and ticketmaskid. Returns: array of up to 25 matching ticket rows ordered by lastactivity DESC, each enriched with lastactivity_time (human-relative). Errors: 400 if search is empty or missing; 401 unauthorized. Caveat: this is a POST that reads, not a creator. To create see addNewTicket. To paginate full inbox use getTicketsList. To open one use getTicketInfo.  Sibling ops: `getTicketsList` (full inbox), `getTicketInfo` (detail), `addNewTicket` (open new).

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();

try {
    var result = api_instance.postTicketsList();
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->postTicketsList: $e\n");
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**Tickets**](Tickets.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **putTicketInfo**
> ViewTicketResponse putTicketInfo(id)

Update a ticket's properties such as subject or status (stub, not implemented)

Reserved for future use to update ticket subject/status. The PHP handler is currently an empty stub that returns no body, so callers should not rely on it in production. Path: id (int). Body: would carry subject/status fields when implemented. Returns: undefined behavior today. Errors: 401 unauthorized; expect 404/422 when implemented if id is invalid or not owned. Caveats: prefer updateTicketInfo (POST /tickets/{id}/update) for editing custom-field values today, postTicketInfo to add a reply, CloseTicket or deleteTicketInfo to close. Avoid scripting against this endpoint until the handler ships. Siblings: getTicketInfo, ReplyTicket.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();
var id = 1.2; // double | Ticket ID number.

try {
    var result = api_instance.putTicketInfo(id);
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->putTicketInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| Ticket ID number. | 

### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **replyTicket**
> ReplyTicketResponseSchema replyTicket(id, body, content)

Post a simple text reply to an existing ticket thread (no attachments)

Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: 'Reply content cannot be empty!' | 'Unable to reply ticket'}. Errors: 401 unauthorized; 404 implied via 'Unable to reply ticket' when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();
var id = 1.2; // double | The ticket ID number.
var body = new ReplyTicketRequest(); // ReplyTicketRequest | 
var content = content_example; // String | 

try {
    var result = api_instance.replyTicket(id, body, content);
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->replyTicket: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The ticket ID number. | 
 **body** | [**ReplyTicketRequest**](ReplyTicketRequest.md)|  | [optional] 
 **content** | **String**|  | [optional] 

### Return type

[**ReplyTicketResponseSchema**](ReplyTicketResponseSchema.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **updateTicketInfo**
> UpdateTicketResponseSchema updateTicketInfo(id, body, ip, ipAddress, customerServerAccess, rootPassword, sudoUsername, sudoPassword, port)

Update a ticket's custom field values (server-access details, etc.)

Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: 'Ticket is updated!'} or {success: false, text: 'Unable to update ticket'}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: `getTicketInfo` (read), `ReplyTicket` (reply), `CloseTicket` (close).

### Example
```dart
import 'package:swagger/api.dart';
// TODO Configure API key authorization: apiKeyAuth
//swagger.api.Configuration.apiKey{'X-API-KEY'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'X-API-KEY'} = "Bearer";
// TODO Configure API key authorization: sessionIdCookieAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";
// TODO Configure API key authorization: sessionIdHeaderAuth
//swagger.api.Configuration.apiKey{'sessionid'} = 'YOUR_API_KEY';
// uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//swagger.api.Configuration.apiKeyPrefix{'sessionid'} = "Bearer";

var api_instance = new TicketsApi();
var id = 1.2; // double | The ticket ID number.
var body = new UpdateTicket(); // UpdateTicket | 
var ip = ip_example; // String | 
var ipAddress = ipAddress_example; // String | 
var customerServerAccess = customerServerAccess_example; // String | 
var rootPassword = rootPassword_example; // String | 
var sudoUsername = sudoUsername_example; // String | 
var sudoPassword = sudoPassword_example; // String | 
var port = 56; // int | 

try {
    var result = api_instance.updateTicketInfo(id, body, ip, ipAddress, customerServerAccess, rootPassword, sudoUsername, sudoPassword, port);
    print(result);
} catch (e) {
    print("Exception when calling TicketsApi->updateTicketInfo: $e\n");
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **double**| The ticket ID number. | 
 **body** | [**UpdateTicket**](UpdateTicket.md)|  | [optional] 
 **ip** | **String**|  | [optional] 
 **ipAddress** | **String**|  | [optional] 
 **customerServerAccess** | **String**|  | [optional] 
 **rootPassword** | **String**|  | [optional] 
 **sudoUsername** | **String**|  | [optional] 
 **sudoPassword** | **String**|  | [optional] 
 **port** | **int**|  | [optional] 

### Return type

[**UpdateTicketResponseSchema**](UpdateTicketResponseSchema.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

