#tag Class
Protected Class WebhostingApi
	#tag Method, Flags = &h0
		Sub AddWebsite(, websiteOrderPostRequest As OpenAPIClient.Models.WebsiteOrderPostRequest)
		  // Operation addWebsite
		  // Place a new webhosting order, create the invoice, and queue provisioning
		  // - 
		  // - parameter websiteOrderPostRequest: (body)  
		  //
		  // Invokes WebhostingApiCallbackHandler.AddWebsiteCallback(ServiceOrderPostResponse) on completion. 
		  //
		  // - POST /websites/order
		  // - Step 3 of the webhosting order flow — actually places the order. Revalidates via `validate_buy_website()` (same checks as `putWebsites`), then calls `place_buy_website()` to allocate a backing webhosting server, create the `webhosting` service row in `pending` status, generate a `Repeat_Invoice` recurring billing row, produce an initial `invoices` row, and (when `registerDomain=true`) also kick off a domain order with its own invoice. The activator runs once the invoice is paid; `getWebsitesWelcomeEmail` then fires automatically with control-panel credentials. **Real money** — call `putWebsites` first to preview cost. Sibling ops: `getNewWebsite`, `putWebsites`, `getWebsiteInfo`, `webhostingCancel`.  **Body fields:** Identical to `putWebsites`. Required: `hostname`, `packageId`. Optional: `rootpass` (auto-generated if blank), `period`, `coupon`, `serviceOfferId`, `script`, `comment`, `registerDomain`.  **Returns** (schema `ServiceOrderPostResponse`): - `total_cost` (string/decimal) — total to pay across all generated invoices. - `iid` (string) — primary invoice id (numeric). - `iids` (array) — tagged invoice ids (e.g. `SERVICEwebhosting12345`). - `real_iids` (array) — numeric invoice ids to pass to `initiatePayment`. - `serviceId` (integer) — new `website_id`; use with `getWebsiteInfo` to poll status. - `invoice_description` (string) — human-readable summary. - `cj_params` (object) — Commission Junction tracking parameters.  **Side effects:** - Inserts `webhosting` service row (`website_status='pending'`). - Inserts `repeat_invoices` row for recurring charge. - Inserts `invoices` row for the first period. - When `registerDomain=true`: also creates a domain service row and its own invoice (`domain_serviceid`, `diid` returned alongside). - Hashes/encrypts `rootpass` to `history_log`.  **Auth:** Session/API key.  **Errors:** - When validation fails: response is the same `errors` array from `putWebsites` (HTTP 200 with `continue=false` shape). - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `getNewWebsite`, `putWebsites`. - **Next:** `getBillingInvoice` (confirm), `initiatePayment` (pay with `real_iids`), then poll `getWebsiteInfo` until `website_status=='active'`. - **Resend credentials after activation:** `getWebsitesWelcomeEmail`. - **Cancel before paying:** `webhostingCancel` (or `deleteBillingInvoice` for the pending invoice).  **Full ordering happy path:** ```text GET /websites/order                              -> catalog (getNewWebsite) PUT /websites/order { ...config }                -> price quote (putWebsites) POST /websites/order { ...config }               -> { serviceId, real_iids } (addWebsite) GET /billing/invoices/{iid}                      -> confirm invoice (getBillingInvoice) GET /billing/pay/cc/{real_iids[0]}               -> pay (initiatePayment) GET /websites/{serviceId}                        -> poll until website_status=="active" GET /websites/{serviceId}/welcome_email          -> resend credentials if needed ``` 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  localVarHTTPSocket.SetRequestContent(Xoson.toJSON(websiteOrderPostRequest), "application/json")
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.AddWebsite()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.AddWebsite()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.AddWebsite()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/order"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.AddWebsite_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.AddWebsite_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AddWebsitePrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.ServiceOrderPostResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.ServiceOrderPostResponse
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddWebsite_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.ServiceOrderPostResponse
		  CallbackHandler.AddWebsiteCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddWebsite_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.ServiceOrderPostResponse
		  Call AddWebsitePrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.AddWebsiteCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetNewWebsite()
		  // Operation getNewWebsite
		  // Read the webhosting order catalog — plans, packages, promo offers, pricing
		  // - 
		  //
		  // Invokes WebhostingApiCallbackHandler.GetNewWebsiteCallback(WebsitesOrder) on completion. 
		  //
		  // - GET /websites/order
		  // - Step 1 of the webhosting order flow. Returns the full ordering catalog needed to build a valid order: available `serviceTypes` (plans), `serviceOffers` (promotional bundles), `packages`, billing `period` options, the customer's currency symbol, default `serviceOfferId`, and `enableDomainRegistering` (whether free/paid domain registration is bundled). Read-only — no service or invoice created. Sibling discovery endpoints in other modules: `getNewVps`, `getNewMail`, `getNewDomain`. Sibling order-flow ops: `putWebsites`, `addWebsite`.  **Path/Query/Body:** None.  **Returns** (schema `WebsitesOrder`): - `currencySymbol` (string) — locale currency symbol for display. - `step` (integer) — current step in the multi-step order wizard. - `website` (integer) — pre-selected default plan id. - `period` (integer) — pre-selected default billing frequency. - `serviceOfferId` (integer) — pre-selected promo offer. - `serviceTypes` (array) — every plan; `services_ourcost` stripped server-side. Keys per row: `services_id`, `services_name`, `services_cost`, `services_type` (`WEB_CPANEL` / `WEB_DIRECTADMIN` / `WEB_PLESK` / `WEB_VESTA` / `WEB_PPA` / `WEB_WORDPRESS` / `WEB_STORAGE`), etc. - `serviceOffers` (array) — current promotional bundles. - `packages`, `packges` (array — legacy field name preserved alongside `packages`). - `enableDomainRegistering` (bool) — when `true`, the order can also register/transfer a domain. - `jsonServices`, `jsonServiceOffers` (string) — JSON-encoded copies for inline use in HTML.  **Auth:** Session/API key.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Next:** `putWebsites` (validate + quote — no charge), `addWebsite` (place order).  **Example abridged response:** ```json {   "currencySymbol": "$",   "step": 1,   "website": 23,   "period": 1,   "enableDomainRegistering": true,   "serviceTypes": [     {"services_id": 23, "services_name": "Standard", "services_cost": 8.00, "services_type": 1},     {"services_id": 25, "services_name": "Reseller", "services_cost": 24.95, "services_type": 1}   ] } ``` 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.GetNewWebsite()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.GetNewWebsite()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.GetNewWebsite()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/order"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetNewWebsite_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetNewWebsite_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetNewWebsitePrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.WebsitesOrder) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.WebsitesOrder
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetNewWebsite_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.WebsitesOrder
		  CallbackHandler.GetNewWebsiteCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetNewWebsite_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.WebsitesOrder
		  Call GetNewWebsitePrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetNewWebsiteCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetWebsiteBuyIp(, id As Integer)
		  // Operation getWebsiteBuyIp
		  // Read website IPs, current reverse DNS, and additional-IP pricing
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  //
		  // Invokes WebhostingApiCallbackHandler.GetWebsiteBuyIpCallback(GetWebsiteBuyIp200Response) on completion. 
		  //
		  // - GET /websites/{id}/buy_ip
		  // - Combined IP/billing view for a website: returns the primary `website_ip` plus any addon extras, each mapped to its current PTR hostname (via `get_hostname()`), the list of existing additional-IP repeat invoices (with `cancel_link` URLs), the count of paid extras, and the per-IP cost (in the website's billing currency, falling back to USD/`WEBSITE_IP_COST`). Read-only. Use to populate a "buy another IP" form or to audit current IP allocations. Sibling ops: `postWebsiteBuyIp` (buy or update PTR), `gettWebsiteReverseDns` (PTR-only view), `postWebsitesReverseDns` (PTR-only update).  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** - `ips` (object) — `{"<ipv4>": "<ptr-hostname>", ...}` for every IP attached. - `ipsDetails` (array) — existing addon invoices with each row's `ip`, `cancel_link` (`cancel_addon?module=webhosting&r=<rid>`), invoice metadata. - `ipCount` (integer) — count of paid addon IPs. - `ipCost` (float) — per-IP recurring cost in `currency`. - `currency` (string), `currencySymbol` (string).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Website Passed` — `id` not owned by caller. - `409 Website is not active` — `website_status != "active"`.  **Related calls:** - **Buy another IP:** `postWebsiteBuyIp`. - **Update PTRs only:** `postWebsitesReverseDns` (or `postWebsiteBuyIp` with `action=reverse_dns`). - **Cancel an addon IP:** follow the `cancel_link` URL. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.GetWebsiteBuyIp()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.GetWebsiteBuyIp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.GetWebsiteBuyIp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}/buy_ip"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetWebsiteBuyIp_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetWebsiteBuyIp_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetWebsiteBuyIpPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.GetWebsiteBuyIp200Response) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.GetWebsiteBuyIp200Response
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsiteBuyIp_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.GetWebsiteBuyIp200Response
		  CallbackHandler.GetWebsiteBuyIpCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsiteBuyIp_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.GetWebsiteBuyIp200Response
		  Call GetWebsiteBuyIpPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetWebsiteBuyIpCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetWebsiteInfo(, id As Integer)
		  // Operation getWebsiteInfo
		  // Read full configuration and status detail for one webhosting service
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  //
		  // Invokes WebhostingApiCallbackHandler.GetWebsiteInfoCallback(Website) on completion. 
		  //
		  // - GET /websites/{id}
		  // - Returns everything the customer dashboard shows for one website — status, hostname, control-panel username, primary IP, host server, plan, billing summary, action `client_links`, and supported addons. Read-only. Backed by `ViewWebsite::getDetails()`. Internal `admin_links`, `settings`, `csrf`, and `serviceMaster.website_key` (the API key) are stripped before return. Use to render a website detail page, verify ownership before mutating, or poll `website_status` after `addWebsite`. Sibling ops: `getWebsiteList`, `getWebsitesLogin`, `getWebsitesBackups`, `getWebsiteInvoices`, `webhostingCancel`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns** (schema `Website`): - `serviceInfo` — `website_id`, `website_hostname`, `website_username`, `website_ip`, `website_server`, `website_type` (plan id), `website_status`, `website_comment`. - `serviceMaster` — host-server row (cPanel/DA/Plesk hostname, panel URL). `website_key` is stripped. - `serviceType` — plan row (`services_ourcost` stripped). - `client_links` (array) — `{name, link, icon}` for restart, login, backup, etc. Internal `?link=queue&action=...` URLs are pre-resolved to plain action names. - `serviceAddons` — extra IPs, additional resources.  **Auth:** Session/API key. Ownership enforced via `website_custid`.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` (legacy text — webhosting reuses the helper) — `id` not owned by caller.  **Related calls:** - **Login to panel:** `getWebsitesLogin` (auto-login URL). - **Backups + restore:** `getWebsitesBackups`. - **Billing:** `getWebsiteInvoices`. - **Reverse DNS:** `gettWebsiteReverseDns`, `postWebsitesReverseDns`. - **Buy extra IP:** `getWebsiteBuyIp`, `postWebsiteBuyIp`. - **Migration:** `postWebsiteMigration`. - **Resend welcome email:** `getWebsitesWelcomeEmail`. - **Cancel:** `webhostingCancel`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.GetWebsiteInfo()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.GetWebsiteInfo()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.GetWebsiteInfo()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetWebsiteInfo_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetWebsiteInfo_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetWebsiteInfoPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.Website) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.Website
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsiteInfo_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.Website
		  CallbackHandler.GetWebsiteInfoCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsiteInfo_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.Website
		  Call GetWebsiteInfoPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetWebsiteInfoCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetWebsiteInvoices(, id As Integer)
		  // Operation getWebsiteInvoices
		  // List all billing invoices and recurring charges scoped to one website
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  //
		  // Invokes WebhostingApiCallbackHandler.GetWebsiteInvoicesCallback(ChargeInvoiceRows) on completion. 
		  //
		  // - GET /websites/{id}/invoices
		  // - Returns the billing history for one webhosting service — initial purchase invoice, recurring monthly/period invoices, and any IP-addon invoices created via `postWebsiteBuyIp`. Backed by `BillingInvoicesList::go()` with `module='webhosting'` (same handler pattern as VPS/Mail/etc. per-service invoice endpoints). Use to render a per-website billing-history view or find an unpaid invoice id to pass to `initiatePayment`. Sibling ops: `getBillingInvoice`, `initiatePayment`, sibling cross-module: `getVpsInvoices`, `getDomainInvoices`, `getMailInvoices`. For account-wide history use top-level `getBillingInvoices`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `ChargeInvoiceRows` — array of invoice rows: `id`, `amount`, `paid`, `description`, `date`, `due_date`, `currency`, `module=webhosting`, `service={id}`.  **Auth:** Session/API key. Ownership enforced via parent website.  **Errors:** - `401` — unauthenticated. - `400 Invalid Service` — `id` not owned by caller.  **Related calls:** - **Single invoice detail:** `getBillingInvoice`. - **Pay an unpaid invoice:** `initiatePayment`. - **Account-wide history:** `getBillingInvoices`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.GetWebsiteInvoices()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.GetWebsiteInvoices()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.GetWebsiteInvoices()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}/invoices"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetWebsiteInvoices_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetWebsiteInvoices_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetWebsiteInvoicesPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.ChargeInvoiceRows) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.ChargeInvoiceRows
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsiteInvoices_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.ChargeInvoiceRows
		  CallbackHandler.GetWebsiteInvoicesCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsiteInvoices_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.ChargeInvoiceRows
		  Call GetWebsiteInvoicesPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetWebsiteInvoicesCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetWebsiteList()
		  // Operation getWebsiteList
		  // List the caller's webhosting (cPanel/DirectAdmin/Plesk/Webuzo) services
		  // - 
		  //
		  // Invokes WebhostingApiCallbackHandler.GetWebsiteListCallback(WebsiteRow) on completion. 
		  //
		  // - GET /websites
		  // - Enumerates every shared/reseller hosting account ("website") owned by the authenticated customer. The canonical entry point for discovering a `website_id` to pass into other webhosting endpoints. Filtered server-side by `website_custid = session account_id` — cross-customer leaks are not possible. Empty array means the account has no websites (not an error). Sibling ops: `getWebsiteInfo`, `getWebsitesLogin`, `getWebsitesBackups`, `getWebsiteInvoices`, `webhostingCancel`, `getNewWebsite` (order a new one).  **Path/Query/Body:** None.  **Returns:** Array of `WebsiteRow` — per-website summary: - `website_id` (integer) — canonical id used in `/websites/{id}/_*` paths. - `website_hostname` (string) — primary FQDN. - `website_status` (string enum) — `pending` / `active` / `pending-cancel` / `canceled`. - `services_name` (string) — plan/package label (e.g. `Standard`, `Reseller`). - `repeat_invoices_cost` (decimal) — current recurring cost in the website's billing currency. - `website_comment` (string|null) — customer-provided note.  **Auth:** Session/API key. Ownership filter enforced via `website_custid`.  **Errors:** - `401` — unauthenticated.  **Related calls:** - **Per-website detail:** `getWebsiteInfo` (full). - **Control panel:** `getWebsitesLogin` (auto-login URL). - **Backups + restore points:** `getWebsitesBackups`. - **Billing:** `getWebsiteInvoices`. - **Order a new site:** `getNewWebsite` → `putWebsites` → `addWebsite`. - **Cancel:** `webhostingCancel`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.GetWebsiteList()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.GetWebsiteList()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.GetWebsiteList()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetWebsiteList_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetWebsiteList_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetWebsiteListPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, outData() As OpenAPIClient.Models.WebsiteRow) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
		      Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsiteList_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data() As OpenAPIClient.Models.WebsiteRow
		  CallbackHandler.GetWebsiteListCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsiteList_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data() As OpenAPIClient.Models.WebsiteRow
		  Call GetWebsiteListPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetWebsiteListCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetWebsitesBackups(, id As Integer)
		  // Operation getWebsitesBackups
		  // List off-site cpmove backups stored in Swift — list or inline-download archive
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  //
		  // Invokes WebhostingApiCallbackHandler.GetWebsitesBackupsCallback(WebsiteBackups) on completion. 
		  //
		  // - GET /websites/{id}/backups
		  // - Returns the list of off-site cpmove backups stored for the webhosting account, or — with the `download=<name>` query param — inline-streams the chosen archive as base64. Backups are read from the OpenStack Swift container `serviceMaster.website_name` (authenticated with `SWIFT_WEBHOSTING_USER`/`SWIFT_WEBHOSTING_PASS`) and filtered to objects matching `cpmove-{website_username}-*`. Use to find restore points before a risky change or before `webhostingCancel`. Empty array means no off-site cpmoves have been pushed for this account. Sibling ops: `webhostingCancel` (snapshot before terminating), `getWebsiteInfo`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Query params:** - `download` (string, optional) — when set to a backup `name` from the list, switches to inline download mode (returns the file base64-encoded). **Large payload** — only fetch when actually restoring.  **Returns:** - **List mode** (no `download`): array of `{name: "<cpmove-...>", size: "<human-scaled>"}` (size from `Content-Length` via `Scale($len, 'bytes', 1)`). - **Download mode** (`?download=<name>`): single object `{name, size, file: "<base64-encoded-archive>"}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller. - `409 Website is not active` — `website_status != "active"`.  **Related calls:** - **Take a backup before cancelling:** `getWebsitesBackups` (with `download=`) → `webhostingCancel`. - **Migrate to/from another host:** `postWebsiteMigration`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.GetWebsitesBackups()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.GetWebsitesBackups()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.GetWebsitesBackups()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}/backups"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetWebsitesBackups_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetWebsitesBackups_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetWebsitesBackupsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As WebsiteBackups) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New WebsiteBackups
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsitesBackups_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As WebsiteBackups
		  CallbackHandler.GetWebsitesBackupsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsitesBackups_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As WebsiteBackups
		  Call GetWebsitesBackupsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetWebsitesBackupsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetWebsitesLogin(, id As Integer)
		  // Operation getWebsitesLogin
		  // Get a one-time auto-login URL for the website's control panel
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  //
		  // Invokes WebhostingApiCallbackHandler.GetWebsitesLoginCallback(WebsiteLoginResponse) on completion. 
		  //
		  // - GET /websites/{id}/login
		  // - Returns a single-use auto-login URL so the customer can jump into their control panel without entering credentials. Branches on `serviceMaster.website_type`: - **WEB_CPANEL** (default): calls WHM `create_user_session` for the `cpaneld` service, returns a session-bound cPanel URL. - **WEB_DIRECTADMIN**: calls DA `CMD_API_LOGIN_KEYS` (`max_uses=2`, IP-locked to `127.0.0.1` plus the caller's `client_ip`); returns one-time URL. - **WEB_PLESK**: calls Plesk SDK `createSession`, returns `https://<host>:8443/enterprise/rsession_init.php?PLESKSESSID=...`. - **WEB_PPA**, **WEB_VESTA**: placeholders (return `Unhandled Server Type`).  Sibling ops: `getWebsiteInfo`, `getWebsitesWelcomeEmail` (re-send credentials instead).  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `{type: "location", location: "<one-time-url>"}`.  **Side effects:** - WHM/DA/Plesk-side session creation; sessions usually expire after first use (DirectAdmin: `max_uses=2`, IP-locked).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `Invalid Website Passed` — `id` not owned by caller. - `Website is <status>, only websites that are "active" can do this.` — `website_status != "active"`. - `No Host server or username` — service has no `website_username` or `website_server` resolved. - `Sorry! something went wrong, couldn't connect to <panel>!` — panel-side failure. - `Unhandled Server Type` — `website_type` is WEB_PPA / WEB_VESTA (or unrecognized).  **Related calls:** - **If you need the credentials themselves:** `getWebsitesWelcomeEmail` (re-sends the welcome email with username/password). - **List sites first:** `getWebsiteList`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.GetWebsitesLogin()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.GetWebsitesLogin()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.GetWebsitesLogin()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}/login"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetWebsitesLogin_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetWebsitesLogin_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetWebsitesLoginPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.WebsiteLoginResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.WebsiteLoginResponse
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsitesLogin_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.WebsiteLoginResponse
		  CallbackHandler.GetWebsitesLoginCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsitesLogin_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.WebsiteLoginResponse
		  Call GetWebsitesLoginPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetWebsitesLoginCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetWebsitesWelcomeEmail(, id As Integer)
		  // Operation getWebsitesWelcomeEmail
		  // Resend the webhosting welcome email with control-panel credentials and URL
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  //
		  // Invokes WebhostingApiCallbackHandler.GetWebsitesWelcomeEmailCallback(SuccessTextResponse) on completion. 
		  //
		  // - GET /websites/{id}/welcome_email
		  // - Resends the webhosting welcome email — the new-account email containing control-panel hostname, username, password, and getting-started instructions. Calls the dynamically-resolved `website_welcome_email($id)` helper which composes and dispatches the message to the account's `account_lid`. Idempotent — safe to call multiple times. Use after `addWebsite` finishes provisioning, or whenever a customer reports losing the original. Sibling welcome-email endpoints in other modules: `getVpsWelcomeEmail`, `getDomainsWelcomeEmail`, `getMailWelcomeEmail`. For an auto-login URL (no password reveal), use `getWebsitesLogin` instead.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `SuccessTextResponse` — `{text: "Welcome Email has been resent."}`.  **Side effects:** - Sends an email to the account's billing email address with the control-panel credentials currently stored in `history_log` for this website.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service Passed` — `id` not owned by caller. - `409 Service is not active` — `website_status != "active"`.  **Related calls:** - **Auto-login instead:** `getWebsitesLogin` (one-time URL, no password disclosure). - **List sites first:** `getWebsiteList`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.GetWebsitesWelcomeEmail()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.GetWebsitesWelcomeEmail()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.GetWebsitesWelcomeEmail()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}/welcome_email"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetWebsitesWelcomeEmail_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetWebsitesWelcomeEmail_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetWebsitesWelcomeEmailPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SuccessTextResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SuccessTextResponse
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsitesWelcomeEmail_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  CallbackHandler.GetWebsitesWelcomeEmailCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetWebsitesWelcomeEmail_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  Call GetWebsitesWelcomeEmailPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetWebsitesWelcomeEmailCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GettWebsiteReverseDns(, id As Integer)
		  // Operation gettWebsiteReverseDns
		  // Read current reverse-DNS (PTR) records for the website's IPs
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  //
		  // Invokes WebhostingApiCallbackHandler.GettWebsiteReverseDnsCallback(ReverseDnsEntries) on completion. 
		  //
		  // - GET /websites/{id}/reverse_dns
		  // - Returns the current PTR/reverse-DNS hostname for every IP attached to the website — primary `website_ip` plus any addons (from `get_service_addons().extra_ips`). PTRs are read live via `get_hostname()`, not cached. Use to render a PTR editor before calling `postWebsitesReverseDns`. **Note:** the operationId has a typo (`gettWebsiteReverseDns` with double-t) preserved for back-compat — do not rename. Sibling ops: `postWebsitesReverseDns` (update), `getWebsiteBuyIp` (broader IP+billing view), `postWebsiteBuyIp` (also supports `action=reverse_dns`).  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `ReverseDnsEntries` — `{"ips": {"<ip>": "<ptr-hostname>", ...}}`. Empty string for IPs with no PTR set.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller. - `409 Website is not active` — `website_status != "active"`.  **Related calls:** - **Update PTRs:** `postWebsitesReverseDns`. - **Add IPs first:** `getWebsiteBuyIp` → `postWebsiteBuyIp`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.GettWebsiteReverseDns()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.GettWebsiteReverseDns()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.GettWebsiteReverseDns()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}/reverse_dns"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GettWebsiteReverseDns_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GettWebsiteReverseDns_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GettWebsiteReverseDnsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.ReverseDnsEntries) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.ReverseDnsEntries
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GettWebsiteReverseDns_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.ReverseDnsEntries
		  CallbackHandler.GettWebsiteReverseDnsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GettWebsiteReverseDns_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.ReverseDnsEntries
		  Call GettWebsiteReverseDnsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GettWebsiteReverseDnsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostWebsiteBuyIp(, id As Integer, postWebsiteBuyIpRequest As OpenAPIClient.Models.PostWebsiteBuyIpRequest)
		  // Operation postWebsiteBuyIp
		  // Buy an additional IP for the website OR update reverse DNS records
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  // - parameter postWebsiteBuyIpRequest: (body)  
		  //
		  // Invokes WebhostingApiCallbackHandler.PostWebsiteBuyIpCallback(PostWebsiteBuyIp200Response) on completion. 
		  //
		  // - POST /websites/{id}/buy_ip
		  // - Dual-purpose mutation that branches on the `action` body field. **`action=buy_ip`** (default): allocates a new addon IP via `website_addon_get_free_ips`, creates an addon `repeat_invoices` row at `WEBSITE_IP_COST` (currency-converted to the parent invoice's currency), and emits a one-period `invoices` row to fund the first month — provisioning waits on payment and free-IP availability on the host server. **Real money**. **`action=reverse_dns`**: skips billing entirely and updates PTR records via `reverse_dns()` for any IP in the `ips` map whose new hostname differs from the current `get_hostname()` value. Sibling ops: `getWebsiteBuyIp` (preview), `gettWebsiteReverseDns` / `postWebsitesReverseDns` (PTR-only).  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body fields:** - `action` (string, optional, default `buy_ip`) — `buy_ip` or `reverse_dns`. - For `action=reverse_dns`: `ips` (object, required) — `{"<ip>": "<new-hostname>", ...}`. Only IPs already on the website are updated; others ignored. Empty-string values skipped.  **Returns:** - For `buy_ip`: `{text: "Ordered Additional IP successfully.", invoice: <integer>, repeatInvoice: <integer>}`. - For `reverse_dns`: `{message: "DNS Updated", success: true}`.  **Side effects:** - `buy_ip`: inserts `repeat_invoices` row (`Additional IP for Webhosting <id>`) and an `invoices` row for the first period. - `reverse_dns`: writes PTR records to the in-addr.arpa zone for changed IPs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Website Passed`. - `409 Website is not active`. - `No available free IPs on this server. Please contact support to order additional IPs.` — host has no free IPs.  **Related calls:** - **Preview first:** `getWebsiteBuyIp`. - **Pay the new addon invoice:** `initiatePayment` with the returned `invoice`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  localVarHTTPSocket.SetRequestContent(Xoson.toJSON(postWebsiteBuyIpRequest), "application/json")
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.PostWebsiteBuyIp()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.PostWebsiteBuyIp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.PostWebsiteBuyIp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}/buy_ip"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostWebsiteBuyIp_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostWebsiteBuyIp_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostWebsiteBuyIpPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.PostWebsiteBuyIp200Response) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.PostWebsiteBuyIp200Response
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostWebsiteBuyIp_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.PostWebsiteBuyIp200Response
		  CallbackHandler.PostWebsiteBuyIpCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostWebsiteBuyIp_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.PostWebsiteBuyIp200Response
		  Call PostWebsiteBuyIpPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostWebsiteBuyIpCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostWebsiteMigration(, id As Integer, postWebsiteMigrationRequest As OpenAPIClient.Models.PostWebsiteMigrationRequest)
		  // Operation postWebsiteMigration
		  // Submit a request for InterServer staff to migrate a website from another host
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  // - parameter postWebsiteMigrationRequest: (body)  
		  //
		  // Invokes WebhostingApiCallbackHandler.PostWebsiteMigrationCallback(PostWebsiteMigration200Response) on completion. 
		  //
		  // - POST /websites/{id}/migration
		  // - Submits a migration request: opens a support ticket containing the customer's credentials for their current host (cPanel/FTP/domain registrar) so InterServer staff can copy the site, databases, and email into this webhosting account. **Sensitive** — the body contains plaintext credentials for the source host. Do not log responses. The created ticket's id is returned; track progress with the helpdesk/tickets API. Sibling ops: `getWebsiteInfo`, `getWebsitesBackups`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body fields** (JSON or multipart): - `custPortal` (string) — URL of the current hosting provider's customer portal (e.g. `sso.godaddy.com`). - `regEmail` (string) — email/username at the current host. - `password` (string) — password at the current host. - `ctrlPanel` (string) — current control-panel URL (e.g. `yourdomain.com/cpanel/`). - `ftpUsername` (string), `ftpPassword` (string) — FTP credentials. - `siteBusyMig` (string) — info on site traffic / whether a holding page can be shown during migration. - `splReqMig` (string) — special requirements (PHP version, modules, etc.). - `domainReg` (string) — whether domain-registration transfer is also needed (`yes`/`no` or freeform). - `dataMig` (string) — nameserver switch timing preference. - `domainRegPortal`, `domainRegEmail`, `domainRegPassword` (strings) — domain-registrar credentials.  **Returns:** `{text: "Your migration request has been sucessfully submitted...", ticket: <integer>}` — pass `ticket` to the tickets API to monitor.  **Side effects:** - Creates a support ticket via `create_ticket()` with the credentials in the ticket body. - Inserts a `history_log` row of type `Webhost Migration`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service Passed` — `id` not owned by caller.  **Related calls:** - **Track migration progress:** Tickets API (use the returned `ticket` id). - **Verify after migration:** `getWebsitesLogin`, `getWebsiteInfo`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  localVarHTTPSocket.SetRequestContent(Xoson.toJSON(postWebsiteMigrationRequest), "application/json")
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.PostWebsiteMigration()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.PostWebsiteMigration()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.PostWebsiteMigration()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}/migration"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostWebsiteMigration_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostWebsiteMigration_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostWebsiteMigrationPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.PostWebsiteMigration200Response) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.PostWebsiteMigration200Response
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostWebsiteMigration_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.PostWebsiteMigration200Response
		  CallbackHandler.PostWebsiteMigrationCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostWebsiteMigration_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.PostWebsiteMigration200Response
		  Call PostWebsiteMigrationPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostWebsiteMigrationCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostWebsitesReverseDns(, id As Integer, reverseDnsEntries As OpenAPIClient.Models.ReverseDnsEntries)
		  // Operation postWebsitesReverseDns
		  // Bulk-update reverse-DNS (PTR) records for one or more website IPs
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  // - parameter reverseDnsEntries: (body)  
		  //
		  // Invokes WebhostingApiCallbackHandler.PostWebsitesReverseDnsCallback(TextResponse) on completion. 
		  //
		  // - POST /websites/{id}/reverse_dns
		  // - Sets the PTR hostname for each IP in the website's IP set. Calls `reverse_dns($ip, $newHostname)` for every IP in the body whose value differs from the current PTR and is non-empty; IPs not in the body are left alone. Always returns `{message: "DNS Updated", success: true}` even if no entries actually changed. PTR propagation is asynchronous — re-call `gettWebsiteReverseDns` after a few minutes to confirm. Equivalent to calling `postWebsiteBuyIp` with `action=reverse_dns`. Sibling ops: `gettWebsiteReverseDns`, `getWebsiteBuyIp`, `postWebsiteBuyIp`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body fields** (schema `ReverseDnsEntries`): - `ips` (object, required) — `{"<ip>": "<new-hostname>", ...}`. Only IPs that already belong to the website are updated; others ignored. Empty-string values skipped.  **Returns:** `{message: "DNS Updated", success: true}`.  **Side effects:** - One `reverse_dns()` call per IP whose value changed. Records are written to the in-addr.arpa zone; TTL-dependent propagation.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` (legacy text) — `id` not owned by caller. - `409 Website is not active` — `website_status != "active"`.  **Related calls:** - **Read current PTRs first:** `gettWebsiteReverseDns`. - **Equivalent endpoint:** `postWebsiteBuyIp` (`action=reverse_dns`). 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  localVarHTTPSocket.SetRequestContent(Xoson.toJSON(reverseDnsEntries), "application/json")
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.PostWebsitesReverseDns()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.PostWebsitesReverseDns()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.PostWebsitesReverseDns()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}/reverse_dns"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostWebsitesReverseDns_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostWebsitesReverseDns_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostWebsitesReverseDnsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.TextResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.TextResponse
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostWebsitesReverseDns_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.TextResponse
		  CallbackHandler.PostWebsitesReverseDnsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostWebsitesReverseDns_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.TextResponse
		  Call PostWebsitesReverseDnsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostWebsitesReverseDnsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PutWebsites(, websiteOrderPutRequest As OpenAPIClient.Models.WebsiteOrderPutRequest)
		  // Operation putWebsites
		  // Validate a webhosting order and preview cost — dry run, no charge
		  // - parameter websiteOrderPutRequest: (body)  
		  //
		  // Invokes WebhostingApiCallbackHandler.PutWebsitesCallback() on completion. 
		  //
		  // - PUT /websites/order
		  // - Step 2 of the webhosting order flow. Dry-runs the order through `validate_buy_website()`: checks `hostname` against `valid_hostname()` and the keyword blocklist, validates `packageId` against the customer's plan eligibility, confirms the chosen plan's hypervisor pool is in stock (`OUTOFSTOCK_WEBHOSTING_*` constants), applies any coupon and frequency discount, and returns a cost preview plus any validation errors. No invoice or service record is created. **Always call before `addWebsite`** to surface coupon/pricing/hostname problems cheaply. Sibling ops: `getNewWebsite` (catalog), `addWebsite` (place order).  **Body fields (form or JSON):** - `hostname` (string, required) — primary FQDN for the website. Must pass `valid_hostname()`, must not contain `interserver.net` (non-admin), must not be on the blocked-keyword list, must match the plan's TOS rules. - `rootpass` (string, optional) — control-panel admin password; if blank, a random 8-char password is generated server-side via `generateRandomString(8,1,1,1,1)`. - `packageId` (integer, required) — plan id from `getNewWebsite.serviceTypes[].services_id`. Must have `services_module='webhosting'` and `services_buyable=1` (non-admin). - `period` (integer, optional, default 1) — billing cycle in months: 1 / 6 / 12 / 24 / 36. Same frequency discounts as VPS apply. - `coupon` (string, optional) — coupon code. - `serviceOfferId` (integer, optional) — promo bundle from `getNewWebsite.serviceOffers`. - `script` (integer, optional, default 0) — auto-installer id (Softaculous/WordPress/etc., 0 = none). - `comment` (string, optional) — free-form note saved on the service row. - `registerDomain` (bool, optional) — when `true` and `enableDomainRegistering=true` from the catalog, also registers/transfers the domain through the order. - Implicit: TOS acceptance (validated via `tos='yes'` in source — required for non-admin).  **Returns** (validation envelope): - `continue` (bool) — `true` if the order can safely be POSTed. - `errors` (array of strings) — human-readable validation messages. - `frequency` (integer) — resolved billing frequency. - `coupon` (string) — the applied coupon name (echoed). - `couponCode` (integer) — the matched coupon row id, or `0` if none. - `serviceType` (integer) — resolved plan id. - `serviceCost` (float) — first-period total cost (includes coupon + period discount). - `originalCost` (float) — undiscounted reference. - `repeatServiceCost` (float) — recurring cost after discounts. - `hostname`, `password` (string) — final sanitized values (may differ from input — e.g. random password generated). - `introFrequency` (integer) — first-period bonus length (intro pricing).  **Side effects:** None — pure read.  **Auth:** Session/API key.  **Errors (within `errors` array, `continue=false`):** - `Invalid Billing Interval` — `period` not numeric. - `All webhosting servers are currently full.` — `OUTOFSTOCK_WEBHOSTING`. - `Invalid Package Specified.` — plan id not in the webhosting module or not buyable. - `Our <Plan> Webhosting Servers are currently full.` — plan-specific stock check. - `The hostname cannot contain interserver.net`. - `Hostname "<x>" Contains Invalid Characters Or Is Blank`. - `Hostname contains a blocked keyword.`. - `You must agree to the terms of service and click the checkbox saying so.`. - `Invalid Coupon Specified` — coupon not usable for this plan/customer.  Top-level HTTP errors: `401` unauthenticated.  **Related calls:** - **Prerequisite:** `getNewWebsite` (catalog). - **Next:** `addWebsite` (same body — actually places the order).  **Example request body:** ```json {   "hostname": "mystore.example.com",   "rootpass": "Sup3rS3cret!",   "packageId": 23,   "period": 12,   "coupon": "",   "registerDomain": false,   "script": 0 } ``` 
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  localVarHTTPSocket.SetRequestContent(Xoson.toJSON(websiteOrderPutRequest), "application/json")
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.PutWebsites()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.PutWebsites()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.PutWebsites()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/order"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.PutWebsites_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PutWebsites_error
		  
		  localVarHTTPSocket.SendRequest("PUT", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub PutWebsites_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.PutWebsitesCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PutWebsites_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.PutWebsitesCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub UpdateWebsiteInfo(, id As String)
		  // Operation updateWebsiteInfo
		  // POST mutation hook for the website detail page (use dedicated ops where possible)
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  //
		  // Invokes WebhostingApiCallbackHandler.UpdateWebsiteInfoCallback(SuccessTextResponse) on completion. 
		  //
		  // - POST /websites/{id}
		  // - POST mutation hook for the website detail page. The implementation currently routes through the same `View::go()` handler as `getWebsiteInfo`; concrete update behavior depends on which `client_links` action the form is driving. **For specific changes, prefer the dedicated endpoints** — they enforce field-level validation and queue the correct hypervisor/panel actions. Sibling ops: `getWebsiteInfo`, all dedicated mutation endpoints below.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** Form-encoded fields appropriate to the `client_links` action being driven.  **Returns:** `SuccessTextResponse` — `{text: "..."}`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller.  **Prefer these dedicated endpoints:** - **Buy a paid IP or update reverse DNS:** `postWebsiteBuyIp` (the latter via `action=reverse_dns`). - **PTR-only changes:** `postWebsitesReverseDns`. - **Migrate site from another host:** `postWebsiteMigration`. - **Resend control-panel credentials:** `getWebsitesWelcomeEmail`. - **Auto-login to cPanel/DA/Plesk:** `getWebsitesLogin`. - **Cancel:** `webhostingCancel`. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.UpdateWebsiteInfo()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.UpdateWebsiteInfo()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.UpdateWebsiteInfo()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}"
		  
		  Dim localVarPathStringid As String = id
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.UpdateWebsiteInfo_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.UpdateWebsiteInfo_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UpdateWebsiteInfoPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SuccessTextResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.SuccessTextResponse
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateWebsiteInfo_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  CallbackHandler.UpdateWebsiteInfoCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateWebsiteInfo_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  Call UpdateWebsiteInfoPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.UpdateWebsiteInfoCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub WebhostingCancel(, id As String)
		  // Operation webhostingCancel
		  // Schedule termination of a webhosting service — wipes panel account at cycle end
		  // - 
		  // - parameter id: (path) The website service ID. Use &#x60;website_id&#x60; from &#x60;GET /websites&#x60;. 
		  //
		  // Invokes WebhostingApiCallbackHandler.WebhostingCancelCallback(WebhostingCancel200Response) on completion. 
		  //
		  // - DELETE /websites/{id}
		  // - **DESTRUCTIVE.** Schedules the website for cancellation via the shared `BillingCancelService::go($id)` flow with `module='webhosting'`. Marks the service `pending-cancel`, halts the recurring invoice, and queues deprovisioning so cPanel/DirectAdmin/Plesk/Webuzo removes the account and **all hosted files, databases, mailboxes, and DNS** at end-of-cycle. **There is no client-side restore** — take a cpmove backup via `getWebsitesBackups` first (with `download=<name>`) if data must be preserved. Sibling ops: `getWebsitesBackups`, `getWebsiteInfo` (verify status flipped), `getWebsiteInvoices`.  **Path param:** - `id` (integer, required) — `website_id` from `getWebsiteList`.  **Body:** None.  **Returns:** `WebsiteCancelResponse` — cancel-service confirmation payload.  **Side effects:** - Sets `website_status='pending-cancel'`. - Marks the `repeat_invoices` row as non-renewing. - Logs the cancellation in `history_log`. - Queues deprovisioning to run at end-of-cycle (the cPanel/DA/Plesk account, all hosted files, databases, email accounts, and DNS will be removed). - Customer retains panel access until the cycle ends.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404` — `id` not owned by caller. - `409` — service in a state that cannot be cancelled (already `canceled`, etc.).  **Related calls:** - **Before cancelling:** `getWebsitesBackups` (download a cpmove archive — irretrievable after deprovisioning). - **After cancelling:** `getWebsiteInfo` (confirm `pending-cancel`), `getWebsiteInvoices` (final invoices). - **Sibling cancels on other modules:** `VPSCancel`, `CancelDomain`, `mailCancel`, etc. all use the same `CancelService` handler. 
		  // - defaultResponse: Nil
		  //
		  // - API Key:
		  //   - type: apiKey sessionid 
		  //   - name: sessionIdCookieAuth
		  // - API Key:
		  //   - type: apiKey X-API-KEY (HEADER)
		  //   - name: apiKeyAuth
		  // - API Key:
		  //   - type: apiKey sessionid (HEADER)
		  //   - name: sessionIdHeaderAuth
		  //
		  
		  Dim localVarHTTPSocket As New HTTPSecureSocket
		  Me.PrivateFuncPrepareSocket(localVarHTTPSocket)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdCookieAuth` before invoking `WebhostingApi.WebhostingCancel()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeyapiKeyAuth` before invoking `WebhostingApi.WebhostingCancel()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `WebhostingApi.ApiKeysessionIdHeaderAuth` before invoking `WebhostingApi.WebhostingCancel()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/websites/{id}"
		  
		  Dim localVarPathStringid As String = id
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.WebhostingCancel_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.WebhostingCancel_error
		  
		  
		  localVarHTTPSocket.SendRequest("DELETE", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function WebhostingCancelPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.WebhostingCancel200Response) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.WebhostingCancel200Response
			  Try
		        Xoson.fromJSON(outData, Content.toText())

		      Catch e As JSONException
		        error.Message = error.Message + " with JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xojo.Data.InvalidJSONException
		        error.Message = error.Message + " with Xojo.Data.JSON parse exception: " + e.Message
		        error.ErrorNumber = kErrorInvalidJSON
		        Return False
		        
		      Catch e As Xoson.XosonException
		        error.Message = error.Message + " with Xoson parse exception: " + e.Message
		        error.ErrorNumber = kErrorXosonProblem
		        Return False

		      End Try
		      
		      
		    ElseIf contentType.LeftB(19) = "multipart/form-data" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    ElseIf contentType.LeftB(33) = "application/x-www-form-urlencoded" then
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    Else
		      error.Message = "Unsupported media type: " + contentType
		      error.ErrorNumber = kErrorUnsupportedMediaType
		      Return False

		    End If
		  Else
		    error.Message = error.Message + ". " + Content
			error.ErrorNumber = kErrorHTTPFail
		    Return False
		  End If
		  
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub WebhostingCancel_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.WebhostingCancel200Response
		  CallbackHandler.WebhostingCancelCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub WebhostingCancel_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.WebhostingCancel200Response
		  Call WebhostingCancelPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.WebhostingCancelCallback(error, data)
		End Sub
	#tag EndMethod






	#tag Method, Flags = &h21
		Private Function AuthenticationRequired(Realm As String, Headers As InternetHeaders, ByRef Name As String, ByRef Password As String) As Boolean
		  #Pragma Unused Realm
		  #Pragma Unused Headers
		  Name = Me.BasicAuthUser
		  Password = Me.BasicAuthPassword
		  Return True
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PrivateFuncPrepareSocket(socket As HTTPSecureSocket)
		  socket.Secure = Me.useHTTPS
		  socket.ConnectionType = SSLSocket.TLSv12
		  socket.Port = Me.Port
		  socket.RequestHeaders.Delete("Accept")
		  socket.RequestHeaders.AppendHeader("Accept", "text/plain")
		  socket.RequestHeaders.AppendHeader("Accept", "application/json")
		  socket.RequestHeaders.AppendHeader("Content-Type", "application/json")

		  If Me.AdditionalHeaders <> Nil Then
		    For Each HeaderName As Variant In Me.AdditionalHeaders.Keys
		      Dim headerValueS As Variant = additionalHeaders.Value(HeaderName)
		      If headerValueS.IsArray Then
		        If headerValueS.ArrayElementType = Variant.TypeString Then
		          Dim values() As String = headerValueS
		          For Each value As String In values
		            socket.RequestHeaders.AppendHeader(HeaderName, value)
		          Next
		        Else
		          Raise New OpenAPIClient.OpenAPIClientException(kErrorInternal, "AdditionalHeaders only support Strings and String arrays as values.")
		        End If
		      Else
		        socket.RequestHeaders.AppendHeader(HeaderName, headerValueS.StringValue)
		      End If
		    Next
		  End If
		End Sub
	#tag EndMethod



	#tag Property, Flags = &h0
		AdditionalHeaders As Dictionary
	#tag EndProperty

	#tag Property, Flags = &h0
		ApiKeyapiKeyAuth As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ApiKeysessionIdHeaderAuth As String
	#tag EndProperty

	#tag Property, Flags = &h0
		ApiKeysessionIdCookieAuth As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BasePath As String = "https://my.interserver.net/apiv2"
	#tag EndProperty

	#tag Property, Flags = &h0
		BasicAuthPassword As String
	#tag EndProperty

	#tag Property, Flags = &h0
		BasicAuthUser As String
	#tag EndProperty

	#tag Property, Flags = &h0
		CallbackHandler As OpenAPIClient.APIs.WebhostingApiCallbackHandler
	#tag EndProperty

	#tag Property, Flags = &h0
		Host As String = ""
	#tag EndProperty

	#tag Property, Flags = &h0
		Port As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		UseHTTPS As Boolean = true
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="BasePath"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BasicAuthUser"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="BasicAuthPassword"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseHTTPS"
			Visible=false
			Group="Behavior"
			InitialValue="true"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Port"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Host"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
