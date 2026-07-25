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
    public interface IFloatingIPsApi
    {
        /// <summary>
        /// Place a real Floating IP order, create billing records, and provision the service Charges the customer and creates a new Floating IP service via &#x60;place_buy_floating_ip&#x60;. Validate first with &#x60;putFloating_ips&#x60; to avoid surprise failures. Body (form-encoded): &#x60;serviceType&#x60; (required, &#x60;services_id&#x60;), &#x60;coupon&#x60; (optional), &#x60;comment&#x60; (optional internal note). On success returns &#x60;{ continue:true, errors, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }&#x60; — &#x60;iid&#x60; is the master invoice ID, &#x60;serviceId&#x60; is the new &#x60;floating_ip_id&#x60;. On validation failure returns &#x60;{ continue:false, errors:[...] }&#x60; with no charge. Errors: 401 if unauthenticated; soft errors in &#x60;errors[]&#x60;. The newly-issued IP starts unassigned — point it at a target with &#x60;postFloatingIpsChangeIp&#x60; once the service is &#x60;active&#x60;.  Sibling ops: &#x60;getNewFloatingIp&#x60; (catalog), &#x60;putFloating_ips&#x60; (validate), &#x60;getFloatingIpInfo&#x60; (poll), &#x60;postFloatingIpsChangeIp&#x60; (route), &#x60;getBillingInvoice&#x60; + &#x60;initiatePayment&#x60; (settle invoice), &#x60;floating_ipsCancel&#x60;.
        /// </summary>
        /// <param name="body"></param>
        /// <returns>ServiceOrderPostResponse</returns>
        ServiceOrderPostResponse AddFloatingIp (FloatingIpOrderRequest body);
        /// <summary>
        /// Cancel a Floating IP service and release the IP — destructive, billing stops Cancels the Floating IP via the shared &#x60;Api\\Billing\\CancelService&#x60; flow — flips status to canceled, halts recurring billing, and releases the IP back to the pool so it can no longer be re-routed. Not reversible: the customer cannot recover the same IP after release. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60; from &#x60;getFloatingIpsList&#x60;). No body. Returns the &#x60;FloatingIpsCancelResponse&#x60; shape (success text / cancellation outcome). Errors: 401 if unauthenticated; 404 / cross-customer hidden when &#x60;id&#x60; is not owned by the caller; 409 if already canceled or otherwise non-cancelable. Confirm with the customer before calling — for routing changes use &#x60;postFloatingIpsChangeIp&#x60; instead of cancel-and-reorder.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (status), &#x60;getFloatingIpInvoices&#x60; (outstanding charges), &#x60;postFloatingIpsChangeIp&#x60; (re-route instead of cancel), &#x60;addFloatingIp&#x60; (re-order).
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>InlineResponse2004</returns>
        InlineResponse2004 FloatingIpsCancel (int? id);
        /// <summary>
        /// Fetch full details for one Floating IP service, including current target IP Use for a Floating IP detail screen, or to read &#x60;floating_ip_ip&#x60; / &#x60;floating_ip_target_ip&#x60; before calling &#x60;postFloatingIpsChangeIp&#x60;. Read-only. Path param &#x60;id&#x60; (integer, &#x60;floating_ip_id&#x60; from &#x60;getFloatingIpsList&#x60;). No body. Returns the &#x60;ViewFloatingIp.getDetails()&#x60; payload — service info, billing/cost summary, status, target IP, and &#x60;client_links&#x60; (action URLs the UI can render). Internal-only fields (&#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;) are stripped. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when &#x60;id&#x60; is not owned by the caller (&#x60;get_service&#x60; filters by custid). Siblings: &#x60;postFloatingIpsChangeIp&#x60;, &#x60;updateFloatingIpInfo&#x60;, &#x60;getFloatingIpInvoices&#x60;, &#x60;getFloatingIpsWelcomeEmail&#x60;, &#x60;floating_ipsCancel&#x60;.
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>Object</returns>
        Object GetFloatingIpInfo (int? id);
        /// <summary>
        /// List all billing invoices charged against a specific Floating IP service Use for a per-service billing history view — pulls the standard &#x60;Api\\Billing\\InvoicesList&#x60; rows scoped to this Floating IP. Read-only. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60; from &#x60;getFloatingIpsList&#x60;). No body. Returns the &#x60;ChargeInvoiceRows&#x60; schema: array of invoice rows with id, date, amount, status, etc. Use the invoice IDs with the global billing endpoints (&#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;) for line-item detail. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when &#x60;id&#x60; is not owned by the caller. Siblings: &#x60;getFloatingIpInfo&#x60; (service details), &#x60;getFloatingIpsWelcomeEmail&#x60;.
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>ChargeInvoiceRows</returns>
        ChargeInvoiceRows GetFloatingIpInvoices (int? id);
        /// <summary>
        /// List all Floating IP services on the authenticated customer&#x27;s account Use to enumerate every Floating IP the caller owns before drilling into a specific one. Read-only; safe to call frequently. No params, no body. Returns an array of rows: &#x60;floating_ip_id&#x60;, &#x60;repeat_invoices_cost&#x60; (recurring price), &#x60;floating_ip_ip&#x60; (the portable IP), &#x60;floating_ip_target_ip&#x60; (the IP it currently routes to), &#x60;floating_ip_status&#x60; (active/pending/canceled/etc.), &#x60;services_name&#x60; (package label). Empty array if the account owns no Floating IPs. Errors: 401 if unauthenticated. Use returned IDs with &#x60;getFloatingIpInfo&#x60;, &#x60;postFloatingIpsChangeIp&#x60;, &#x60;getFloatingIpInvoices&#x60;, &#x60;getFloatingIpsWelcomeEmail&#x60;, or &#x60;floating_ipsCancel&#x60;. To order a new one see &#x60;getNewFloatingIp&#x60; / &#x60;addFloatingIp&#x60;.  Sibling ops: &#x60;getFloatingIpInfo&#x60;, &#x60;getNewFloatingIp&#x60; (catalog), &#x60;addFloatingIp&#x60; (order).
        /// </summary>
        /// <returns>List&lt;Object&gt;</returns>
        List<Object> GetFloatingIpsList ();
        /// <summary>
        /// Resend the Floating IP welcome / setup email to the account contact Triggers &#x60;floating_ip_welcome_email($id)&#x60; to re-deliver the original setup email (the IP, routing instructions, etc.) to the customer&#x27;s on-file address. Useful when the email was lost or the customer needs the IP/setup details again. No body, no params besides path &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Returns &#x60;{ text: &#x27;Welcome Email has been resent.&#x27; }&#x60;. Errors: 401 if unauthenticated; 404 (&#x60;Invalid Service Passed&#x60;) if &#x60;id&#x60; is not owned by the caller; 409 (&#x60;Service is not active&#x60;) if status is not &#x60;active&#x60;. Side effect: sends an outbound email — avoid in tight loops. Read state first via &#x60;getFloatingIpInfo&#x60; if unsure of status.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (status), &#x60;addFloatingIp&#x60; (new order), &#x60;floating_ipsCancel&#x60;.
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse GetFloatingIpsWelcomeEmail (int? id);
        /// <summary>
        /// Get pricing and service-type options for ordering a new Floating IP Use before showing a Floating IP order form, or before calling &#x60;addFloatingIp&#x60;, to discover which service types (&#x60;serviceTypes&#x60;) and prices (&#x60;packageCosts&#x60;, keyed by &#x60;services_id&#x60; in the customer&#x27;s currency) are currently buyable. Read-only; no side effects. No params, no body. Returns &#x60;{ packageCosts: { &lt;services_id&gt;: &lt;cost&gt; }, serviceTypes: [ ... ] } &#x60;. Costs are &#x60;services.services_cost&#x60; filtered to &#x60;services_buyable&#x3D;1&#x60; for module &#x60;floating_ips&#x60;. Errors: 401 if unauthenticated. Next steps: validate the chosen &#x60;serviceType&#x60; with &#x60;putFloating_ips&#x60;, then place the order with &#x60;addFloatingIp&#x60;. Floating IPs are portable IPv4 addresses that route to a target IP on one of the customer&#x27;s active services.  Sibling ops: &#x60;putFloating_ips&#x60; (validate), &#x60;addFloatingIp&#x60; (commit), &#x60;getFloatingIpsList&#x60; (existing IPs).
        /// </summary>
        /// <returns>Object</returns>
        Object GetNewFloatingIp ();
        /// <summary>
        /// Re-point a Floating IP to a different target IP on one of the customer&#x27;s services Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via &#x60;Sshwitch&#x60;), then updates &#x60;floating_ip_target_ip&#x60;. Use to move a portable IP between the customer&#x27;s VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Body: &#x60;{ ip: &lt;new target IP&gt; }&#x60; (also accepts multipart form). Returns &#x60;{ success:true, text:&#x27;IP Changed&#x27; }&#x60;. Errors (returned via &#x60;json_error&#x60;): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (read current target), &#x60;getFloatingIpsList&#x60;, &#x60;floating_ipsCancel&#x60;. Read current target with &#x60;getFloatingIpInfo&#x60; first.
        /// </summary>
        /// <param name="ip"></param>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse PostFloatingIpsChangeIp (string ip, int? id);
        /// <summary>
        /// Re-point a Floating IP to a different target IP on one of the customer&#x27;s services Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via &#x60;Sshwitch&#x60;), then updates &#x60;floating_ip_target_ip&#x60;. Use to move a portable IP between the customer&#x27;s VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Body: &#x60;{ ip: &lt;new target IP&gt; }&#x60; (also accepts multipart form). Returns &#x60;{ success:true, text:&#x27;IP Changed&#x27; }&#x60;. Errors (returned via &#x60;json_error&#x60;): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (read current target), &#x60;getFloatingIpsList&#x60;, &#x60;floating_ipsCancel&#x60;. Read current target with &#x60;getFloatingIpInfo&#x60; first.
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse PostFloatingIpsChangeIp (IpObject body, int? id);
        /// <summary>
        /// Validate a Floating IP order and price it without charging the customer Dry-run for &#x60;addFloatingIp&#x60; — runs &#x60;validate_buy_floating_ip&#x60; to apply coupons, compute intro/repeat pricing, and surface errors before committing. No charge, no service created. Body fields (form-encoded): &#x60;serviceType&#x60; (required, &#x60;services_id&#x60; from &#x60;getNewFloatingIp.packageCosts&#x60;), &#x60;coupon&#x60; (optional code). Returns &#x60;{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, password, introFrequency, coupon, couponCode }&#x60;. &#x60;continue&#x3D;true&#x60; means the order would succeed; &#x60;continue&#x3D;false&#x60; plus populated &#x60;errors[]&#x60; means it would not. Errors: 401 if unauthenticated; 422-style soft errors arrive in the &#x60;errors&#x60; array. Use the returned &#x60;serviceType&#x60; and &#x60;couponCode&#x60; when calling &#x60;addFloatingIp&#x60;. Sibling ops: &#x60;getNewFloatingIp&#x60; (catalog), &#x60;addFloatingIp&#x60; (commit).
        /// </summary>
        /// <param name="body"></param>
        /// <returns></returns>
        void PutFloatingIps (FloatingIpOrderRequest body);
        /// <summary>
        /// Update a Floating IP service&#x27;s editable settings (label / metadata) Stub edit endpoint that delegates to the same handler as &#x60;getFloatingIpInfo&#x60; — currently used for label/metadata edits surfaced by &#x60;ViewFloatingIp&#x60;. To re-route the IP to a different target use the dedicated &#x60;postFloatingIpsChangeIp&#x60; instead; this op does not change routing. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Body: form-encoded fields exposed by the Floating IP edit form (label/comment style). Returns the standard success-text response. Errors: 401 if unauthenticated; effectively 404 if &#x60;id&#x60; not owned by the caller. Read state first with &#x60;getFloatingIpInfo&#x60;.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (read), &#x60;postFloatingIpsChangeIp&#x60; (re-route), &#x60;floating_ipsCancel&#x60;.
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        SuccessTextResponse UpdateFloatingIpInfo (string id);
    }
  
    /// <summary>
    /// Represents a collection of functions to interact with the API endpoints
    /// </summary>
    public class FloatingIPsApi : IFloatingIPsApi
    {
        /// <summary>
        /// Initializes a new instance of the <see cref="FloatingIPsApi"/> class.
        /// </summary>
        /// <param name="apiClient"> an instance of ApiClient (optional)</param>
        /// <returns></returns>
        public FloatingIPsApi(ApiClient apiClient = null)
        {
            if (apiClient == null) // use the default one in Configuration
                this.ApiClient = Configuration.DefaultApiClient; 
            else
                this.ApiClient = apiClient;
        }
    
        /// <summary>
        /// Initializes a new instance of the <see cref="FloatingIPsApi"/> class.
        /// </summary>
        /// <returns></returns>
        public FloatingIPsApi(String basePath)
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
        /// Place a real Floating IP order, create billing records, and provision the service Charges the customer and creates a new Floating IP service via &#x60;place_buy_floating_ip&#x60;. Validate first with &#x60;putFloating_ips&#x60; to avoid surprise failures. Body (form-encoded): &#x60;serviceType&#x60; (required, &#x60;services_id&#x60;), &#x60;coupon&#x60; (optional), &#x60;comment&#x60; (optional internal note). On success returns &#x60;{ continue:true, errors, total_cost, iid, iids, real_iids, serviceId, invoice_description, cj_params }&#x60; — &#x60;iid&#x60; is the master invoice ID, &#x60;serviceId&#x60; is the new &#x60;floating_ip_id&#x60;. On validation failure returns &#x60;{ continue:false, errors:[...] }&#x60; with no charge. Errors: 401 if unauthenticated; soft errors in &#x60;errors[]&#x60;. The newly-issued IP starts unassigned — point it at a target with &#x60;postFloatingIpsChangeIp&#x60; once the service is &#x60;active&#x60;.  Sibling ops: &#x60;getNewFloatingIp&#x60; (catalog), &#x60;putFloating_ips&#x60; (validate), &#x60;getFloatingIpInfo&#x60; (poll), &#x60;postFloatingIpsChangeIp&#x60; (route), &#x60;getBillingInvoice&#x60; + &#x60;initiatePayment&#x60; (settle invoice), &#x60;floating_ipsCancel&#x60;.
        /// </summary>
        /// <param name="body"></param>
        /// <returns>ServiceOrderPostResponse</returns>
        public ServiceOrderPostResponse AddFloatingIp (FloatingIpOrderRequest body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling AddFloatingIp");
    
            var path = "/floating_ips/order";
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
                throw new ApiException ((int)response.StatusCode, "Error calling AddFloatingIp: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling AddFloatingIp: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ServiceOrderPostResponse) ApiClient.Deserialize(response.Content, typeof(ServiceOrderPostResponse), response.Headers);
        }
    
        /// <summary>
        /// Cancel a Floating IP service and release the IP — destructive, billing stops Cancels the Floating IP via the shared &#x60;Api\\Billing\\CancelService&#x60; flow — flips status to canceled, halts recurring billing, and releases the IP back to the pool so it can no longer be re-routed. Not reversible: the customer cannot recover the same IP after release. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60; from &#x60;getFloatingIpsList&#x60;). No body. Returns the &#x60;FloatingIpsCancelResponse&#x60; shape (success text / cancellation outcome). Errors: 401 if unauthenticated; 404 / cross-customer hidden when &#x60;id&#x60; is not owned by the caller; 409 if already canceled or otherwise non-cancelable. Confirm with the customer before calling — for routing changes use &#x60;postFloatingIpsChangeIp&#x60; instead of cancel-and-reorder.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (status), &#x60;getFloatingIpInvoices&#x60; (outstanding charges), &#x60;postFloatingIpsChangeIp&#x60; (re-route instead of cancel), &#x60;addFloatingIp&#x60; (re-order).
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>InlineResponse2004</returns>
        public InlineResponse2004 FloatingIpsCancel (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling FloatingIpsCancel");
    
            var path = "/floating_ips/{id}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling FloatingIpsCancel: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling FloatingIpsCancel: " + response.ErrorMessage, response.ErrorMessage);
    
            return (InlineResponse2004) ApiClient.Deserialize(response.Content, typeof(InlineResponse2004), response.Headers);
        }
    
        /// <summary>
        /// Fetch full details for one Floating IP service, including current target IP Use for a Floating IP detail screen, or to read &#x60;floating_ip_ip&#x60; / &#x60;floating_ip_target_ip&#x60; before calling &#x60;postFloatingIpsChangeIp&#x60;. Read-only. Path param &#x60;id&#x60; (integer, &#x60;floating_ip_id&#x60; from &#x60;getFloatingIpsList&#x60;). No body. Returns the &#x60;ViewFloatingIp.getDetails()&#x60; payload — service info, billing/cost summary, status, target IP, and &#x60;client_links&#x60; (action URLs the UI can render). Internal-only fields (&#x60;admin_links&#x60;, &#x60;settings&#x60;, &#x60;csrf&#x60;) are stripped. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when &#x60;id&#x60; is not owned by the caller (&#x60;get_service&#x60; filters by custid). Siblings: &#x60;postFloatingIpsChangeIp&#x60;, &#x60;updateFloatingIpInfo&#x60;, &#x60;getFloatingIpInvoices&#x60;, &#x60;getFloatingIpsWelcomeEmail&#x60;, &#x60;floating_ipsCancel&#x60;.
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>Object</returns>
        public Object GetFloatingIpInfo (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetFloatingIpInfo");
    
            var path = "/floating_ips/{id}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetFloatingIpInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetFloatingIpInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// List all billing invoices charged against a specific Floating IP service Use for a per-service billing history view — pulls the standard &#x60;Api\\Billing\\InvoicesList&#x60; rows scoped to this Floating IP. Read-only. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60; from &#x60;getFloatingIpsList&#x60;). No body. Returns the &#x60;ChargeInvoiceRows&#x60; schema: array of invoice rows with id, date, amount, status, etc. Use the invoice IDs with the global billing endpoints (&#x60;getBillingInvoice&#x60;, &#x60;initiatePayment&#x60;) for line-item detail. Errors: 401 if unauthenticated; effectively 404 / cross-customer hidden when &#x60;id&#x60; is not owned by the caller. Siblings: &#x60;getFloatingIpInfo&#x60; (service details), &#x60;getFloatingIpsWelcomeEmail&#x60;.
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>ChargeInvoiceRows</returns>
        public ChargeInvoiceRows GetFloatingIpInvoices (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetFloatingIpInvoices");
    
            var path = "/floating_ips/{id}/invoices";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetFloatingIpInvoices: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetFloatingIpInvoices: " + response.ErrorMessage, response.ErrorMessage);
    
            return (ChargeInvoiceRows) ApiClient.Deserialize(response.Content, typeof(ChargeInvoiceRows), response.Headers);
        }
    
        /// <summary>
        /// List all Floating IP services on the authenticated customer&#x27;s account Use to enumerate every Floating IP the caller owns before drilling into a specific one. Read-only; safe to call frequently. No params, no body. Returns an array of rows: &#x60;floating_ip_id&#x60;, &#x60;repeat_invoices_cost&#x60; (recurring price), &#x60;floating_ip_ip&#x60; (the portable IP), &#x60;floating_ip_target_ip&#x60; (the IP it currently routes to), &#x60;floating_ip_status&#x60; (active/pending/canceled/etc.), &#x60;services_name&#x60; (package label). Empty array if the account owns no Floating IPs. Errors: 401 if unauthenticated. Use returned IDs with &#x60;getFloatingIpInfo&#x60;, &#x60;postFloatingIpsChangeIp&#x60;, &#x60;getFloatingIpInvoices&#x60;, &#x60;getFloatingIpsWelcomeEmail&#x60;, or &#x60;floating_ipsCancel&#x60;. To order a new one see &#x60;getNewFloatingIp&#x60; / &#x60;addFloatingIp&#x60;.  Sibling ops: &#x60;getFloatingIpInfo&#x60;, &#x60;getNewFloatingIp&#x60; (catalog), &#x60;addFloatingIp&#x60; (order).
        /// </summary>
        /// <returns>List&lt;Object&gt;</returns>
        public List<Object> GetFloatingIpsList ()
        {
    
            var path = "/floating_ips";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetFloatingIpsList: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetFloatingIpsList: " + response.ErrorMessage, response.ErrorMessage);
    
            return (List<Object>) ApiClient.Deserialize(response.Content, typeof(List<Object>), response.Headers);
        }
    
        /// <summary>
        /// Resend the Floating IP welcome / setup email to the account contact Triggers &#x60;floating_ip_welcome_email($id)&#x60; to re-deliver the original setup email (the IP, routing instructions, etc.) to the customer&#x27;s on-file address. Useful when the email was lost or the customer needs the IP/setup details again. No body, no params besides path &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Returns &#x60;{ text: &#x27;Welcome Email has been resent.&#x27; }&#x60;. Errors: 401 if unauthenticated; 404 (&#x60;Invalid Service Passed&#x60;) if &#x60;id&#x60; is not owned by the caller; 409 (&#x60;Service is not active&#x60;) if status is not &#x60;active&#x60;. Side effect: sends an outbound email — avoid in tight loops. Read state first via &#x60;getFloatingIpInfo&#x60; if unsure of status.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (status), &#x60;addFloatingIp&#x60; (new order), &#x60;floating_ipsCancel&#x60;.
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse GetFloatingIpsWelcomeEmail (int? id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling GetFloatingIpsWelcomeEmail");
    
            var path = "/floating_ips/{id}/welcome_email";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetFloatingIpsWelcomeEmail: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetFloatingIpsWelcomeEmail: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Get pricing and service-type options for ordering a new Floating IP Use before showing a Floating IP order form, or before calling &#x60;addFloatingIp&#x60;, to discover which service types (&#x60;serviceTypes&#x60;) and prices (&#x60;packageCosts&#x60;, keyed by &#x60;services_id&#x60; in the customer&#x27;s currency) are currently buyable. Read-only; no side effects. No params, no body. Returns &#x60;{ packageCosts: { &lt;services_id&gt;: &lt;cost&gt; }, serviceTypes: [ ... ] } &#x60;. Costs are &#x60;services.services_cost&#x60; filtered to &#x60;services_buyable&#x3D;1&#x60; for module &#x60;floating_ips&#x60;. Errors: 401 if unauthenticated. Next steps: validate the chosen &#x60;serviceType&#x60; with &#x60;putFloating_ips&#x60;, then place the order with &#x60;addFloatingIp&#x60;. Floating IPs are portable IPv4 addresses that route to a target IP on one of the customer&#x27;s active services.  Sibling ops: &#x60;putFloating_ips&#x60; (validate), &#x60;addFloatingIp&#x60; (commit), &#x60;getFloatingIpsList&#x60; (existing IPs).
        /// </summary>
        /// <returns>Object</returns>
        public Object GetNewFloatingIp ()
        {
    
            var path = "/floating_ips/order";
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
                throw new ApiException ((int)response.StatusCode, "Error calling GetNewFloatingIp: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling GetNewFloatingIp: " + response.ErrorMessage, response.ErrorMessage);
    
            return (Object) ApiClient.Deserialize(response.Content, typeof(Object), response.Headers);
        }
    
        /// <summary>
        /// Re-point a Floating IP to a different target IP on one of the customer&#x27;s services Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via &#x60;Sshwitch&#x60;), then updates &#x60;floating_ip_target_ip&#x60;. Use to move a portable IP between the customer&#x27;s VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Body: &#x60;{ ip: &lt;new target IP&gt; }&#x60; (also accepts multipart form). Returns &#x60;{ success:true, text:&#x27;IP Changed&#x27; }&#x60;. Errors (returned via &#x60;json_error&#x60;): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (read current target), &#x60;getFloatingIpsList&#x60;, &#x60;floating_ipsCancel&#x60;. Read current target with &#x60;getFloatingIpInfo&#x60; first.
        /// </summary>
        /// <param name="ip"></param>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse PostFloatingIpsChangeIp (string ip, int? id)
        {
            // verify the required parameter 'ip' is set
            if (ip == null) throw new ApiException(400, "Missing required parameter 'ip' when calling PostFloatingIpsChangeIp");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostFloatingIpsChangeIp");
    
            var path = "/floating_ips/{id}/change_ip";
            path = path.Replace("{format}", "json");
            path = path.Replace("{" + "id" + "}", ApiClient.ParameterToString(id));
    
            var queryParams = new Dictionary<String, String>();
            var headerParams = new Dictionary<String, String>();
            var formParams = new Dictionary<String, String>();
            var fileParams = new Dictionary<String, FileParameter>();
            String postBody = null;
    
                                    if (ip != null) formParams.Add("ip", ApiClient.ParameterToString(ip)); // form parameter

            // authentication setting, if any
            String[] authSettings = new String[] { "apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth" };
    
            // make the HTTP request
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.POST, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PostFloatingIpsChangeIp: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostFloatingIpsChangeIp: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Re-point a Floating IP to a different target IP on one of the customer&#x27;s services Reattaches the Floating IP by removing the old static route on the source switch and adding a new one on the destination switch (via &#x60;Sshwitch&#x60;), then updates &#x60;floating_ip_target_ip&#x60;. Use to move a portable IP between the customer&#x27;s VPS / Quickservers / websites / dedicated servers without renumbering apps. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Body: &#x60;{ ip: &lt;new target IP&gt; }&#x60; (also accepts multipart form). Returns &#x60;{ success:true, text:&#x27;IP Changed&#x27; }&#x60;. Errors (returned via &#x60;json_error&#x60;): invalid IP format; IP not in our datacenter; IP not in use by an active service of this customer; service not active; another Floating IP already points to that target; switch lookup failures; route still present after removal. 401 if unauthenticated.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (read current target), &#x60;getFloatingIpsList&#x60;, &#x60;floating_ipsCancel&#x60;. Read current target with &#x60;getFloatingIpInfo&#x60; first.
        /// </summary>
        /// <param name="body"></param>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse PostFloatingIpsChangeIp (IpObject body, int? id)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PostFloatingIpsChangeIp");
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling PostFloatingIpsChangeIp");
    
            var path = "/floating_ips/{id}/change_ip";
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
                throw new ApiException ((int)response.StatusCode, "Error calling PostFloatingIpsChangeIp: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PostFloatingIpsChangeIp: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
        /// <summary>
        /// Validate a Floating IP order and price it without charging the customer Dry-run for &#x60;addFloatingIp&#x60; — runs &#x60;validate_buy_floating_ip&#x60; to apply coupons, compute intro/repeat pricing, and surface errors before committing. No charge, no service created. Body fields (form-encoded): &#x60;serviceType&#x60; (required, &#x60;services_id&#x60; from &#x60;getNewFloatingIp.packageCosts&#x60;), &#x60;coupon&#x60; (optional code). Returns &#x60;{ continue, errors, serviceType, serviceCost, originalCost, repeatServiceCost, password, introFrequency, coupon, couponCode }&#x60;. &#x60;continue&#x3D;true&#x60; means the order would succeed; &#x60;continue&#x3D;false&#x60; plus populated &#x60;errors[]&#x60; means it would not. Errors: 401 if unauthenticated; 422-style soft errors arrive in the &#x60;errors&#x60; array. Use the returned &#x60;serviceType&#x60; and &#x60;couponCode&#x60; when calling &#x60;addFloatingIp&#x60;. Sibling ops: &#x60;getNewFloatingIp&#x60; (catalog), &#x60;addFloatingIp&#x60; (commit).
        /// </summary>
        /// <param name="body"></param>
        /// <returns></returns>
        public void PutFloatingIps (FloatingIpOrderRequest body)
        {
            // verify the required parameter 'body' is set
            if (body == null) throw new ApiException(400, "Missing required parameter 'body' when calling PutFloatingIps");
    
            var path = "/floating_ips/order";
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
            IRestResponse response = (IRestResponse) ApiClient.CallApi(path, Method.PUT, queryParams, postBody, headerParams, formParams, fileParams, authSettings);
    
            if (((int)response.StatusCode) >= 400)
                throw new ApiException ((int)response.StatusCode, "Error calling PutFloatingIps: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling PutFloatingIps: " + response.ErrorMessage, response.ErrorMessage);
    
            return;
        }
    
        /// <summary>
        /// Update a Floating IP service&#x27;s editable settings (label / metadata) Stub edit endpoint that delegates to the same handler as &#x60;getFloatingIpInfo&#x60; — currently used for label/metadata edits surfaced by &#x60;ViewFloatingIp&#x60;. To re-route the IP to a different target use the dedicated &#x60;postFloatingIpsChangeIp&#x60; instead; this op does not change routing. Path param &#x60;id&#x60; (&#x60;floating_ip_id&#x60;). Body: form-encoded fields exposed by the Floating IP edit form (label/comment style). Returns the standard success-text response. Errors: 401 if unauthenticated; effectively 404 if &#x60;id&#x60; not owned by the caller. Read state first with &#x60;getFloatingIpInfo&#x60;.  Sibling ops: &#x60;getFloatingIpInfo&#x60; (read), &#x60;postFloatingIpsChangeIp&#x60; (re-route), &#x60;floating_ipsCancel&#x60;.
        /// </summary>
        /// <param name="id">The Floating IP service ID. Use the ID from &#x60;GET /floating_ips&#x60;.</param>
        /// <returns>SuccessTextResponse</returns>
        public SuccessTextResponse UpdateFloatingIpInfo (string id)
        {
            // verify the required parameter 'id' is set
            if (id == null) throw new ApiException(400, "Missing required parameter 'id' when calling UpdateFloatingIpInfo");
    
            var path = "/floating_ips/{id}";
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
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateFloatingIpInfo: " + response.Content, response.Content);
            else if (((int)response.StatusCode) == 0)
                throw new ApiException ((int)response.StatusCode, "Error calling UpdateFloatingIpInfo: " + response.ErrorMessage, response.ErrorMessage);
    
            return (SuccessTextResponse) ApiClient.Deserialize(response.Content, typeof(SuccessTextResponse), response.Headers);
        }
    
    }
}
