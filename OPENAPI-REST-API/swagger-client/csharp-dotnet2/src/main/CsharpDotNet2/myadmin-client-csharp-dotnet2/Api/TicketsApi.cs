using System;
using System.Collections.Generic;
using RestSharp;
using IO.Swagger.Client;
using IO.Swagger.Model;

namespace IO.Swagger.Api
{
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public interface ITicketsApi
    {
        /// <summary>
        /// Open a new helpdesk ticket, optionally linked to a service and attachments Use when the customer wants to contact support. Creates the Kayako ticket in the &#x27;New Unassigned&#x27; department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format &#x27;{module}-{service_id}&#x27; from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.
        /// </summary>
        /// <param name="body"></param>
        /// <returns>TicketNewResponse</returns>
        TicketNewResponse AddNewTicket (TicketNew body);
        /// <summary>
        /// Open a new helpdesk ticket, optionally linked to a service and attachments Use when the customer wants to contact support. Creates the Kayako ticket in the &#x27;New Unassigned&#x27; department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format &#x27;{module}-{service_id}&#x27; from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.
        /// </summary>
        /// <param name="subject"></param>
        /// <param name="body"></param>
        /// <param name="serviceId"></param>
        /// <param name="serviceModule"></param>
        /// <returns>TicketNewResponse</returns>
        TicketNewResponse AddNewTicket (string subject, string body, int? serviceId, string serviceModule);
        /// <summary>
        /// Close an open support ticket via simple GET request (no body required) Use to close a ticket from a link or one-click action — closure-only equivalent of deleteTicketInfo with friendlier semantics. Calls Ticket::closeTicket on the resolved ticket and leaves the record fully readable; closed tickets disappear from the active inbox but remain in getTicketsList when view&#x3D;Closed. Path: id (int ticket ID, e.g. 1511222). Body: none. Returns: {success: true, text: &#x27;Ticket is closed!&#x27;} or {success: false, text: &#x27;Unable to close ticket&#x27;}. Errors: 401 unauthorized; 404 implied via &#x27;Unable to close ticket&#x27; when id is unknown or cross-account. Idempotent on already-closed tickets. Siblings: deleteTicketInfo (DELETE /tickets/{id} — same effect), getTicketInfo to confirm new status.
        /// </summary>
        /// <param name="id">Ticket ID</param>
        /// <returns>CloseTicketResponseSchema</returns>
        CloseTicketResponseSchema CloseTicket (string id);
        /// <summary>
        /// Close a customer ticket via DELETE verb (closes only, never destroys data) Use when the customer marks a ticket resolved. IMPORTANT: despite the DELETE verb this only CLOSES the ticket via Ticket::closeTicket — no data is destroyed. Closed tickets remain readable through getTicketInfo and appear in getTicketsList when view&#x3D;Closed. Path: id (int ticket ID). Body: none. Returns: &#x27;Ticket is closed!&#x27; string on success. Errors: 401 unauthorized; 404/422 &#x27;Invalid ticket!&#x27; when id is unknown or owned by another account. Idempotent on already-closed tickets. Siblings: CloseTicket (GET /tickets/{id}/close — same effect, simpler URL), ReplyTicket to add a final reply before closing, getTicketInfo to verify state.
        /// </summary>
        /// <param name="id">Ticket ID number.</param>
        /// <returns>ViewTicketResponse</returns>
        ViewTicketResponse DeleteTicketInfo (decimal? id);
        /// <summary>
        /// Fetch services and product options to populate the new-ticket form Use to populate dropdowns before calling addNewTicket. Returns the customer&#x27;s services grouped by product type so the user can attach a ticket to a specific resource. Iterates all enabled modules (vps, webhosting, domains, mail, etc.; mailbaby instances see only mail) and filters out services with status canceled, deleted, or fraud. Params: none. Body: none. Returns: object keyed by product TITLE (e.g. &#x27;Vps&#x27;, &#x27;Webhosting&#x27;), each value a map of &#x27;{module}-{service_id}&#x27; to a description string including title, type/plan, VPS hypervisor name where applicable, and uppercase status tag. Errors: 401 unauthorized. Use the returned product key as the &#x27;product&#x27; field on addNewTicket.  Sibling ops: &#x60;addNewTicket&#x60; (consumes the product key), &#x60;getTicketsList&#x60;.
        /// </summary>
        /// <returns></returns>
        void GetNewTicket ();
        /// <summary>
        /// Get full ticket details including subject, status, and the reply thread Use to render a ticket page or feed full context to an LLM. Path: id (int, ticket ID, e.g. 1511222). Returns ticket header (subject, status, department, dates), the ordered post/reply history, attachments, and any custom-field values. Resolved via Ticket::getTicket(id, account_lid) so cross-account access returns Invalid ticket. Body: none. Errors: 401 unauthorized; 404/422 &#x27;Invalid ticket!&#x27; when the id is unknown or owned by another account. Caveats: the same path with POST appends a reply (postTicketInfo) and DELETE closes the ticket (deleteTicketInfo) — it does not destroy data. Siblings: ReplyTicket, updateTicketInfo, CloseTicket, getTicketsList.
        /// </summary>
        /// <param name="id">Ticket ID number.</param>
        /// <returns>ViewTicketResponse</returns>
        ViewTicketResponse GetTicketInfo (decimal? id);
        /// <summary>
        /// List the authenticated account&#x27;s support tickets with status and date filters Use to browse the customer&#x27;s helpdesk tickets, paginated, with optional status and recency filters. Returns tickets where email matches the session account_lid. Query params: page (int, default 1, 50 per page), period (string: &#x27;30&#x27;, &#x27;90&#x27;, &#x27;365&#x27;, &#x27;1825&#x27;, or &#x27;all&#x27; days back; default &#x27;30&#x27;), view (string: &#x27;Open&#x27;, &#x27;Closed&#x27;, &#x27;On Hold&#x27;, &#x27;In Progress&#x27;; omit for all). Body: none. Returns: object with tickets[], total, pages, currentPage, st_count[] (counts grouped by status: Open/On Hold/Closed), selected_period, view. Errors: 401 unauthorized session. Note ticketstatusid mapping (Open&#x3D;4, On Hold&#x3D;5, Closed&#x3D;6, In Progress&#x3D;7). To search by subject/email/mask use postTicketsList. To open a ticket detail use getTicketInfo with the returned id. To create a new ticket see addNewTicket.  Sibling ops: &#x60;getTicketInfo&#x60; (detail), &#x60;postTicketsList&#x60; (search), &#x60;addNewTicket&#x60; (open new).
        /// </summary>
        /// <param name="page">Page number for paginated results.</param>
        /// <param name="period">How far back to show tickets from. Value is in days.</param>
        /// <param name="view">The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types.</param>
        /// <returns>Tickets</returns>
        Tickets GetTicketsList (int? page, string period, string view);
        /// <summary>
        /// Append a reply (and optional attachment, server-access fields) to a ticket Use to post a customer reply on an existing ticket. Path: id (int ticket ID). Body: body (string reply text; trimmed to first 500 words), file_attachment (multipart upload, optional), and the server-access custom fields ip/root_pass/sudo_user/sudo_pass/port_no/server_access (passwords AES-encrypted with auth_key&#x3D;7). Either body OR an attachment is required. Notifies any swticketwatchers staff via templated email after posting. Returns: {status: &#x27;success&#x27;, message: &#x27;Reply posted successfully&#x27;}. Errors: 400 &#x27;Please enter a message or attach a file&#x27;; 401 unauthorized; 404/422 &#x27;Invalid ticket!&#x27; when id missing or cross-account. Sibling: ReplyTicket (cleaner JSON-only reply at /tickets/{id}/reply), updateTicketInfo, getTicketInfo, deleteTicketInfo.
        /// </summary>
        /// <param name="id">Ticket ID number.</param>
        /// <returns>ViewTicketResponse</returns>
        ViewTicketResponse PostTicketInfo (decimal? id);
        /// <summary>
        /// Search the authenticated account&#x27;s tickets by subject, email, or mask ID Use when the user supplies a search term (subject keyword, email substring, or full ticket mask ID like &#x27;ABC-123-456&#x27;). Scoped to tickets owned by the session account_lid. Body (form): search (string, required). If the term contains exactly two hyphens it is treated as an exact ticketmaskid match; otherwise a LIKE search runs across subject, email, and ticketmaskid. Returns: array of up to 25 matching ticket rows ordered by lastactivity DESC, each enriched with lastactivity_time (human-relative). Errors: 400 if search is empty or missing; 401 unauthorized. Caveat: this is a POST that reads, not a creator. To create see addNewTicket. To paginate full inbox use getTicketsList. To open one use getTicketInfo.  Sibling ops: &#x60;getTicketsList&#x60; (full inbox), &#x60;getTicketInfo&#x60; (detail), &#x60;addNewTicket&#x60; (open new).
        /// </summary>
        /// <returns>Tickets</returns>
        Tickets PostTicketsList ();
        /// <summary>
        /// Update a ticket&#x27;s properties such as subject or status (stub, not implemented) Reserved for future use to update ticket subject/status. The PHP handler is currently an empty stub that returns no body, so callers should not rely on it in production. Path: id (int). Body: would carry subject/status fields when implemented. Returns: undefined behavior today. Errors: 401 unauthorized; expect 404/422 when implemented if id is invalid or not owned. Caveats: prefer updateTicketInfo (POST /tickets/{id}/update) for editing custom-field values today, postTicketInfo to add a reply, CloseTicket or deleteTicketInfo to close. Avoid scripting against this endpoint until the handler ships. Siblings: getTicketInfo, ReplyTicket.
        /// </summary>
        /// <param name="id">Ticket ID number.</param>
        /// <returns>ViewTicketResponse</returns>
        ViewTicketResponse PutTicketInfo (decimal? id);
        /// <summary>
        /// Post a simple text reply to an existing ticket thread (no attachments) Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: &#x27;Reply content cannot be empty!&#x27; | &#x27;Unable to reply ticket&#x27;}. Errors: 401 unauthorized; 404 implied via &#x27;Unable to reply ticket&#x27; when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.
        /// </summary>
        /// <param name="id">The ticket ID number.</param>
        /// <param name="body"></param>
        /// <returns>ReplyTicketResponseSchema</returns>
        ReplyTicketResponseSchema ReplyTicket (decimal? id, ReplyTicketRequest body);
        /// <summary>
        /// Post a simple text reply to an existing ticket thread (no attachments) Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: &#x27;Reply content cannot be empty!&#x27; | &#x27;Unable to reply ticket&#x27;}. Errors: 401 unauthorized; 404 implied via &#x27;Unable to reply ticket&#x27; when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.
        /// </summary>
        /// <param name="id">The ticket ID number.</param>
        /// <param name="content"></param>
        /// <returns>ReplyTicketResponseSchema</returns>
        ReplyTicketResponseSchema ReplyTicket (decimal? id, string content);
        /// <summary>
        /// Update a ticket&#x27;s custom field values (server-access details, etc.) Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: &#x27;Ticket is updated!&#x27;} or {success: false, text: &#x27;Unable to update ticket&#x27;}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: &#x60;getTicketInfo&#x60; (read), &#x60;ReplyTicket&#x60; (reply), &#x60;CloseTicket&#x60; (close).
        /// </summary>
        /// <param name="id">The ticket ID number.</param>
        /// <param name="body"></param>
        /// <returns>UpdateTicketResponseSchema</returns>
        UpdateTicketResponseSchema UpdateTicketInfo (decimal? id, UpdateTicket body);
        /// <summary>
        /// Update a ticket&#x27;s custom field values (server-access details, etc.) Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: &#x27;Ticket is updated!&#x27;} or {success: false, text: &#x27;Unable to update ticket&#x27;}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: &#x60;getTicketInfo&#x60; (read), &#x60;ReplyTicket&#x60; (reply), &#x60;CloseTicket&#x60; (close).
        /// </summary>
        /// <param name="id">The ticket ID number.</param>
        /// <param name="ip"></param>
        /// <param name="ipAddress"></param>
        /// <param name="customerServerAccess"></param>
        /// <param name="rootPassword"></param>
        /// <param name="sudoUsername"></param>
        /// <param name="sudoPassword"></param>
        /// <param name="port"></param>
        /// <returns>UpdateTicketResponseSchema</returns>
        UpdateTicketResponseSchema UpdateTicketInfo (decimal? id, string ip, string ipAddress, string customerServerAccess, string rootPassword, string sudoUsername, string sudoPassword, int? port);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class TicketsApi : ITicketsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="TicketsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public TicketsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="TicketsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public TicketsApi(String basePath)
        {
            this.ApiClient = new ApiClient(basePath);
        }
    
        /// <summary>
        /// Sets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public void SetBasePath(String basePath)
        {
            this.ApiClient.BasePath = basePath;
        }
    
        /// <summary>
        /// Gets the base path of the API client.
        /// </summary>
        /// <param name="basePath">The base path</param>
        /// <value>The base path</value>
        public String GetBasePath(String basePath)
        {
            return this.ApiClient.BasePath;
        }
    
        /// <summary>
        /// Gets or sets the API client.
        /// </summary>
        /// <value>An instance of the ApiClient</value>
        public ApiClient ApiClient {get; set;}
    
        /// <summary>
        /// Open a new helpdesk ticket, optionally linked to a service and attachments Use when the customer wants to contact support. Creates the Kayako ticket in the &#x27;New Unassigned&#x27; department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format &#x27;{module}-{service_id}&#x27; from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.
        /// </summary>
        /// <param name="body"></param>
        /// <returns>TicketNewResponse</returns>
        public TicketNewResponse AddNewTicket (TicketNew body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddNewTicket");
    
            var path = "/tickets/new";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddNewTicket: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddNewTicket: " + response.ErrorMessage, response.ErrorMessage);
    
            return (TicketNewResponse) ApiClient.Deserialize(response.Content, typeof(TicketNewResponse), response.Headers);
        }
    
        /// <summary>
        /// Open a new helpdesk ticket, optionally linked to a service and attachments Use when the customer wants to contact support. Creates the Kayako ticket in the &#x27;New Unassigned&#x27; department (id 18). Body (form): subject (string, required), body (string, required), product (string, optional, format &#x27;{module}-{service_id}&#x27; from getNewTicket), service_id+service_module (alternative to product), attachments[] (optional, each {name, type, content base64}), and optional server-access custom fields ip, root_pass, sudo_user, sudo_pass, port_no, server_access (passwords are AES-encrypted with a generated auth_key). Returns: {success: true, text, ticket: ticketmaskid}. Errors: 400 missing subject or body; 401 unauthorized; 422 ticket creation failure. Sibling: getNewTicket for product list, getTicketInfo to view, ReplyTicket to add replies.
        /// </summary>
        /// <param name="subject"></param>
        /// <param name="body"></param>
        /// <param name="serviceId"></param>
        /// <param name="serviceModule"></param>
        /// <returns>TicketNewResponse</returns>
        public TicketNewResponse AddNewTicket (string subject, string body, int? serviceId, string serviceModule)
        {
            // verify the required parameter 'subject' is set
            if (subject == null) throw new ApiException(400, "Missing required parameter 'subject' when calling AddNewTicket");
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddNewTicket");
            // verify the required parameter 'serviceId' is set
            if (serviceId == null) throw new ApiException(400, "Missing required parameter 'serviceId' when calling AddNewTicket");
            // verify the required parameter 'serviceModule' is set
            if (serviceModule == null) throw new ApiException(400, "Missing required parameter 'serviceModule' when calling AddNewTicket");
    
            var path = "/tickets/new";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (subject != null) formParams.Add("subject", ApiClient.ParameterToString(subject)); // form parameter
if (body != null) formParams.Add("body", ApiClient.ParameterToString(body)); // form parameter
if (serviceId != null) formParams.Add("service_id", ApiClient.ParameterToString(serviceId)); // form parameter
if (serviceModule != null) formParams.Add("service_module", ApiClient.ParameterToString(serviceModule)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling AddNewTicket: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddNewTicket: " + response.ErrorMessage, response.ErrorMessage);
    
            return (TicketNewResponse) ApiClient.Deserialize(response.Content, typeof(TicketNewResponse), response.Headers);
        }
    
        /// <summary>
        /// Close an open support ticket via simple GET request (no body required) Use to close a ticket from a link or one-click action — closure-only equivalent of deleteTicketInfo with friendlier semantics. Calls Ticket::closeTicket on the resolved ticket and leaves the record fully readable; closed tickets disappear from the active inbox but remain in getTicketsList when view&#x3D;Closed. Path: id (int ticket ID, e.g. 1511222). Body: none. Returns: {success: true, text: &#x27;Ticket is closed!&#x27;} or {success: false, text: &#x27;Unable to close ticket&#x27;}. Errors: 401 unauthorized; 404 implied via &#x27;Unable to close ticket&#x27; when id is unknown or cross-account. Idempotent on already-closed tickets. Siblings: deleteTicketInfo (DELETE /tickets/{id} — same effect), getTicketInfo to confirm new status.
        /// </summary>
        /// <param name="id">Ticket ID</param>
        /// <returns>CloseTicketResponseSchema</returns>
        public CloseTicketResponseSchema CloseTicket (string id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling CloseTicket");
    
            var path = "/tickets/{id}/close";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling CloseTicket: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling CloseTicket: " + response.ErrorMessage, response.ErrorMessage);
    
            return (CloseTicketResponseSchema) ApiClient.Deserialize(response.Content, typeof(CloseTicketResponseSchema), response.Headers);
        }
    
        /// <summary>
        /// Close a customer ticket via DELETE verb (closes only, never destroys data) Use when the customer marks a ticket resolved. IMPORTANT: despite the DELETE verb this only CLOSES the ticket via Ticket::closeTicket — no data is destroyed. Closed tickets remain readable through getTicketInfo and appear in getTicketsList when view&#x3D;Closed. Path: id (int ticket ID). Body: none. Returns: &#x27;Ticket is closed!&#x27; string on success. Errors: 401 unauthorized; 404/422 &#x27;Invalid ticket!&#x27; when id is unknown or owned by another account. Idempotent on already-closed tickets. Siblings: CloseTicket (GET /tickets/{id}/close — same effect, simpler URL), ReplyTicket to add a final reply before closing, getTicketInfo to verify state.
        /// </summary>
        /// <param name="id">Ticket ID number.</param>
        /// <returns>ViewTicketResponse</returns>
        public ViewTicketResponse DeleteTicketInfo (decimal? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling DeleteTicketInfo");
    
            var path = "/tickets/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.DELETE, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteTicketInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling DeleteTicketInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ViewTicketResponse) ApiClient.Deserialize(response.Content, typeof(ViewTicketResponse), response.Headers);
        }
    
        /// <summary>
        /// Fetch services and product options to populate the new-ticket form Use to populate dropdowns before calling addNewTicket. Returns the customer&#x27;s services grouped by product type so the user can attach a ticket to a specific resource. Iterates all enabled modules (vps, webhosting, domains, mail, etc.; mailbaby instances see only mail) and filters out services with status canceled, deleted, or fraud. Params: none. Body: none. Returns: object keyed by product TITLE (e.g. &#x27;Vps&#x27;, &#x27;Webhosting&#x27;), each value a map of &#x27;{module}-{service_id}&#x27; to a description string including title, type/plan, VPS hypervisor name where applicable, and uppercase status tag. Errors: 401 unauthorized. Use the returned product key as the &#x27;product&#x27; field on addNewTicket.  Sibling ops: &#x60;addNewTicket&#x60; (consumes the product key), &#x60;getTicketsList&#x60;.
        /// </summary>
        /// <returns></returns>
        public void GetNewTicket ()
        {
    
            var path = "/tickets/new";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetNewTicket: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetNewTicket: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Get full ticket details including subject, status, and the reply thread Use to render a ticket page or feed full context to an LLM. Path: id (int, ticket ID, e.g. 1511222). Returns ticket header (subject, status, department, dates), the ordered post/reply history, attachments, and any custom-field values. Resolved via Ticket::getTicket(id, account_lid) so cross-account access returns Invalid ticket. Body: none. Errors: 401 unauthorized; 404/422 &#x27;Invalid ticket!&#x27; when the id is unknown or owned by another account. Caveats: the same path with POST appends a reply (postTicketInfo) and DELETE closes the ticket (deleteTicketInfo) — it does not destroy data. Siblings: ReplyTicket, updateTicketInfo, CloseTicket, getTicketsList.
        /// </summary>
        /// <param name="id">Ticket ID number.</param>
        /// <returns>ViewTicketResponse</returns>
        public ViewTicketResponse GetTicketInfo (decimal? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetTicketInfo");
    
            var path = "/tickets/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetTicketInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetTicketInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ViewTicketResponse) ApiClient.Deserialize(response.Content, typeof(ViewTicketResponse), response.Headers);
        }
    
        /// <summary>
        /// List the authenticated account&#x27;s support tickets with status and date filters Use to browse the customer&#x27;s helpdesk tickets, paginated, with optional status and recency filters. Returns tickets where email matches the session account_lid. Query params: page (int, default 1, 50 per page), period (string: &#x27;30&#x27;, &#x27;90&#x27;, &#x27;365&#x27;, &#x27;1825&#x27;, or &#x27;all&#x27; days back; default &#x27;30&#x27;), view (string: &#x27;Open&#x27;, &#x27;Closed&#x27;, &#x27;On Hold&#x27;, &#x27;In Progress&#x27;; omit for all). Body: none. Returns: object with tickets[], total, pages, currentPage, st_count[] (counts grouped by status: Open/On Hold/Closed), selected_period, view. Errors: 401 unauthorized session. Note ticketstatusid mapping (Open&#x3D;4, On Hold&#x3D;5, Closed&#x3D;6, In Progress&#x3D;7). To search by subject/email/mask use postTicketsList. To open a ticket detail use getTicketInfo with the returned id. To create a new ticket see addNewTicket.  Sibling ops: &#x60;getTicketInfo&#x60; (detail), &#x60;postTicketsList&#x60; (search), &#x60;addNewTicket&#x60; (open new).
        /// </summary>
        /// <param name="page">Page number for paginated results.</param>
        /// <param name="period">How far back to show tickets from. Value is in days.</param>
        /// <param name="view">The status of tickets to view. Possible values are Open, Closed, On Hold, and In Progress.  If not specified it will show all types.</param>
        /// <returns>Tickets</returns>
        public Tickets GetTicketsList (int? page, string period, string view)
        {
    
            var path = "/tickets";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
             if (page != null) queryParams.Add("page", ApiClient.ParameterToString(page)); // query parameter
 if (period != null) queryParams.Add("period", ApiClient.ParameterToString(period)); // query parameter
 if (view != null) queryParams.Add("view", ApiClient.ParameterToString(view)); // query parameter
                        
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.GET, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling GetTicketsList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetTicketsList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Tickets) ApiClient.Deserialize(response.Content, typeof(Tickets), response.Headers);
        }
    
        /// <summary>
        /// Append a reply (and optional attachment, server-access fields) to a ticket Use to post a customer reply on an existing ticket. Path: id (int ticket ID). Body: body (string reply text; trimmed to first 500 words), file_attachment (multipart upload, optional), and the server-access custom fields ip/root_pass/sudo_user/sudo_pass/port_no/server_access (passwords AES-encrypted with auth_key&#x3D;7). Either body OR an attachment is required. Notifies any swticketwatchers staff via templated email after posting. Returns: {status: &#x27;success&#x27;, message: &#x27;Reply posted successfully&#x27;}. Errors: 400 &#x27;Please enter a message or attach a file&#x27;; 401 unauthorized; 404/422 &#x27;Invalid ticket!&#x27; when id missing or cross-account. Sibling: ReplyTicket (cleaner JSON-only reply at /tickets/{id}/reply), updateTicketInfo, getTicketInfo, deleteTicketInfo.
        /// </summary>
        /// <param name="id">Ticket ID number.</param>
        /// <returns>ViewTicketResponse</returns>
        public ViewTicketResponse PostTicketInfo (decimal? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostTicketInfo");
    
            var path = "/tickets/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostTicketInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostTicketInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ViewTicketResponse) ApiClient.Deserialize(response.Content, typeof(ViewTicketResponse), response.Headers);
        }
    
        /// <summary>
        /// Search the authenticated account&#x27;s tickets by subject, email, or mask ID Use when the user supplies a search term (subject keyword, email substring, or full ticket mask ID like &#x27;ABC-123-456&#x27;). Scoped to tickets owned by the session account_lid. Body (form): search (string, required). If the term contains exactly two hyphens it is treated as an exact ticketmaskid match; otherwise a LIKE search runs across subject, email, and ticketmaskid. Returns: array of up to 25 matching ticket rows ordered by lastactivity DESC, each enriched with lastactivity_time (human-relative). Errors: 400 if search is empty or missing; 401 unauthorized. Caveat: this is a POST that reads, not a creator. To create see addNewTicket. To paginate full inbox use getTicketsList. To open one use getTicketInfo.  Sibling ops: &#x60;getTicketsList&#x60; (full inbox), &#x60;getTicketInfo&#x60; (detail), &#x60;addNewTicket&#x60; (open new).
        /// </summary>
        /// <returns>Tickets</returns>
        public Tickets PostTicketsList ()
        {
    
            var path = "/tickets";
            path = path.Replace("{format}", "json");
                
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostTicketsList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostTicketsList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Tickets) ApiClient.Deserialize(response.Content, typeof(Tickets), response.Headers);
        }
    
        /// <summary>
        /// Update a ticket&#x27;s properties such as subject or status (stub, not implemented) Reserved for future use to update ticket subject/status. The PHP handler is currently an empty stub that returns no body, so callers should not rely on it in production. Path: id (int). Body: would carry subject/status fields when implemented. Returns: undefined behavior today. Errors: 401 unauthorized; expect 404/422 when implemented if id is invalid or not owned. Caveats: prefer updateTicketInfo (POST /tickets/{id}/update) for editing custom-field values today, postTicketInfo to add a reply, CloseTicket or deleteTicketInfo to close. Avoid scripting against this endpoint until the handler ships. Siblings: getTicketInfo, ReplyTicket.
        /// </summary>
        /// <param name="id">Ticket ID number.</param>
        /// <returns>ViewTicketResponse</returns>
        public ViewTicketResponse PutTicketInfo (decimal? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PutTicketInfo");
    
            var path = "/tickets/{id}";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    
            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PutTicketInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PutTicketInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ViewTicketResponse) ApiClient.Deserialize(response.Content, typeof(ViewTicketResponse), response.Headers);
        }
    
