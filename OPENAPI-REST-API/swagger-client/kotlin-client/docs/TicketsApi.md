# TicketsApi

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

<a name="addNewTicket"></a>
# **addNewTicket**
> TicketNewResponse addNewTicket(body)

Open a new helpdesk ticket, optionally linked to a service and attachments

Use when the customer wants to contact support. Creates the Kayako ticket in the &#x27;New Unassigned&#x27; department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format &#x27;{module}-{service_id}&#x27; from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val body : TicketNew =  // TicketNew | 
try {
    val result : TicketNewResponse = apiInstance.addNewTicket(body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#addNewTicket")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#addNewTicket")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TicketNew**](TicketNew.md)|  |

### Return type

[**TicketNewResponse**](TicketNewResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

<a name="addNewTicket"></a>
# **addNewTicket**
> TicketNewResponse addNewTicket(subject, body, serviceId, serviceModule)

Open a new helpdesk ticket, optionally linked to a service and attachments

Use when the customer wants to contact support. Creates the Kayako ticket in the &#x27;New Unassigned&#x27; department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format &#x27;{module}-{service_id}&#x27; from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val subject : kotlin.String = subject_example // kotlin.String | 
val body : kotlin.String = body_example // kotlin.String | 
val serviceId : kotlin.Int = 56 // kotlin.Int | 
val serviceModule : kotlin.String = serviceModule_example // kotlin.String | 
try {
    val result : TicketNewResponse = apiInstance.addNewTicket(subject, body, serviceId, serviceModule)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#addNewTicket")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#addNewTicket")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subject** | **kotlin.String**|  |
 **body** | **kotlin.String**|  |
 **serviceId** | **kotlin.Int**|  |
 **serviceModule** | **kotlin.String**|  |

### Return type

[**TicketNewResponse**](TicketNewResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

<a name="closeTicket"></a>
# **closeTicket**
> CloseTicketResponseSchema closeTicket(id)

Close an open support ticket via simple GET request (no body required)

Use to close a ticket from a link or one-click action — closure-only equivalent of deleteTicketInfo with friendlier semantics. Calls Ticket::closeTicket on the resolved ticket and leaves the record fully readable; closed tickets disappear from the active inbox but remain in getTicketsList when view&#x3D;Closed. Path: id (int ticket ID, e.g. 1511222). Body: none. Returns: {success: true, text: &#x27;Ticket is closed!&#x27;} or {success: false, text: &#x27;Unable to close ticket&#x27;}. Errors: 401 unauthorized; 404 implied via &#x27;Unable to close ticket&#x27; when id is unknown or cross-account. Idempotent on already-closed tickets. Siblings: deleteTicketInfo (DELETE /tickets/{id} — same effect), getTicketInfo to confirm new status.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val id : kotlin.String = id_example // kotlin.String | Ticket ID
try {
    val result : CloseTicketResponseSchema = apiInstance.closeTicket(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#closeTicket")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#closeTicket")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **kotlin.String**| Ticket ID |

### Return type

[**CloseTicketResponseSchema**](CloseTicketResponseSchema.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="deleteTicketInfo"></a>
# **deleteTicketInfo**
> ViewTicketResponse deleteTicketInfo(id)

Close a customer ticket via DELETE verb (closes only, never destroys data)

Use when the customer marks a ticket resolved. IMPORTANT: despite the DELETE verb this only CLOSES the ticket via Ticket::closeTicket — no data is destroyed. Closed tickets remain readable through getTicketInfo and appear in getTicketsList when view&#x3D;Closed. Path: id (int ticket ID). Body: none. Returns: &#x27;Ticket is closed!&#x27; string on success. Errors: 401 unauthorized; 404/422 &#x27;Invalid ticket!&#x27; when id is unknown or owned by another account. Idempotent on already-closed tickets. Siblings: CloseTicket (GET /tickets/{id}/close — same effect, simpler URL), ReplyTicket to add a final reply before closing, getTicketInfo to verify state.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val id : java.math.BigDecimal = 1.2 // java.math.BigDecimal | Ticket ID number.
try {
    val result : ViewTicketResponse = apiInstance.deleteTicketInfo(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#deleteTicketInfo")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#deleteTicketInfo")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| Ticket ID number. |

### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getNewTicket"></a>
# **getNewTicket**
> getNewTicket()

Fetch services and product options to populate the new-ticket form

Use to populate dropdowns before calling addNewTicket. Returns the customer&#x27;s services grouped by product type so the user can attach a ticket to a specific resource. Iterates all enabled modules (vps, webhosting, domains, mail, etc.; mailbaby instances see only mail) and filters out services with status canceled, deleted, or fraud. Params: none. Body: none. Returns: object keyed by product TITLE (e.g. &#x27;Vps&#x27;, &#x27;Webhosting&#x27;), each value a map of &#x27;{module}-{service_id}&#x27; to a description string including title, type/plan, VPS hypervisor name where applicable, and uppercase status tag. Errors: 401 unauthorized. Use the returned product key as the &#x27;product&#x27; field on addNewTicket.  Sibling ops: &#x60;addNewTicket&#x60; (consumes the product key), &#x60;getTicketsList&#x60;.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
try {
    apiInstance.getNewTicket()
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#getNewTicket")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#getNewTicket")
    e.printStackTrace()
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

null (empty response body)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getTicketInfo"></a>
# **getTicketInfo**
> ViewTicketResponse getTicketInfo(id)

Get full ticket details including subject, status, and the reply thread

Use to render a ticket page or feed full context to an LLM. Path: id (int, ticket ID, e.g. 1511222). Returns ticket header (subject, status, department, dates), the ordered post/reply history, attachments, and any custom-field values. Resolved via Ticket::getTicket(id, account_lid) so cross-account access returns Invalid ticket. Body: none. Errors: 401 unauthorized; 404/422 &#x27;Invalid ticket!&#x27; when the id is unknown or owned by another account. Caveats: the same path with POST appends a reply (postTicketInfo) and DELETE closes the ticket (deleteTicketInfo) — it does not destroy data. Siblings: ReplyTicket, updateTicketInfo, CloseTicket, getTicketsList.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val id : java.math.BigDecimal = 1.2 // java.math.BigDecimal | Ticket ID number.
try {
    val result : ViewTicketResponse = apiInstance.getTicketInfo(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#getTicketInfo")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#getTicketInfo")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| Ticket ID number. |

### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="getTicketsList"></a>
# **getTicketsList**
> Tickets getTicketsList(page, period, view)

List the authenticated account&#x27;s support tickets with status and date filters

Use to browse the customer&#x27;s helpdesk tickets, paginated, with optional status and recency filters. Returns tickets where email matches the session account_lid. Query params: page (int, default 1, 50 per page), period (string: &#x27;30&#x27;, &#x27;90&#x27;, &#x27;365&#x27;, &#x27;1825&#x27;, or &#x27;all&#x27; days back; default &#x27;30&#x27;), view (string: &#x27;Open&#x27;, &#x27;Closed&#x27;, &#x27;On Hold&#x27;, &#x27;In Progress&#x27;; omit for all). Body: none. Returns: object with tickets[], total, pages, currentPage, st_count[] (counts grouped by status: Open/On Hold/Closed), selected_period, view. Errors: 401 unauthorized session. Note ticketstatusid mapping (Open&#x3D;4, On Hold&#x3D;5, Closed&#x3D;6, In Progress&#x3D;7). To search by subject/email/mask use postTicketsList. To open a ticket detail use getTicketInfo with the returned id. To create a new ticket see addNewTicket.  Sibling ops: &#x60;getTicketInfo&#x60; (detail), &#x60;postTicketsList&#x60; (search), &#x60;addNewTicket&#x60; (open new).

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val page : kotlin.Int = 56 // kotlin.Int | Page number for paginated results.
val period : kotlin.String = period_example // kotlin.String | How far back to show tickets from. Value is in days.
val view : kotlin.String = view_example // kotlin.String | The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types.
try {
    val result : Tickets = apiInstance.getTicketsList(page, period, view)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#getTicketsList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#getTicketsList")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **kotlin.Int**| Page number for paginated results. | [optional] [default to 1]
 **period** | **kotlin.String**| How far back to show tickets from. Value is in days. | [optional] [default to 30] [enum: 30, 90, 365, 1825, all]
 **view** | **kotlin.String**| The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types. | [optional] [enum: Open, Closed, On Hold, In Progress]

### Return type

[**Tickets**](Tickets.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="postTicketInfo"></a>
# **postTicketInfo**
> ViewTicketResponse postTicketInfo(id)

Append a reply (and optional attachment, server-access fields) to a ticket

Use to post a customer reply on an existing ticket. Path: id (int ticket ID). Body: body (string reply text; trimmed to first 500 words), file_attachment (multipart upload, optional), and the server-access custom fields ip/root_pass/sudo_user/sudo_pass/port_no/server_access (passwords AES-encrypted with auth_key&#x3D;7). Either body OR an attachment is required. Notifies any swticketwatchers staff via templated email after posting. Returns: {status: &#x27;success&#x27;, message: &#x27;Reply posted successfully&#x27;}. Errors: 400 &#x27;Please enter a message or attach a file&#x27;; 401 unauthorized; 404/422 &#x27;Invalid ticket!&#x27; when id missing or cross-account. Sibling: ReplyTicket (cleaner JSON-only reply at /tickets/{id}/reply), updateTicketInfo, getTicketInfo, deleteTicketInfo.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val id : java.math.BigDecimal = 1.2 // java.math.BigDecimal | Ticket ID number.
try {
    val result : ViewTicketResponse = apiInstance.postTicketInfo(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#postTicketInfo")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#postTicketInfo")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| Ticket ID number. |

### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="postTicketsList"></a>
# **postTicketsList**
> Tickets postTicketsList()

Search the authenticated account&#x27;s tickets by subject, email, or mask ID

Use when the user supplies a search term (subject keyword, email substring, or full ticket mask ID like &#x27;ABC-123-456&#x27;). Scoped to tickets owned by the session account_lid. Body (form): search (string, required). If the term contains exactly two hyphens it is treated as an exact ticketmaskid match; otherwise a LIKE search runs across subject, email, and ticketmaskid. Returns: array of up to 25 matching ticket rows ordered by lastactivity DESC, each enriched with lastactivity_time (human-relative). Errors: 400 if search is empty or missing; 401 unauthorized. Caveat: this is a POST that reads, not a creator. To create see addNewTicket. To paginate full inbox use getTicketsList. To open one use getTicketInfo.  Sibling ops: &#x60;getTicketsList&#x60; (full inbox), &#x60;getTicketInfo&#x60; (detail), &#x60;addNewTicket&#x60; (open new).

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
try {
    val result : Tickets = apiInstance.postTicketsList()
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#postTicketsList")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#postTicketsList")
    e.printStackTrace()
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

<a name="putTicketInfo"></a>
# **putTicketInfo**
> ViewTicketResponse putTicketInfo(id)

Update a ticket&#x27;s properties such as subject or status (stub, not implemented)

Reserved for future use to update ticket subject/status. The PHP handler is currently an empty stub that returns no body, so callers should not rely on it in production. Path: id (int). Body: would carry subject/status fields when implemented. Returns: undefined behavior today. Errors: 401 unauthorized; expect 404/422 when implemented if id is invalid or not owned. Caveats: prefer updateTicketInfo (POST /tickets/{id}/update) for editing custom-field values today, postTicketInfo to add a reply, CloseTicket or deleteTicketInfo to close. Avoid scripting against this endpoint until the handler ships. Siblings: getTicketInfo, ReplyTicket.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val id : java.math.BigDecimal = 1.2 // java.math.BigDecimal | Ticket ID number.
try {
    val result : ViewTicketResponse = apiInstance.putTicketInfo(id)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#putTicketInfo")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#putTicketInfo")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| Ticket ID number. |

### Return type

[**ViewTicketResponse**](ViewTicketResponse.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

<a name="replyTicket"></a>
# **replyTicket**
> ReplyTicketResponseSchema replyTicket(id, body)

Post a simple text reply to an existing ticket thread (no attachments)

Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: &#x27;Reply content cannot be empty!&#x27; | &#x27;Unable to reply ticket&#x27;}. Errors: 401 unauthorized; 404 implied via &#x27;Unable to reply ticket&#x27; when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val id : java.math.BigDecimal = 1.2 // java.math.BigDecimal | The ticket ID number.
val body : ReplyTicketRequest =  // ReplyTicketRequest | 
try {
    val result : ReplyTicketResponseSchema = apiInstance.replyTicket(id, body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#replyTicket")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#replyTicket")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The ticket ID number. |
 **body** | [**ReplyTicketRequest**](ReplyTicketRequest.md)|  | [optional]

### Return type

[**ReplyTicketResponseSchema**](ReplyTicketResponseSchema.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

<a name="replyTicket"></a>
# **replyTicket**
> ReplyTicketResponseSchema replyTicket(id, content)

Post a simple text reply to an existing ticket thread (no attachments)

Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: &#x27;Reply content cannot be empty!&#x27; | &#x27;Unable to reply ticket&#x27;}. Errors: 401 unauthorized; 404 implied via &#x27;Unable to reply ticket&#x27; when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val id : java.math.BigDecimal = 1.2 // java.math.BigDecimal | The ticket ID number.
val content : kotlin.String = content_example // kotlin.String | 
try {
    val result : ReplyTicketResponseSchema = apiInstance.replyTicket(id, content)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#replyTicket")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#replyTicket")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The ticket ID number. |
 **content** | **kotlin.String**|  | [optional]

### Return type

[**ReplyTicketResponseSchema**](ReplyTicketResponseSchema.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

<a name="updateTicketInfo"></a>
# **updateTicketInfo**
> UpdateTicketResponseSchema updateTicketInfo(id, body)

Update a ticket&#x27;s custom field values (server-access details, etc.)

Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: &#x27;Ticket is updated!&#x27;} or {success: false, text: &#x27;Unable to update ticket&#x27;}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: &#x60;getTicketInfo&#x60; (read), &#x60;ReplyTicket&#x60; (reply), &#x60;CloseTicket&#x60; (close).

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val id : java.math.BigDecimal = 1.2 // java.math.BigDecimal | The ticket ID number.
val body : UpdateTicket =  // UpdateTicket | 
try {
    val result : UpdateTicketResponseSchema = apiInstance.updateTicketInfo(id, body)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#updateTicketInfo")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#updateTicketInfo")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The ticket ID number. |
 **body** | [**UpdateTicket**](UpdateTicket.md)|  | [optional]

### Return type

[**UpdateTicketResponseSchema**](UpdateTicketResponseSchema.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

<a name="updateTicketInfo"></a>
# **updateTicketInfo**
> UpdateTicketResponseSchema updateTicketInfo(id, ip, ipAddress, customerServerAccess, rootPassword, sudoUsername, sudoPassword, port)

Update a ticket&#x27;s custom field values (server-access details, etc.)

Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: &#x27;Ticket is updated!&#x27;} or {success: false, text: &#x27;Unable to update ticket&#x27;}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: &#x60;getTicketInfo&#x60; (read), &#x60;ReplyTicket&#x60; (reply), &#x60;CloseTicket&#x60; (close).

### Example
```kotlin
// Import classes:
//import myadmin-client-kotlin-client.infrastructure.*
//import io.swagger.client.models.*;

val apiInstance = TicketsApi()
val id : java.math.BigDecimal = 1.2 // java.math.BigDecimal | The ticket ID number.
val ip : kotlin.String = ip_example // kotlin.String | 
val ipAddress : kotlin.String = ipAddress_example // kotlin.String | 
val customerServerAccess : kotlin.String = customerServerAccess_example // kotlin.String | 
val rootPassword : kotlin.String = rootPassword_example // kotlin.String | 
val sudoUsername : kotlin.String = sudoUsername_example // kotlin.String | 
val sudoPassword : kotlin.String = sudoPassword_example // kotlin.String | 
val port : kotlin.Int = 56 // kotlin.Int | 
try {
    val result : UpdateTicketResponseSchema = apiInstance.updateTicketInfo(id, ip, ipAddress, customerServerAccess, rootPassword, sudoUsername, sudoPassword, port)
    println(result)
} catch (e: ClientException) {
    println("4xx response calling TicketsApi#updateTicketInfo")
    e.printStackTrace()
} catch (e: ServerException) {
    println("5xx response calling TicketsApi#updateTicketInfo")
    e.printStackTrace()
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **java.math.BigDecimal**| The ticket ID number. |
 **ip** | **kotlin.String**|  | [optional]
 **ipAddress** | **kotlin.String**|  | [optional]
 **customerServerAccess** | **kotlin.String**|  | [optional] [enum: y, n]
 **rootPassword** | **kotlin.String**|  | [optional]
 **sudoUsername** | **kotlin.String**|  | [optional]
 **sudoPassword** | **kotlin.String**|  | [optional]
 **port** | **kotlin.Int**|  | [optional]

### Return type

[**UpdateTicketResponseSchema**](UpdateTicketResponseSchema.md)

### Authorization

[apiKeyAuth](../README.md#apiKeyAuth), [sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

