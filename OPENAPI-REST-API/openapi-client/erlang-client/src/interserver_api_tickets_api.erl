-module(interserver_api_tickets_api).

-export([add_new_ticket/2, add_new_ticket/3,
         close_ticket/2, close_ticket/3,
         delete_ticket_info/2, delete_ticket_info/3,
         get_new_ticket/1, get_new_ticket/2,
         get_ticket_info/2, get_ticket_info/3,
         get_tickets_list/1, get_tickets_list/2,
         post_ticket_info/2, post_ticket_info/3,
         post_tickets_list/1, post_tickets_list/2,
         put_ticket_info/2, put_ticket_info/3,
         reply_ticket/3, reply_ticket/4,
         update_ticket_info/3, update_ticket_info/4]).

-define(BASE_URL, <<"/apiv2">>).

%% @doc Open a new helpdesk ticket, optionally linked to a service and attachments
%% Use when the customer wants to contact support. Creates the Kayako ticket in the 'New Unassigned' department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format '{module}-{service_id}' from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.
-spec add_new_ticket(ctx:ctx(), interserver_api_ticket_new:interserver_api_ticket_new()) -> {ok, interserver_api_ticket_new_response:interserver_api_ticket_new_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_new_ticket(Ctx, InterserverApiTicketNew) ->
    add_new_ticket(Ctx, InterserverApiTicketNew, #{}).

-spec add_new_ticket(ctx:ctx(), interserver_api_ticket_new:interserver_api_ticket_new(), maps:map()) -> {ok, interserver_api_ticket_new_response:interserver_api_ticket_new_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
add_new_ticket(Ctx, InterserverApiTicketNew, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/tickets/new"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiTicketNew,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Close an open support ticket via simple GET request (no body required)
%% Use to close a ticket from a link or one-click action — closure-only equivalent of deleteTicketInfo with friendlier semantics. Calls Ticket::closeTicket on the resolved ticket and leaves the record fully readable; closed tickets disappear from the active inbox but remain in getTicketsList when view=Closed. Path: id (int ticket ID, e.g. 1511222). Body: none. Returns: {success: true, text: 'Ticket is closed!'} or {success: false, text: 'Unable to close ticket'}. Errors: 401 unauthorized; 404 implied via 'Unable to close ticket' when id is unknown or cross-account. Idempotent on already-closed tickets. Siblings: deleteTicketInfo (DELETE /tickets/{id} — same effect), getTicketInfo to confirm new status.
-spec close_ticket(ctx:ctx(), binary()) -> {ok, interserver_api_close_ticket_response_schema:interserver_api_close_ticket_response_schema(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
close_ticket(Ctx, Id) ->
    close_ticket(Ctx, Id, #{}).

-spec close_ticket(ctx:ctx(), binary(), maps:map()) -> {ok, interserver_api_close_ticket_response_schema:interserver_api_close_ticket_response_schema(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
close_ticket(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/tickets/", Id, "/close"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Close a customer ticket via DELETE verb (closes only, never destroys data)
%% Use when the customer marks a ticket resolved. IMPORTANT: despite the DELETE verb this only CLOSES the ticket via Ticket::closeTicket — no data is destroyed. Closed tickets remain readable through getTicketInfo and appear in getTicketsList when view=Closed. Path: id (int ticket ID). Body: none. Returns: 'Ticket is closed!' string on success. Errors: 401 unauthorized; 404/422 'Invalid ticket!' when id is unknown or owned by another account. Idempotent on already-closed tickets. Siblings: CloseTicket (GET /tickets/{id}/close — same effect, simpler URL), ReplyTicket to add a final reply before closing, getTicketInfo to verify state.
-spec delete_ticket_info(ctx:ctx(), integer()) -> {ok, interserver_api_view_ticket_response:interserver_api_view_ticket_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_ticket_info(Ctx, Id) ->
    delete_ticket_info(Ctx, Id, #{}).

-spec delete_ticket_info(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_view_ticket_response:interserver_api_view_ticket_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
delete_ticket_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = delete,
    Path = [?BASE_URL, "/tickets/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Fetch services and product options to populate the new-ticket form
%% Use to populate dropdowns before calling addNewTicket. Returns the customer's services grouped by product type so the user can attach a ticket to a specific resource. Iterates all enabled modules (vps, webhosting, domains, mail, etc.; mailbaby instances see only mail) and filters out services with status canceled, deleted, or fraud. Params: none. Body: none. Returns: object keyed by product TITLE (e.g. 'Vps', 'Webhosting'), each value a map of '{module}-{service_id}' to a description string including title, type/plan, VPS hypervisor name where applicable, and uppercase status tag. Errors: 401 unauthorized. Use the returned product key as the 'product' field on addNewTicket.  Sibling ops: `addNewTicket` (consumes the product key), `getTicketsList`.
-spec get_new_ticket(ctx:ctx()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_ticket(Ctx) ->
    get_new_ticket(Ctx, #{}).

-spec get_new_ticket(ctx:ctx(), maps:map()) -> {ok, [], interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_new_ticket(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/tickets/new"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Get full ticket details including subject, status, and the reply thread
%% Use to render a ticket page or feed full context to an LLM. Path: id (int, ticket ID, e.g. 1511222). Returns ticket header (subject, status, department, dates), the ordered post/reply history, attachments, and any custom-field values. Resolved via Ticket::getTicket(id, account_lid) so cross-account access returns Invalid ticket. Body: none. Errors: 401 unauthorized; 404/422 'Invalid ticket!' when the id is unknown or owned by another account. Caveats: the same path with POST appends a reply (postTicketInfo) and DELETE closes the ticket (deleteTicketInfo) — it does not destroy data. Siblings: ReplyTicket, updateTicketInfo, CloseTicket, getTicketsList.
-spec get_ticket_info(ctx:ctx(), integer()) -> {ok, interserver_api_view_ticket_response:interserver_api_view_ticket_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ticket_info(Ctx, Id) ->
    get_ticket_info(Ctx, Id, #{}).

-spec get_ticket_info(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_view_ticket_response:interserver_api_view_ticket_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_ticket_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/tickets/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc List the authenticated account's support tickets with status and date filters
%% Use to browse the customer's helpdesk tickets, paginated, with optional status and recency filters. Returns tickets where email matches the session account_lid. Query params: page (int, default 1, 50 per page), period (string: '30', '90', '365', '1825', or 'all' days back; default '30'), view (string: 'Open', 'Closed', 'On Hold', 'In Progress'; omit for all). Body: none. Returns: object with tickets[], total, pages, currentPage, st_count[] (counts grouped by status: Open/On Hold/Closed), selected_period, view. Errors: 401 unauthorized session. Note ticketstatusid mapping (Open=4, On Hold=5, Closed=6, In Progress=7). To search by subject/email/mask use postTicketsList. To open a ticket detail use getTicketInfo with the returned id. To create a new ticket see addNewTicket.  Sibling ops: `getTicketInfo` (detail), `postTicketsList` (search), `addNewTicket` (open new).
-spec get_tickets_list(ctx:ctx()) -> {ok, interserver_api_tickets:interserver_api_tickets(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_tickets_list(Ctx) ->
    get_tickets_list(Ctx, #{}).

-spec get_tickets_list(ctx:ctx(), maps:map()) -> {ok, interserver_api_tickets:interserver_api_tickets(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
get_tickets_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = get,
    Path = [?BASE_URL, "/tickets"],
    QS = lists:flatten([])++interserver_api_utils:optional_params(['page', 'period', 'view'], _OptionalParams),
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Append a reply (and optional attachment, server-access fields) to a ticket
%% Use to post a customer reply on an existing ticket. Path: id (int ticket ID). Body: body (string reply text; trimmed to first 500 words), file_attachment (multipart upload, optional), and the server-access custom fields ip/root_pass/sudo_user/sudo_pass/port_no/server_access (passwords AES-encrypted with auth_key=7). Either body OR an attachment is required. Notifies any swticketwatchers staff via templated email after posting. Returns: {status: 'success', message: 'Reply posted successfully'}. Errors: 400 'Please enter a message or attach a file'; 401 unauthorized; 404/422 'Invalid ticket!' when id missing or cross-account. Sibling: ReplyTicket (cleaner JSON-only reply at /tickets/{id}/reply), updateTicketInfo, getTicketInfo, deleteTicketInfo.
-spec post_ticket_info(ctx:ctx(), integer()) -> {ok, interserver_api_view_ticket_response:interserver_api_view_ticket_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_ticket_info(Ctx, Id) ->
    post_ticket_info(Ctx, Id, #{}).

-spec post_ticket_info(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_view_ticket_response:interserver_api_view_ticket_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_ticket_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/tickets/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Search the authenticated account's tickets by subject, email, or mask ID
%% Use when the user supplies a search term (subject keyword, email substring, or full ticket mask ID like 'ABC-123-456'). Scoped to tickets owned by the session account_lid. Body (form): search (string, required). If the term contains exactly two hyphens it is treated as an exact ticketmaskid match; otherwise a LIKE search runs across subject, email, and ticketmaskid. Returns: array of up to 25 matching ticket rows ordered by lastactivity DESC, each enriched with lastactivity_time (human-relative). Errors: 400 if search is empty or missing; 401 unauthorized. Caveat: this is a POST that reads, not a creator. To create see addNewTicket. To paginate full inbox use getTicketsList. To open one use getTicketInfo.  Sibling ops: `getTicketsList` (full inbox), `getTicketInfo` (detail), `addNewTicket` (open new).
-spec post_tickets_list(ctx:ctx()) -> {ok, interserver_api_tickets:interserver_api_tickets(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_tickets_list(Ctx) ->
    post_tickets_list(Ctx, #{}).

-spec post_tickets_list(ctx:ctx(), maps:map()) -> {ok, interserver_api_tickets:interserver_api_tickets(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
post_tickets_list(Ctx, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/tickets"],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a ticket's properties such as subject or status (stub, not implemented)
%% Reserved for future use to update ticket subject/status. The PHP handler is currently an empty stub that returns no body, so callers should not rely on it in production. Path: id (int). Body: would carry subject/status fields when implemented. Returns: undefined behavior today. Errors: 401 unauthorized; expect 404/422 when implemented if id is invalid or not owned. Caveats: prefer updateTicketInfo (POST /tickets/{id}/update) for editing custom-field values today, postTicketInfo to add a reply, CloseTicket or deleteTicketInfo to close. Avoid scripting against this endpoint until the handler ships. Siblings: getTicketInfo, ReplyTicket.
-spec put_ticket_info(ctx:ctx(), integer()) -> {ok, interserver_api_view_ticket_response:interserver_api_view_ticket_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_ticket_info(Ctx, Id) ->
    put_ticket_info(Ctx, Id, #{}).

-spec put_ticket_info(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_view_ticket_response:interserver_api_view_ticket_response(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
put_ticket_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = put,
    Path = [?BASE_URL, "/tickets/", Id, ""],
    QS = [],
    Headers = [],
    Body1 = [],
    ContentTypeHeader = interserver_api_utils:select_header_content_type([]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Post a simple text reply to an existing ticket thread (no attachments)
%% Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: 'Reply content cannot be empty!' | 'Unable to reply ticket'}. Errors: 401 unauthorized; 404 implied via 'Unable to reply ticket' when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.
-spec reply_ticket(ctx:ctx(), integer()) -> {ok, interserver_api_reply_ticket_response_schema:interserver_api_reply_ticket_response_schema(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
reply_ticket(Ctx, Id) ->
    reply_ticket(Ctx, Id, #{}).

-spec reply_ticket(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_reply_ticket_response_schema:interserver_api_reply_ticket_response_schema(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
reply_ticket(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/tickets/", Id, "/reply"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiReplyTicketRequest,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).

%% @doc Update a ticket's custom field values (server-access details, etc.)
%% Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: 'Ticket is updated!'} or {success: false, text: 'Unable to update ticket'}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: `getTicketInfo` (read), `ReplyTicket` (reply), `CloseTicket` (close).
-spec update_ticket_info(ctx:ctx(), integer()) -> {ok, interserver_api_update_ticket_response_schema:interserver_api_update_ticket_response_schema(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_ticket_info(Ctx, Id) ->
    update_ticket_info(Ctx, Id, #{}).

-spec update_ticket_info(ctx:ctx(), integer(), maps:map()) -> {ok, interserver_api_update_ticket_response_schema:interserver_api_update_ticket_response_schema(), interserver_api_utils:response_info()} | {ok, hackney:client_ref()} | {error, term(), interserver_api_utils:response_info()}.
update_ticket_info(Ctx, Id, Optional) ->
    _OptionalParams = maps:get(params, Optional, #{}),
    Cfg = maps:get(cfg, Optional, application:get_env(interserver_api_api, config, #{})),

    Method = post,
    Path = [?BASE_URL, "/tickets/", Id, "/update"],
    QS = [],
    Headers = [],
    Body1 = InterserverApiUpdateTicket,
    ContentTypeHeader = interserver_api_utils:select_header_content_type([<<"application/json">>, <<"multipart/form-data">>]),
    Opts = maps:get(hackney_opts, Optional, []),

    interserver_api_utils:request(Ctx, Method, Path, QS, ContentTypeHeader++Headers, Body1, Opts, Cfg).


