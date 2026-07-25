# TicketsApi

All URIs are relative to *https://my.interserver.net/apiv2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**add_new_ticket**](TicketsApi.md#add_new_ticket) | **POST** /tickets/new | Open a new helpdesk ticket, optionally linked to a service and attachments
[**close_ticket**](TicketsApi.md#close_ticket) | **GET** /tickets/{id}/close | Close an open support ticket via simple GET request (no body required)
[**delete_ticket_info**](TicketsApi.md#delete_ticket_info) | **DELETE** /tickets/{id} | Close a customer ticket via DELETE verb (closes only, never destroys data)
[**get_new_ticket**](TicketsApi.md#get_new_ticket) | **GET** /tickets/new | Fetch services and product options to populate the new-ticket form
[**get_ticket_info**](TicketsApi.md#get_ticket_info) | **GET** /tickets/{id} | Get full ticket details including subject, status, and the reply thread
[**get_tickets_list**](TicketsApi.md#get_tickets_list) | **GET** /tickets | List the authenticated account&#39;s support tickets with status and date filters
[**post_ticket_info**](TicketsApi.md#post_ticket_info) | **POST** /tickets/{id} | Append a reply (and optional attachment, server-access fields) to a ticket
[**post_tickets_list**](TicketsApi.md#post_tickets_list) | **POST** /tickets | Search the authenticated account&#39;s tickets by subject, email, or mask ID
[**put_ticket_info**](TicketsApi.md#put_ticket_info) | **PUT** /tickets/{id} | Update a ticket&#39;s properties such as subject or status (stub, not implemented)
[**reply_ticket**](TicketsApi.md#reply_ticket) | **POST** /tickets/{id}/reply | Post a simple text reply to an existing ticket thread (no attachments)
[**update_ticket_info**](TicketsApi.md#update_ticket_info) | **POST** /tickets/{id}/update | Update a ticket&#39;s custom field values (server-access details, etc.)


# **add_new_ticket**
> `add_new_ticket`(_api::`TicketsApi`, `ticket_new`::`TicketNew`; _mediaType=nothing) -> `TicketNewResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `add_new_ticket`(_api::`TicketsApi`, response_stream::`Channel`, `ticket_new`::`TicketNew`; _mediaType=nothing) -> `Channel`{ `TicketNewResponse` }, `OpenAPI.Clients.ApiResponse`

Open a new helpdesk ticket, optionally linked to a service and attachments

Use when the customer wants to contact support. Creates the Kayako ticket in the 'New Unassigned' department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format '{module}-{service_id}' from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`TicketsApi`** | API context | 
**`ticket_new`** | [**`TicketNew`**](TicketNew.md) |  |

### Return type

[**`TicketNewResponse`**](TicketNewResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **close_ticket**
> `close_ticket`(_api::`TicketsApi`, `id`::`String`; _mediaType=nothing) -> `CloseTicketResponseSchema`, `OpenAPI.Clients.ApiResponse` <br/>
> `close_ticket`(_api::`TicketsApi`, response_stream::`Channel`, `id`::`String`; _mediaType=nothing) -> `Channel`{ `CloseTicketResponseSchema` }, `OpenAPI.Clients.ApiResponse`

Close an open support ticket via simple GET request (no body required)

Use to close a ticket from a link or one-click action — closure-only equivalent of deleteTicketInfo with friendlier semantics. Calls Ticket::closeTicket on the resolved ticket and leaves the record fully readable; closed tickets disappear from the active inbox but remain in getTicketsList when view=Closed. Path: id (int ticket ID, e.g. 1511222). Body: none. Returns: {success: true, text: 'Ticket is closed!'} or {success: false, text: 'Unable to close ticket'}. Errors: 401 unauthorized; 404 implied via 'Unable to close ticket' when id is unknown or cross-account. Idempotent on already-closed tickets. Siblings: deleteTicketInfo (DELETE /tickets/{id} — same effect), getTicketInfo to confirm new status.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`TicketsApi`** | API context | 
**`id`** | **`String`** | Ticket ID |

### Return type

[**`CloseTicketResponseSchema`**](CloseTicketResponseSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **delete_ticket_info**
> `delete_ticket_info`(_api::`TicketsApi`, `id`::`Float64`; _mediaType=nothing) -> `ViewTicketResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `delete_ticket_info`(_api::`TicketsApi`, response_stream::`Channel`, `id`::`Float64`; _mediaType=nothing) -> `Channel`{ `ViewTicketResponse` }, `OpenAPI.Clients.ApiResponse`

Close a customer ticket via DELETE verb (closes only, never destroys data)

Use when the customer marks a ticket resolved. IMPORTANT: despite the DELETE verb this only CLOSES the ticket via Ticket::closeTicket — no data is destroyed. Closed tickets remain readable through getTicketInfo and appear in getTicketsList when view=Closed. Path: id (int ticket ID). Body: none. Returns: 'Ticket is closed!' string on success. Errors: 401 unauthorized; 404/422 'Invalid ticket!' when id is unknown or owned by another account. Idempotent on already-closed tickets. Siblings: CloseTicket (GET /tickets/{id}/close — same effect, simpler URL), ReplyTicket to add a final reply before closing, getTicketInfo to verify state.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`TicketsApi`** | API context | 
**`id`** | **`Float64`** | Ticket ID number. |

### Return type

[**`ViewTicketResponse`**](ViewTicketResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_new_ticket**
> `get_new_ticket`(_api::`TicketsApi`; _mediaType=nothing) -> `Nothing`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_new_ticket`(_api::`TicketsApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Nothing` }, `OpenAPI.Clients.ApiResponse`

Fetch services and product options to populate the new-ticket form

Use to populate dropdowns before calling addNewTicket. Returns the customer's services grouped by product type so the user can attach a ticket to a specific resource. Iterates all enabled modules (vps, webhosting, domains, mail, etc.; mailbaby instances see only mail) and filters out services with status canceled, deleted, or fraud. Params: none. Body: none. Returns: object keyed by product TITLE (e.g. 'Vps', 'Webhosting'), each value a map of '{module}-{service_id}' to a description string including title, type/plan, VPS hypervisor name where applicable, and uppercase status tag. Errors: 401 unauthorized. Use the returned product key as the 'product' field on addNewTicket.  Sibling ops: `addNewTicket` (consumes the product key), `getTicketsList`.

### Required Parameters
This endpoint does not need any parameter.

### Return type

`Nothing`

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_ticket_info**
> `get_ticket_info`(_api::`TicketsApi`, `id`::`Float64`; _mediaType=nothing) -> `ViewTicketResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_ticket_info`(_api::`TicketsApi`, response_stream::`Channel`, `id`::`Float64`; _mediaType=nothing) -> `Channel`{ `ViewTicketResponse` }, `OpenAPI.Clients.ApiResponse`

Get full ticket details including subject, status, and the reply thread

Use to render a ticket page or feed full context to an LLM. Path: id (int, ticket ID, e.g. 1511222). Returns ticket header (subject, status, department, dates), the ordered post/reply history, attachments, and any custom-field values. Resolved via Ticket::getTicket(id, account_lid) so cross-account access returns Invalid ticket. Body: none. Errors: 401 unauthorized; 404/422 'Invalid ticket!' when the id is unknown or owned by another account. Caveats: the same path with POST appends a reply (postTicketInfo) and DELETE closes the ticket (deleteTicketInfo) — it does not destroy data. Siblings: ReplyTicket, updateTicketInfo, CloseTicket, getTicketsList.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`TicketsApi`** | API context | 
**`id`** | **`Float64`** | Ticket ID number. |

### Return type

[**`ViewTicketResponse`**](ViewTicketResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **get_tickets_list**
> `get_tickets_list`(_api::`TicketsApi`; `page`=nothing, `period`=nothing, `view`=nothing, _mediaType=nothing) -> `Tickets`, `OpenAPI.Clients.ApiResponse` <br/>
> `get_tickets_list`(_api::`TicketsApi`, response_stream::`Channel`; `page`=nothing, `period`=nothing, `view`=nothing, _mediaType=nothing) -> `Channel`{ `Tickets` }, `OpenAPI.Clients.ApiResponse`

List the authenticated account's support tickets with status and date filters

Use to browse the customer's helpdesk tickets, paginated, with optional status and recency filters. Returns tickets where email matches the session account_lid. Query params: page (int, default 1, 50 per page), period (string: '30', '90', '365', '1825', or 'all' days back; default '30'), view (string: 'Open', 'Closed', 'On Hold', 'In Progress'; omit for all). Body: none. Returns: object with tickets[], total, pages, currentPage, st_count[] (counts grouped by status: Open/On Hold/Closed), selected_period, view. Errors: 401 unauthorized session. Note ticketstatusid mapping (Open=4, On Hold=5, Closed=6, In Progress=7). To search by subject/email/mask use postTicketsList. To open a ticket detail use getTicketInfo with the returned id. To create a new ticket see addNewTicket.  Sibling ops: `getTicketInfo` (detail), `postTicketsList` (search), `addNewTicket` (open new).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`TicketsApi`** | API context | 

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`page`** | **`Int64`** | Page number for paginated results. | [default to 1]
 **`period`** | **`String`** | How far back to show tickets from. Value is in days. | [default to &quot;30&quot;]
 **`view`** | **`String`** | The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types. | [default to nothing]

### Return type

[**`Tickets`**](Tickets.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_ticket_info**
> `post_ticket_info`(_api::`TicketsApi`, `id`::`Float64`; _mediaType=nothing) -> `ViewTicketResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_ticket_info`(_api::`TicketsApi`, response_stream::`Channel`, `id`::`Float64`; _mediaType=nothing) -> `Channel`{ `ViewTicketResponse` }, `OpenAPI.Clients.ApiResponse`

Append a reply (and optional attachment, server-access fields) to a ticket

Use to post a customer reply on an existing ticket. Path: id (int ticket ID). Body: body (string reply text; trimmed to first 500 words), file_attachment (multipart upload, optional), and the server-access custom fields ip/root_pass/sudo_user/sudo_pass/port_no/server_access (passwords AES-encrypted with auth_key=7). Either body OR an attachment is required. Notifies any swticketwatchers staff via templated email after posting. Returns: {status: 'success', message: 'Reply posted successfully'}. Errors: 400 'Please enter a message or attach a file'; 401 unauthorized; 404/422 'Invalid ticket!' when id missing or cross-account. Sibling: ReplyTicket (cleaner JSON-only reply at /tickets/{id}/reply), updateTicketInfo, getTicketInfo, deleteTicketInfo.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`TicketsApi`** | API context | 
**`id`** | **`Float64`** | Ticket ID number. |

### Return type

[**`ViewTicketResponse`**](ViewTicketResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **post_tickets_list**
> `post_tickets_list`(_api::`TicketsApi`; _mediaType=nothing) -> `Tickets`, `OpenAPI.Clients.ApiResponse` <br/>
> `post_tickets_list`(_api::`TicketsApi`, response_stream::`Channel`; _mediaType=nothing) -> `Channel`{ `Tickets` }, `OpenAPI.Clients.ApiResponse`

Search the authenticated account's tickets by subject, email, or mask ID

Use when the user supplies a search term (subject keyword, email substring, or full ticket mask ID like 'ABC-123-456'). Scoped to tickets owned by the session account_lid. Body (form): search (string, required). If the term contains exactly two hyphens it is treated as an exact ticketmaskid match; otherwise a LIKE search runs across subject, email, and ticketmaskid. Returns: array of up to 25 matching ticket rows ordered by lastactivity DESC, each enriched with lastactivity_time (human-relative). Errors: 400 if search is empty or missing; 401 unauthorized. Caveat: this is a POST that reads, not a creator. To create see addNewTicket. To paginate full inbox use getTicketsList. To open one use getTicketInfo.  Sibling ops: `getTicketsList` (full inbox), `getTicketInfo` (detail), `addNewTicket` (open new).

### Required Parameters
This endpoint does not need any parameter.

### Return type

[**`Tickets`**](Tickets.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **put_ticket_info**
> `put_ticket_info`(_api::`TicketsApi`, `id`::`Float64`; _mediaType=nothing) -> `ViewTicketResponse`, `OpenAPI.Clients.ApiResponse` <br/>
> `put_ticket_info`(_api::`TicketsApi`, response_stream::`Channel`, `id`::`Float64`; _mediaType=nothing) -> `Channel`{ `ViewTicketResponse` }, `OpenAPI.Clients.ApiResponse`

Update a ticket's properties such as subject or status (stub, not implemented)

Reserved for future use to update ticket subject/status. The PHP handler is currently an empty stub that returns no body, so callers should not rely on it in production. Path: id (int). Body: would carry subject/status fields when implemented. Returns: undefined behavior today. Errors: 401 unauthorized; expect 404/422 when implemented if id is invalid or not owned. Caveats: prefer updateTicketInfo (POST /tickets/{id}/update) for editing custom-field values today, postTicketInfo to add a reply, CloseTicket or deleteTicketInfo to close. Avoid scripting against this endpoint until the handler ships. Siblings: getTicketInfo, ReplyTicket.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`TicketsApi`** | API context | 
**`id`** | **`Float64`** | Ticket ID number. |

### Return type

[**`ViewTicketResponse`**](ViewTicketResponse.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **reply_ticket**
> `reply_ticket`(_api::`TicketsApi`, `id`::`Float64`; `reply_ticket_request`=nothing, _mediaType=nothing) -> `ReplyTicketResponseSchema`, `OpenAPI.Clients.ApiResponse` <br/>
> `reply_ticket`(_api::`TicketsApi`, response_stream::`Channel`, `id`::`Float64`; `reply_ticket_request`=nothing, _mediaType=nothing) -> `Channel`{ `ReplyTicketResponseSchema` }, `OpenAPI.Clients.ApiResponse`

Post a simple text reply to an existing ticket thread (no attachments)

Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: 'Reply content cannot be empty!' | 'Unable to reply ticket'}. Errors: 401 unauthorized; 404 implied via 'Unable to reply ticket' when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`TicketsApi`** | API context | 
**`id`** | **`Float64`** | The ticket ID number. |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`reply_ticket_request`** | [**`ReplyTicketRequest`**](ReplyTicketRequest.md) |  | 

### Return type

[**`ReplyTicketResponseSchema`**](ReplyTicketResponseSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

# **update_ticket_info**
> `update_ticket_info`(_api::`TicketsApi`, `id`::`Float64`; `update_ticket`=nothing, _mediaType=nothing) -> `UpdateTicketResponseSchema`, `OpenAPI.Clients.ApiResponse` <br/>
> `update_ticket_info`(_api::`TicketsApi`, response_stream::`Channel`, `id`::`Float64`; `update_ticket`=nothing, _mediaType=nothing) -> `Channel`{ `UpdateTicketResponseSchema` }, `OpenAPI.Clients.ApiResponse`

Update a ticket's custom field values (server-access details, etc.)

Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: 'Ticket is updated!'} or {success: false, text: 'Unable to update ticket'}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: `getTicketInfo` (read), `ReplyTicket` (reply), `CloseTicket` (close).

### Required Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_api** | **`TicketsApi`** | API context | 
**`id`** | **`Float64`** | The ticket ID number. |

### Optional Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **`update_ticket`** | [**`UpdateTicket`**](UpdateTicket.md) |  | 

### Return type

[**`UpdateTicketResponseSchema`**](UpdateTicketResponseSchema.md)

### Authorization

[sessionIdCookieAuth](../README.md#sessionIdCookieAuth), [apiKeyAuth](../README.md#apiKeyAuth), [sessionIdHeaderAuth](../README.md#sessionIdHeaderAuth)

### HTTP request headers

 - **Content-Type**: application/json, multipart/form-data
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#api-endpoints) [[Back to Model list]](../README.md#models) [[Back to README]](../README.md)