        /// <summary>
        /// Post a simple text reply to an existing ticket thread (no attachments) Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: &#x27;Reply content cannot be empty!&#x27; | &#x27;Unable to reply ticket&#x27;}. Errors: 401 unauthorized; 404 implied via &#x27;Unable to reply ticket&#x27; when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.
        /// </summary>
        /// <param name="id">The ticket ID number.</param>
        /// <param name="body"></param>
        /// <returns>ReplyTicketResponseSchema</returns>
        public ReplyTicketResponseSchema ReplyTicket (decimal? id, ReplyTicketRequest body)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling ReplyTicket");
    
            var path = "/tickets/{id}/reply";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ReplyTicket: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ReplyTicket: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ReplyTicketResponseSchema) ApiClient.Deserialize(response.Content, typeof(ReplyTicketResponseSchema), response.Headers);
        }
    
        /// <summary>
        /// Post a simple text reply to an existing ticket thread (no attachments) Use this lightweight endpoint to add a reply to an existing ticket without attachments or server-access fields. Cleaner alternative to postTicketInfo when only text is being submitted. Path: id (int ticket ID). Body (form): content (string, required reply body). Returns: {success: true, post_id: int} on success or {success: false, text: &#x27;Reply content cannot be empty!&#x27; | &#x27;Unable to reply ticket&#x27;}. Errors: 401 unauthorized; 404 implied via &#x27;Unable to reply ticket&#x27; when id is invalid or owned by another account. Siblings: postTicketInfo (POST /tickets/{id}, supports attachments + custom fields), updateTicketInfo (custom fields only), CloseTicket, getTicketInfo to verify the new post_id appears in the thread.
        /// </summary>
        /// <param name="id">The ticket ID number.</param>
        /// <param name="content"></param>
        /// <returns>ReplyTicketResponseSchema</returns>
        public ReplyTicketResponseSchema ReplyTicket (decimal? id, string content)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling ReplyTicket");
    
            var path = "/tickets/{id}/reply";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (content != null) formParams.Add("content", ApiClient.ParameterToString(content)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling ReplyTicket: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling ReplyTicket: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ReplyTicketResponseSchema) ApiClient.Deserialize(response.Content, typeof(ReplyTicketResponseSchema), response.Headers);
        }
    
        /// <summary>
        /// Update a ticket&#x27;s custom field values (server-access details, etc.) Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: &#x27;Ticket is updated!&#x27;} or {success: false, text: &#x27;Unable to update ticket&#x27;}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: &#x60;getTicketInfo&#x60; (read), &#x60;ReplyTicket&#x60; (reply), &#x60;CloseTicket&#x60; (close).
        /// </summary>
        /// <param name="id">The ticket ID number.</param>
        /// <param name="body"></param>
        /// <returns>UpdateTicketResponseSchema</returns>
        public UpdateTicketResponseSchema UpdateTicketInfo (decimal? id, UpdateTicket body)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateTicketInfo");
    
            var path = "/tickets/{id}/update";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    postBody = ApiClient.Serialize(body); // http body (model) parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateTicketInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateTicketInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (UpdateTicketResponseSchema) ApiClient.Deserialize(response.Content, typeof(UpdateTicketResponseSchema), response.Headers);
        }
    
        /// <summary>
        /// Update a ticket&#x27;s custom field values (server-access details, etc.) Use to save or change the structured custom-field values attached to a ticket — typically server-access details supplied by the customer. Path: id (int ticket ID). Body (form): one field per custom-field title, lowercased with spaces replaced by underscores (e.g. ip, root_pass, sudo_user, sudo_pass, port_no, server_access). Field id 7 (auth_key) is skipped — never set it directly. Returns: {success: true, text: &#x27;Ticket is updated!&#x27;} or {success: false, text: &#x27;Unable to update ticket&#x27;}. Errors: 401 unauthorized; 404 invalid or non-owned ticket. Caveats: this updates metadata only — to add a reply use ReplyTicket, to close use CloseTicket, to read current state use getTicketInfo.  Sibling ops: &#x60;getTicketInfo&#x60; (read), &#x60;ReplyTicket&#x60; (reply), &#x60;CloseTicket&#x60; (close).
        /// </summary>
        /// <param name="id">The ticket ID number.</param>
        /// <param name="ip"></param>
        /// <param name="ipAddress"></param>
        /// <param name="customerServerAccess"></param>
        /// <param name="rootPassword"></param>
        /// <param name="sudoUsername"></param>
        /// <param name="sudoPassword"></param>
        /// <param name="port"></param>
        /// <returns>UpdateTicketResponseSchema</returns>
        public UpdateTicketResponseSchema UpdateTicketInfo (decimal? id, string ip, string ipAddress, string customerServerAccess, string rootPassword, string sudoUsername, string sudoPassword, int? port)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateTicketInfo");
    
            var path = "/tickets/{id}/update";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ip != null) formParams.Add("ip", ApiClient.ParameterToString(ip)); // form parameter
if (ipAddress != null) formParams.Add("ip_address", ApiClient.ParameterToString(ipAddress)); // form parameter
if (customerServerAccess != null) formParams.Add("customer_server_access", ApiClient.ParameterToString(customerServerAccess)); // form parameter
if (rootPassword != null) formParams.Add("root_password", ApiClient.ParameterToString(rootPassword)); // form parameter
if (sudoUsername != null) formParams.Add("sudo_username", ApiClient.ParameterToString(sudoUsername)); // form parameter
if (sudoPassword != null) formParams.Add("sudo_password", ApiClient.ParameterToString(sudoPassword)); // form parameter
if (port != null) formParams.Add("port", ApiClient.ParameterToString(port)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateTicketInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateTicketInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (UpdateTicketResponseSchema) ApiClient.Deserialize(response.Content, typeof(UpdateTicketResponseSchema), response.Headers);
        }
    
    }
}
