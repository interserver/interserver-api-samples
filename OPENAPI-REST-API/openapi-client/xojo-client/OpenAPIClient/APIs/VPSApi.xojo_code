#tag Class
Protected Class VPSApi
	#tag Method, Flags = &h0
		Sub AddVps(, Optional vpsOrderPostRequest As OpenAPIClient.Models.VpsOrderPostRequest)
		  // Operation addVps
		  // Place a new VPS order, create the invoice, and queue provisioning
		  // - 
		  // - parameter vpsOrderPostRequest: (body)  (optional)
		  //
		  // Invokes VPSApiCallbackHandler.AddVpsCallback(ServiceOrderPostResponse) on completion. 
		  //
		  // - POST /vps/order
		  // - Step 3 of the VPS order flow — actually places the order. Revalidates the same configuration that `putVps` accepts (so the request is safe even if `putVps` was skipped), then calls `place_buy_vps`: allocates a backing hypervisor server via `get_vps_next_server`, creates a `Repeat_Invoice` ORM row for the recurring charge, generates the initial `invoices` row via `$repeat_invoice->invoice()`, inserts a `vps` service record with `vps_status='pending'`, and creates any control-panel addon invoices (CPanel/DirectAdmin). Returns the new service id plus invoice ids the caller must pay before provisioning runs. **Real money** — call `putVps` first to preview cost. Sibling ops: `getNewVps`, `putVps`, `getVpsInfo`, `VPSCancel`.  **Body fields:** Identical to `putVps`. Required: `osDistro`, `osVersion`, `vpsPlatform`, `slices`. Optional: `location` (default 1), `period` (default 1), `coupon`, `hostname`, `rootpass`, `controlpanel` (default `none`), `comment`. Same validation rules apply (slice range, rootpass regex for Linux, hostname FQDN format, platform↔OS↔controlpanel compatibility).  **Returned fields** (schema `ServiceOrderPostResponse`): - `success` (bool) — `true` on successful placement. - `serviceid` (integer) — new VPS id; use this with `getVpsInfo` to poll status. - `iid` (string) — primary invoice id (numeric). - `real_iids` (array of strings) — numeric invoice ids to pass to `initiatePayment` (`invoices` path param). - `iids` (array of strings) — tagged invoice ids (e.g. `SERVICEvps12345`) — alternative payment identifier. - `total_cost` (decimal string) — total to pay across all generated invoices. - `invoice_description` (string) — human-readable summary (e.g. `KVM 2 Slices`). - `cj_params` (object) — Commission Junction tracking parameters (affiliate flows).  **Side effects:** - Inserts row into `vps` table (`vps_status='pending'`). - Inserts `repeat_invoices` row for the recurring charge. - Inserts `invoices` row for the first period charge. - Inserts additional `invoices` rows for CPanel/DirectAdmin addons if `controlpanel != 'none'`. - Logs a `vps` signup event in `history_log`. - Saves root password to `history_log` (encrypted at rest).  **Errors:** - `400 Bad Request` — validation failed; response body is the `errors` array from validation. - `401 Unauthorized` — missing session/API key.  **Related calls:** - **Prerequisite:** `getNewVps` (catalog), `putVps` (preview cost — strongly recommended). - **Next:** `getBillingInvoice` (review invoice line items), `initiatePayment` (`GET /billing/pay/{method}/{invoices}` — pay with `real_iids`), then `getVpsInfo` (poll for `vps_status == "active"`), `getVpsWelcomeEmail` (resend credentials). - **Cancel before paying:** `VPSCancel`.  **Example request body:** Same as `putVps`.  **Example response:** ```json {   "success": true,   "serviceid": 12345,   "iid": "25296600",   "real_iids": ["25296600"],   "iids": ["SERVICEvps12345"],   "total_cost": "12.00",   "invoice_description": "KVM 2 Slices",   "cj_params": {} } ``` **Full ordering happy path:** ```text GET /vps/order                                  -> catalog (getNewVps) PUT /vps/order { ...config }                    -> price quote (putVps) POST /vps/order { ...config }                   -> { serviceid, real_iids } (addVps) GET /billing/invoices/{iid}                     -> confirm invoice (getBillingInvoice) GET /billing/pay/cc/{real_iids[0]}              -> pay (payInvoice; type=submit|redirect|single) GET /vps/{serviceid}                            -> poll until vps_status=="active" (getVpsInfo) ``` 
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
		  localVarHTTPSocket.SetRequestContent(Xoson.toJSON(vpsOrderPostRequest), "application/json")
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.AddVps()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.AddVps()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.AddVps()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/order"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.AddVps_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.AddVps_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function AddVpsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.ServiceOrderPostResponse) As Boolean
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
		Private Sub AddVps_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.ServiceOrderPostResponse
		  CallbackHandler.AddVpsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub AddVps_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.ServiceOrderPostResponse
		  Call AddVpsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.AddVpsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub DeleteVpsBackup(, id As Integer, Escapedfile As String, all As AllEnum_DeleteVpsBackup)
		  // Operation deleteVpsBackup
		  // Permanently delete a VPS backup file by name (irreversible)
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter Escapedfile: (query) The backup filename to delete. 
		  // - parameter all: (query) Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given VPS. (optional, default to Sample)
		  //
		  // Invokes VPSApiCallbackHandler.DeleteVpsBackupCallback(SuccessTextResponse) on completion. 
		  //
		  // - DELETE /vps/{id}/backups
		  // - Removes a backup file from storage to free space. For `minio`-typed backups runs `mc rm --force --recursive` on the path; for `swift`-typed backups removes the storage object via the Swift API. ZFS-typed backups **cannot** be deleted through this endpoint — they return an error directing the caller to open a support ticket. **Irreversible** — once deleted the backup cannot be used with `postVpsRestore` or `downloadVpsBackup`. Sibling ops: `getVpsBackups` (list), `downloadVpsBackup` (download first), `getVpsBackup` (create new).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Query params:** - `file` (string, required) — exact `name` from `getVpsBackups` (the canonical backup identifier).  **Returns:** `SuccessTextResponse` — `Backup <name> removed.` on success.  **Side effects:** - **minio**: `mc rm --force --recursive` removes the entire backup directory. - **swift**: deletes the listed object(s) plus any multi-part `extra` segments.  **Auth:** Session/API key. Ownership enforced via parent VPS.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - `No file specified` — `file` query param missing. - **ZFS backup:** `This type of backup if not removable. Please contact support if you need this removed.` - **MinIO rm failure:** `Error removing file <name>`.  **Related calls:** - **List first to get `name`:** `getVpsBackups`. - **Download before deleting:** `downloadVpsBackup` (MinIO only; Swift/ZFS disabled). - **Restore (don't delete):** `postVpsRestore`. 
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
		  
		  Dim localVarQueryParams As String = "?"
		  localVarQueryParams = localVarQueryParams + EncodeURLComponent("all") + "=" + EncodeURLComponent(AllEnum_DeleteVpsBackupToString(all))
		  
		  localVarQueryParams = localVarQueryParams + "&" + EncodeURLComponent("file") + "=" + EncodeURLComponent(Escapedfile)
		  

		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DeleteVpsBackup()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DeleteVpsBackup()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DeleteVpsBackup()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/backups"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DeleteVpsBackup_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DeleteVpsBackup_error
		  
		  
		  localVarHTTPSocket.SendRequest("DELETE", Me.BasePath + localVarPath + localVarQueryParams)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DeleteVpsBackupPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SuccessTextResponse) As Boolean
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
		Private Sub DeleteVpsBackup_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  CallbackHandler.DeleteVpsBackupCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DeleteVpsBackup_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  Call DeleteVpsBackupPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DeleteVpsBackupCallback(error, data)
		End Sub
	#tag EndMethod



	#tag Method, Flags = &h21
		Private Function AllEnum_DeleteVpsBackupToString(value As AllEnum_DeleteVpsBackup) As String
		  Select Case value
		    
		    Case AllEnum_DeleteVpsBackup.Escaped0
		      Return "0"
		    Case AllEnum_DeleteVpsBackup.Escaped1
		      Return "1"
		    Case AllEnum_DeleteVpsBackup.UnknownDefaultOpenApi
		      Return "unknown_default_open_api"
		    Case 
		      Return ""
		  End Select
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub DoVpsBlockSmtp(, id As Integer)
		  // Operation doVpsBlockSmtp
		  // Block outbound SMTP (port 25) on the VPS to prevent spam/abuse
		  // - 
		  // - parameter id: (path) VPS ID number. 
		  //
		  // Invokes VPSApiCallbackHandler.DoVpsBlockSmtpCallback(QueueResponse) on completion. 
		  //
		  // - GET /vps/{id}/block_smtp
		  // - Blocks outbound SMTP (port 25) traffic on the VPS at the hypervisor level — typical for cPanel/WHM customers who route through a smart relay, or for VPS that should never emit mail directly. Queues a `block_smtp` action on the `vpsqueue` and triggers a VNC re-setup. Despite being GET, this is a side-effecting action and the MCP parser flags it accordingly. **One-way from the client side:** there is no public unblock endpoint — re-enabling outbound SMTP requires a support ticket so abuse history can be reviewed. Sibling ops: `getVpsInfo` (verify state), `doVpsRestart`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `{ text, queueId }` — `queueId` references the `queue_log` row; allow up to 2 minutes for the iptables/firewall rule to take effect.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - `409 VPS is not active` — `vps_status != "active"`.  **Reversibility:** Not client-reversible — open a ticket.  **Related calls:** - **Verify state:** `getVpsInfo`. - **General lifecycle:** `doVpsStart`, `doVpsStop`, `doVpsRestart`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DoVpsBlockSmtp()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DoVpsBlockSmtp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DoVpsBlockSmtp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/block_smtp"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DoVpsBlockSmtp_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DoVpsBlockSmtp_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoVpsBlockSmtpPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub DoVpsBlockSmtp_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.DoVpsBlockSmtpCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoVpsBlockSmtp_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call DoVpsBlockSmtpPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DoVpsBlockSmtpCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub DoVpsDisableCd(, id As Integer)
		  // Operation doVpsDisableCd
		  // Remove the virtual CD/DVD device entirely from the VPS configuration
		  // - 
		  // - parameter id: (path) VPS ID number. 
		  //
		  // Invokes VPSApiCallbackHandler.DoVpsDisableCdCallback(QueueResponse) on completion. 
		  //
		  // - GET /vps/{id}/disable_cd
		  // - Removes the virtual CD/DVD device from the VPS hardware configuration entirely — distinct from `doVpsEjectCd`, which only unmounts the ISO but leaves the drive attached. Queues a `disable_cd` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Reversible by attaching a new CD via `postVpsInsertCd`. Sibling ops: `doVpsEjectCd` (eject ISO but keep drive), `getVpsInsertCd` (list ISOs), `postVpsInsertCd` (mount ISO).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `{ text, queueId }` — allow ~2 minutes for hypervisor action.  **Side effects:** - Inserts `vpsqueue` `disable_cd` row. - Calls `vps_resetup_vnc()` to refresh the VNC config.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Re-attach drive:** `postVpsInsertCd` (provide ISO URL). - **Just unmount the ISO:** `doVpsEjectCd`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DoVpsDisableCd()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DoVpsDisableCd()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DoVpsDisableCd()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/disable_cd"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DoVpsDisableCd_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DoVpsDisableCd_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoVpsDisableCdPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub DoVpsDisableCd_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.DoVpsDisableCdCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoVpsDisableCd_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call DoVpsDisableCdPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DoVpsDisableCdCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub DoVpsDisableQuota(, id As Integer)
		  // Operation doVpsDisableQuota
		  // Disable per-user disk quota enforcement inside the VPS guest OS
		  // - 
		  // - parameter id: (path) VPS ID number. 
		  //
		  // Invokes VPSApiCallbackHandler.DoVpsDisableQuotaCallback(QueueResponse) on completion. 
		  //
		  // - GET /vps/{id}/disable_quota
		  // - Stops enforcing per-user disk quotas inside the VPS guest OS — useful when an application or user workflow conflicts with quota limits. Queues a `disable_quota` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Reversible via `doVpsEnableQuota`. Sibling op: `doVpsEnableQuota`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `{ text, queueId }` — allow ~2 minutes.  **Side effects:** - Inserts `vpsqueue` `disable_quota` row. - Calls `vps_resetup_vnc()`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Re-enable:** `doVpsEnableQuota`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DoVpsDisableQuota()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DoVpsDisableQuota()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DoVpsDisableQuota()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/disable_quota"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DoVpsDisableQuota_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DoVpsDisableQuota_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoVpsDisableQuotaPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub DoVpsDisableQuota_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.DoVpsDisableQuotaCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoVpsDisableQuota_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call DoVpsDisableQuotaPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DoVpsDisableQuotaCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub DoVpsEjectCd(, id As Integer)
		  // Operation doVpsEjectCd
		  // Eject the mounted ISO from the VPS virtual CD drive (keep the drive)
		  // - 
		  // - parameter id: (path) VPS ID number. 
		  //
		  // Invokes VPSApiCallbackHandler.DoVpsEjectCdCallback(QueueResponse) on completion. 
		  //
		  // - GET /vps/{id}/eject_cd
		  // - Unmounts whatever ISO is currently in the VPS virtual CD drive, leaving the drive attached so another ISO can be mounted. Distinct from `doVpsDisableCd` (which removes the drive itself). Queues an `eject_cd` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Sibling ops: `getVpsInsertCd` (list available ISOs), `postVpsInsertCd` (mount a different one), `doVpsDisableCd` (remove drive entirely).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `{ text, queueId }` — allow ~2 minutes.  **Side effects:** - Inserts `vpsqueue` `eject_cd` row. - Calls `vps_resetup_vnc()`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Mount a different ISO:** `postVpsInsertCd`. - **Remove the drive entirely:** `doVpsDisableCd`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DoVpsEjectCd()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DoVpsEjectCd()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DoVpsEjectCd()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/eject_cd"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DoVpsEjectCd_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DoVpsEjectCd_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoVpsEjectCdPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub DoVpsEjectCd_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.DoVpsEjectCdCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoVpsEjectCd_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call DoVpsEjectCdPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DoVpsEjectCdCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub DoVpsEnableQuota(, id As Integer)
		  // Operation doVpsEnableQuota
		  // Enable per-user disk quota enforcement inside the VPS guest OS
		  // - 
		  // - parameter id: (path) VPS ID number. 
		  //
		  // Invokes VPSApiCallbackHandler.DoVpsEnableQuotaCallback(QueueResponse) on completion. 
		  //
		  // - GET /vps/{id}/enable_quota
		  // - Turns on per-user disk-quota enforcement inside the VPS guest OS. Queues an `enable_quota` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Reversible via `doVpsDisableQuota`. Sibling op: `doVpsDisableQuota`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `{ text, queueId }` — allow ~2 minutes.  **Side effects:** - Inserts `vpsqueue` `enable_quota` row. - Calls `vps_resetup_vnc()`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Disable later:** `doVpsDisableQuota`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DoVpsEnableQuota()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DoVpsEnableQuota()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DoVpsEnableQuota()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/enable_quota"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DoVpsEnableQuota_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DoVpsEnableQuota_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoVpsEnableQuotaPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub DoVpsEnableQuota_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.DoVpsEnableQuotaCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoVpsEnableQuota_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call DoVpsEnableQuotaPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DoVpsEnableQuotaCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub DoVpsRestart(, id As Integer)
		  // Operation doVpsRestart
		  // Reboot the VPS — preferred over stop+start for software changes
		  // - 
		  // - parameter id: (path) VPS ID number. 
		  //
		  // Invokes VPSApiCallbackHandler.DoVpsRestartCallback(QueueResponse) on completion. 
		  //
		  // - GET /vps/{id}/restart
		  // - Reboots the VPS — typically after a kernel update, configuration change, or to recover from an unresponsive state. **Preferred over `doVpsStop` followed by `doVpsStart`** because it preserves the boot context and lets the hypervisor handle the sequence atomically. Queues a `restart` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET. Idempotent in effect — restarting a running VPS reboots it, restarting a stopped VPS starts it. Sibling ops: `doVpsStart`, `doVpsStop`, `getVpsInfo`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `{ text, queueId }` — allow ~2 minutes; poll `getVpsInfo` to confirm state.  **Side effects:** - Inserts `vpsqueue` `restart` row. - Calls `vps_resetup_vnc()` to refresh the VNC config.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active` — also returned for `cancelled`/`suspended` services.  **Related calls:** - **Verify state:** `getVpsInfo`. - **Power off only:** `doVpsStop`. - **Power on:** `doVpsStart`. - **Boot from CD:** `postVpsInsertCd` then `doVpsRestart`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DoVpsRestart()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DoVpsRestart()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DoVpsRestart()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/restart"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DoVpsRestart_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DoVpsRestart_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoVpsRestartPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub DoVpsRestart_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.DoVpsRestartCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoVpsRestart_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call DoVpsRestartPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DoVpsRestartCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub DoVpsStart(, id As Integer)
		  // Operation doVpsStart
		  // Power on a stopped VPS instance
		  // - 
		  // - parameter id: (path) VPS ID number. 
		  //
		  // Invokes VPSApiCallbackHandler.DoVpsStartCallback(QueueResponse) on completion. 
		  //
		  // - GET /vps/{id}/start
		  // - Powers on a stopped VPS. Queues a `start` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET, idempotent in practice — calling on an already-running VPS is a no-op at the hypervisor. The `vps_status` field at the service level remains `active` (status reflects billing/lifecycle, not running power state); use `getVpsTrafficUsage` or external monitoring to confirm the VPS is actually up. Sibling ops: `doVpsStop`, `doVpsRestart`, `getVpsInfo`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `{ text, queueId }` — `queueId` references the `queue_log` entry. Allow ~10–30 s for the hypervisor to act.  **Side effects:** - Inserts `vpsqueue` `start` row. - Calls `vps_resetup_vnc()`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active` — service is `cancelled`, `suspended` (non-payment), or `pending`. Resolve via payment (`initiatePayment`) for `suspended`, or contact support for `cancelled`/`pending` issues.  **Related calls:** - **Reboot instead:** `doVpsRestart` (preferred over stop+start). - **Power off:** `doVpsStop`. - **Current state:** `getVpsInfo`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DoVpsStart()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DoVpsStart()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DoVpsStart()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/start"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DoVpsStart_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DoVpsStart_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoVpsStartPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub DoVpsStart_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.DoVpsStartCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoVpsStart_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call DoVpsStartPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DoVpsStartCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub DoVpsStop(, id As Integer)
		  // Operation doVpsStop
		  // Power off a running VPS — billing continues until cancellation
		  // - 
		  // - parameter id: (path) VPS ID number. 
		  //
		  // Invokes VPSApiCallbackHandler.DoVpsStopCallback(QueueResponse) on completion. 
		  //
		  // - GET /vps/{id}/stop
		  // - Halts the VPS without rebooting — typical before manually triggering a snapshot, freeing hypervisor resources, or temporarily taking a workload offline. Queues a `stop` action on the hypervisor (`vpsqueue`) and triggers a VNC re-setup. Side-effecting GET, idempotent — stopping an already-stopped VPS is a no-op. **Billing continues while the VPS is stopped** — to stop both the workload and billing, use `VPSCancel`. Sibling ops: `doVpsStart`, `doVpsRestart`, `VPSCancel`, `getVpsBackup` (snapshot first).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `{ text, queueId }`. Allow ~10–30 s.  **Side effects:** - Inserts `vpsqueue` `stop` row. - Calls `vps_resetup_vnc()`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Reboot instead:** `doVpsRestart` (preferred for software changes). - **Power on later:** `doVpsStart`. - **Snapshot first:** `getVpsBackup`. - **Stop billing too:** `VPSCancel`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DoVpsStop()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DoVpsStop()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DoVpsStop()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/stop"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DoVpsStop_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DoVpsStop_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DoVpsStopPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub DoVpsStop_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.DoVpsStopCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DoVpsStop_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call DoVpsStopPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DoVpsStopCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub DownloadVpsBackup(, id As Integer, downloadQsBackupRequest As OpenAPIClient.Models.DownloadQsBackupRequest, all As AllEnum_DownloadVpsBackup)
		  // Operation downloadVpsBackup
		  // Issue a 24-hour pre-signed URL to download a MinIO-backed VPS backup
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter downloadQsBackupRequest: (body)  
		  // - parameter all: (query) Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given VPS. (optional, default to Sample)
		  //
		  // Invokes VPSApiCallbackHandler.DownloadVpsBackupCallback(DownloadQsBackup200Response) on completion. 
		  //
		  // - PATCH /vps/{id}/backups
		  // - Generates a time-limited download link for a MinIO/S3-backed VPS backup so the customer can fetch it off-platform. Runs `mc share download --expire=24h` against the resolved backup path and returns the resulting public URL — valid for 24 hours from issue. Only `minio`-typed backups are downloadable; `swift` and `zfs` backups have direct download disabled (returns an error directing the customer to support). Sibling ops: `getVpsBackups` (list to find `name`), `postVpsRestore` (restore in place — no download needed), `deleteVpsBackup`, `getVpsBackup` (create new).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body (JSON or multipart, required):** - `file` (string, required) — exact `name` from `getVpsBackups`.  **Returns:** - `text` (string) — `URL available for the next 24 hours`. - `url` (string) — pre-signed download URL (HTTPS).  **Auth:** Session/API key. Ownership enforced via parent VPS.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - `No file specified` — `file` body field missing. - **Swift backup:** `Downloads for this type have been disabled. Please contact support if you need this backup.` - **ZFS backup:** same disabled message. - **MinIO share failure:** `Error sharing file <name>`.  **Related calls:** - **Prerequisite:** `getVpsBackups` (find a backup with `type == "minio"`). - **Alternative:** `postVpsRestore` (restore in place — no download). - **Cleanup after download:** `deleteVpsBackup`. 
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
		  localVarHTTPSocket.SetRequestContent(Xoson.toJSON(downloadQsBackupRequest), "application/json")
		  Dim localVarQueryParams As String = "?"
		  localVarQueryParams = localVarQueryParams + EncodeURLComponent("all") + "=" + EncodeURLComponent(AllEnum_DownloadVpsBackupToString(all))
		  

		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.DownloadVpsBackup()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.DownloadVpsBackup()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.DownloadVpsBackup()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/backups"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.DownloadVpsBackup_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.DownloadVpsBackup_error
		  
		  
		  localVarHTTPSocket.SendRequest("PATCH", Me.BasePath + localVarPath + localVarQueryParams)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function DownloadVpsBackupPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.DownloadQsBackup200Response) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.DownloadQsBackup200Response
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
		Private Sub DownloadVpsBackup_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.DownloadQsBackup200Response
		  CallbackHandler.DownloadVpsBackupCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub DownloadVpsBackup_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.DownloadQsBackup200Response
		  Call DownloadVpsBackupPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.DownloadVpsBackupCallback(error, data)
		End Sub
	#tag EndMethod



	#tag Method, Flags = &h21
		Private Function AllEnum_DownloadVpsBackupToString(value As AllEnum_DownloadVpsBackup) As String
		  Select Case value
		    
		    Case AllEnum_DownloadVpsBackup.Escaped0
		      Return "0"
		    Case AllEnum_DownloadVpsBackup.Escaped1
		      Return "1"
		    Case AllEnum_DownloadVpsBackup.UnknownDefaultOpenApi
		      Return "unknown_default_open_api"
		    Case 
		      Return ""
		  End Select
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetNewVps()
		  // Operation getNewVps
		  // Get the VPS order catalog — platforms, OS templates, locations, pricing
		  // - 
		  //
		  // Invokes VPSApiCallbackHandler.GetNewVpsCallback(VpsOrder) on completion. 
		  //
		  // - GET /vps/order
		  // - Step 1 of the VPS order flow. Returns the full ordering catalog the customer needs to build a valid VPS configuration: virtualization platforms (`kvm`, `kvmstorage`, `hyperv`), OS templates grouped by platform+distro, datacenter locations with current stock flags, per-slice resource costs converted to the customer's billing currency, control-panel prices, and slice resource defaults (RAM/HD/BW per slice, max slices per VPS). No path or query params, no body. The response drives the order form; once the user picks a config, call `putVps` for a dry-run price quote, then `addVps` to actually place the order. Sibling ops: `putVps`, `addVps`, `getVpsList` (existing VPS).  **Returned top-level fields** (schema `VpsOrder`): - `platformNames` (object) — display names keyed by platform tag (`{kvm: "KVM", kvmstorage: "KVM Storage", hyperv: "HyperV"}`). - `platformPackages` (object) — service-type ids keyed by platform tag (`{kvm: 32, kvmstorage: 57, hyperv: 54}`). - `packageCosts` (object) — base list cost keyed by service-type id. - `templates` (object) — nested `{platform: {os: {template_file: template_version}}}` template tree. - `osNames` (object) — display name per `template_os` key. - `locationNames` (object) — `{1: "New Jersey", 2: "Los Angeles", 3: "Dallas, TX"}`. - `locationStock` (object) — `{location_id: {platform_tag: bool}}` — `true` = in stock. - `vpsSlice<Platform>Cost` (float) — per-slice cost per platform in customer currency (e.g. `vpsSliceKvmLCost`, `vpsSliceKvmStorageCost`, `vpsSliceHypervCost`, `vpsSliceOvzCost`). - `cpanelCost`, `daCost` (float) — control-panel addon costs. - `ramSlice`, `hdSlice`, `bwSlice` (int) — RAM (MB), HD (GB), BW (GB) per slice. - `maxSlices` (int) — `VPS_SLICE_MAX` cap for non-admin callers. - `currency`, `currencySymbol` (string) — derived from the account profile.  **Auth:** Session or API key.  **Errors:** - `401 Unauthorized` — missing session/API key.  **Related calls:** - **Next:** `putVps` (validate + quote a chosen config — no charge), `addVps` (place the order). - **After ordering:** pay via `initiatePayment` with the returned `real_iids`, then poll `getVpsInfo` until `vps_status == "active"`.  **Example happy-path response (abridged):** ```json {   "platformNames": {"kvm": "KVM", "kvmstorage": "KVM Storage", "hyperv": "HyperV"},   "platformPackages": {"kvm": 32, "kvmstorage": 57, "hyperv": 54},   "locationNames": {"1": "New Jersey", "2": "Los Angeles", "3": "Dallas, TX"},   "locationStock": {"1": {"kvm": true, "kvmstorage": true, "hyperv": false}},   "osNames": {"centos-7-x86_64": "CentOS 7", "ubuntu-22.04-x86_64": "Ubuntu 22.04"},   "templates": {"kvm": {"centos-7-x86_64": {"centos-7-x86_64.qcow2": "7"}}},   "vpsSliceKvmLCost": 6.00,   "cpanelCost": 18.00,   "ramSlice": 2048, "hdSlice": 25, "bwSlice": 2000, "maxSlices": 8,   "currency": "USD", "currencySymbol": "$" } ``` 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetNewVps()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetNewVps()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetNewVps()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/order"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetNewVps_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetNewVps_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetNewVpsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.VpsOrder) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.VpsOrder
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
		Private Sub GetNewVps_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.VpsOrder
		  CallbackHandler.GetNewVpsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetNewVps_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.VpsOrder
		  Call GetNewVpsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetNewVpsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsBackup(, id As Integer)
		  // Operation getVpsBackup
		  // Trigger a manual on-demand snapshot/backup of the VPS
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsBackupCallback(QueueResponse) on completion. 
		  //
		  // - GET /vps/{id}/backup
		  // - Creates an on-demand backup of the VPS — typically called before a risky change (OS reinstall, slice upgrade, restore from older backup). Enqueues a `backup` action on the hypervisor (`history_log` `vpsqueue` entry) and returns immediately; the actual snapshot runs asynchronously and may take a few minutes. Despite being GET, this is a side-effecting action and the MCP parser flags it accordingly. The new backup, once complete, appears in `getVpsBackups` keyed by `name`. Sibling ops: `getVpsBackups` (list), `downloadVpsBackup` (download via pre-signed URL), `deleteVpsBackup`, `postVpsRestore`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `{ text: "Action has been sent to the server. Please allow up to 2 minutes for action to be completed.", queueId: <integer> }` — `queueId` is the row id in `queue_log`/`history_log` and can be used to track action status.  **Backup limits (per platform):** - KVM / KVM Storage: backups **enabled**. - HyperV, OpenVZ, SSD-OpenVZ, Virtuozzo, SSD-Virtuozzo: **disabled** server-side (returns 400 "Backups are disabled for this type"). - Max 4 backups per VPS for non-admin callers. If at the cap, returns "Currently 4 backups per VPS max" — delete an old one first via `deleteVpsBackup`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - `409 VPS is not active` — `vps_status != "active"`. - `400 Backups are disabled for this type` — incompatible platform. - `400 Currently 4 backups per VPS max` — at cap.  **Related calls:** - **List existing:** `getVpsBackups`. - **Download:** `downloadVpsBackup` (PATCH; returns 24-hr pre-signed URL for MinIO backups; Swift/ZFS disabled). - **Delete:** `deleteVpsBackup` (DELETE; Swift/MinIO only). - **Restore from a backup:** `postVpsRestore`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsBackup()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsBackup()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsBackup()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/backup"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsBackup_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsBackup_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsBackupPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub GetVpsBackup_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.GetVpsBackupCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsBackup_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call GetVpsBackupPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsBackupCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsBackups(, id As Integer, all As AllEnum_GetVpsBackups)
		  // Operation getVpsBackups
		  // List existing backups for the VPS across Swift, MinIO, and ZFS
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter all: (query) Set to &#x60;1&#x60; to list all backups across all services, not just the ones for the given VPS. (optional, default to Sample)
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsBackupsCallback(VpsBackupRows) on completion. 
		  //
		  // - GET /vps/{id}/backups
		  // - Enumerates the backup files available for the VPS across all backend storage systems (OpenStack Swift, MinIO/S3, and ZFS snapshots). Each entry's `name` is the canonical identifier the caller must pass to sibling endpoints (`downloadVpsBackup`, `deleteVpsBackup`, `postVpsRestore`) — there is no separate integer id. The list is filtered to the VPS's owner by default; admins can list all backups on the account by passing `all=1`. Sibling ops: `getVpsBackup` (create new), `downloadVpsBackup`, `deleteVpsBackup`, `postVpsRestore`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Query params:** - `all` (string, optional, enum `0`/`1`, default `0`) — set to `1` to list every backup across all services on the account, not just the ones for `{id}`.  **Returns:** `VpsBackupRows` — array of objects: - `name` (string) — canonical identifier, e.g. `vps-12345-2026-05-12.tar.gz`. - `type` (string enum) — `swift` / `minio` / `zfs`. Determines which operations are available (see Sibling notes). - `service` (integer) — VPS id the backup belongs to. - `path` (string) — storage path/URL. - `size` (integer) — bytes. - `repoIdx` (integer) — repository index (0 or 1 for Swift; selects which credentials/bucket). - `extra` (array, optional) — multi-part backup pieces.  **Auth:** Session/API key. Ownership enforced via `vps_custid` on the parent VPS.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller.  **Capability matrix by backup type:** - `swift`: list ✓, download ✗ (disabled — contact support), delete ✓. - `minio`: list ✓, download ✓ (24-hr pre-signed URL via `downloadVpsBackup`), delete ✓. - `zfs`: list ✓, download ✗ (disabled), delete ✗ (open a ticket).  **Related calls:** - **Create new:** `getVpsBackup`. - **Download:** `downloadVpsBackup` (PATCH). - **Delete:** `deleteVpsBackup` (DELETE). - **Restore:** `postVpsRestore` — pass `backup` as `<type>:<service>:<name>`. 
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
		  
		  Dim localVarQueryParams As String = "?"
		  localVarQueryParams = localVarQueryParams + EncodeURLComponent("all") + "=" + EncodeURLComponent(AllEnum_GetVpsBackupsToString(all))
		  

		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsBackups()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsBackups()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsBackups()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/backups"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsBackups_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsBackups_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath + localVarQueryParams)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsBackupsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As VpsBackupRows) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New VpsBackupRows
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
		Private Sub GetVpsBackups_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As VpsBackupRows
		  CallbackHandler.GetVpsBackupsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsBackups_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As VpsBackupRows
		  Call GetVpsBackupsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsBackupsCallback(error, data)
		End Sub
	#tag EndMethod



	#tag Method, Flags = &h21
		Private Function AllEnum_GetVpsBackupsToString(value As AllEnum_GetVpsBackups) As String
		  Select Case value
		    
		    Case AllEnum_GetVpsBackups.Escaped0
		      Return "0"
		    Case AllEnum_GetVpsBackups.Escaped1
		      Return "1"
		    Case AllEnum_GetVpsBackups.UnknownDefaultOpenApi
		      Return "unknown_default_open_api"
		    Case 
		      Return ""
		  End Select
		  Return ""
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub GetVpsBuyHdSpace(, id As Integer)
		  // Operation getVpsBuyHdSpace
		  // Get current additional disk size and per-GB monthly cost for the VPS
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsBuyHdSpaceCallback() on completion. 
		  //
		  // - GET /vps/{id}/buy_hd_space
		  // - Step 1 of the disk-space addon flow. Returns the current "Additional N GB Space" already purchased for the VPS (0 if none) and the per-GB monthly cost in USD — both adjusted for the customer's reseller pricing tier via `get_reseller_price`. Read-only. Use this to populate a disk-upgrade form before calling `putVpsBuyHdSpace` (preview) and `postVpsBuyHdSpace` (commit). For whole-plan upgrades (CPU+RAM+disk together) use the slices flow instead (`getVpsSlices` / `postVpsSlices`). Sibling ops: `putVpsBuyHdSpace`, `postVpsBuyHdSpace`, `postVpsSlices`, `getVpsInfo`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** - `gbCost` (float) — per-GB monthly cost in USD (after reseller discount). - `size` (integer) — current additional GB already purchased (0 if none).  **Auth:** Session/API key. Ownership enforced via parent VPS.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - **Pre-condition:** an existing `Additional N GB Space for VPS {id}` repeat-invoice is required for the lookup to find a baseline; if it isn't parseable, the endpoint returns an error asking the customer to contact support. New installs always start at `size: 0`.  **Related calls:** - **Next (preview):** `putVpsBuyHdSpace` — returns prorated `diffCost` for a target size. - **Next (commit):** `postVpsBuyHdSpace` — creates/updates the addon repeat invoice. - **Alternative path (whole plan):** `getVpsSlices` → `postVpsSlices`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsBuyHdSpace()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsBuyHdSpace()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsBuyHdSpace()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/buy_hd_space"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.GetVpsBuyHdSpace_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsBuyHdSpace_error
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub GetVpsBuyHdSpace_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.GetVpsBuyHdSpaceCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsBuyHdSpace_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.GetVpsBuyHdSpaceCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsBuyIp(, id As Integer)
		  // Operation getVpsBuyIp
		  // Read current additional IPs, cap, and per-IP monthly cost for the VPS
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsBuyIpCallback() on completion. 
		  //
		  // - GET /vps/{id}/buy_ip
		  // - Step 1 of the additional-IP addon flow. Returns the list of extra IPs already on the VPS (each with a `cancel_link` for removing that specific addon), how many more are allowed (`maxIps` = `VPS_MAX_IPS` constant), and the per-IP monthly cost converted to the VPS's billing currency. Read-only. Use to render the "buy another IP" form and to enforce the cap before calling `postVpsBuyIp`. Sibling ops: `postVpsBuyIp` (purchase one more), `postVpsReverseDns` (set PTR on the new IP), `getVpsReverseDns`, `getVpsInfo`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** - `ipsDetails` (array) — one entry per existing extra IP. Each entry includes:   - `ip` (string) — the IPv4 address (parsed from the repeat-invoice description).   - `cancel_link` (string) — relative URL `cancel_addon?module=vps&r=<repeat_invoice_id>` to cancel that specific IP addon.   - The underlying `repeat_invoices` / `invoices` columns (description, amount, dates, etc.). - `ipCount` (integer) — current count of extra IPs already purchased. - `maxIps` (integer) — hard cap (`VPS_MAX_IPS`). - `ipCost` (float) — per-IP monthly cost, converted from `VPS_IP_COST` to the VPS's billing currency. - `currency` (string) — VPS billing currency code (ISO 4217, e.g. `USD`). - `currencySymbol` (string).  **Auth:** Session/API key. Ownership enforced via parent VPS.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller.  **Related calls:** - **Next (buy one more):** `postVpsBuyIp` — auto-allocates the next free IP on the same hypervisor. - **After activation:** `postVpsReverseDns` (set PTR for the new IP), `getVpsInfo` (verify allocation). - **Cancel an existing extra IP:** follow the `cancel_link` URL (renders the cancel-addon page). 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsBuyIp()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsBuyIp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsBuyIp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/buy_ip"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.GetVpsBuyIp_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsBuyIp_error
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub GetVpsBuyIp_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.GetVpsBuyIpCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsBuyIp_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.GetVpsBuyIpCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsChangeHostname(, id As Integer)
		  // Operation getVpsChangeHostname
		  // Read the VPS's current hostname before changing it
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsChangeHostnameCallback() on completion. 
		  //
		  // - GET /vps/{id}/change_hostname
		  // - Step 1 of the hostname-change flow. Returns the hostname currently stored on the `vps` row so the customer can confirm the existing value before submitting a new one. Read-only. **Platform restriction:** hostname changes through `postVpsChangeHostname` are only supported on OpenVZ/SSD-OpenVZ/Virtuozzo/SSD-Virtuozzo; KVM and HyperV require a support ticket — so for those platforms this endpoint is informational only. Sibling ops: `postVpsChangeHostname` (apply new value), `postVpsReverseDns` (PTR for primary IP — auto-updated by `postVpsChangeHostname`).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** Current hostname (object form: `{ hostname: "<fqdn>" }`).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - `409 VPS is not active` — `vps_status != "active"`.  **Related calls:** - **Next:** `postVpsChangeHostname` (OpenVZ/Virtuozzo only; auto-updates PTR for the primary IP). - **PTR for extra IPs:** `postVpsReverseDns`. - **Verify after change:** `getVpsInfo`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsChangeHostname()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsChangeHostname()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsChangeHostname()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/change_hostname"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.GetVpsChangeHostname_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsChangeHostname_error
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub GetVpsChangeHostname_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.GetVpsChangeHostnameCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsChangeHostname_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.GetVpsChangeHostnameCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsChangeRootPassword(, id As Integer)
		  // Operation getVpsChangeRootPassword
		  // Pre-flight check before changing the VPS root password
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsChangeRootPasswordCallback() on completion. 
		  //
		  // - GET /vps/{id}/change_root_password
		  // - Step 1 of the root-password change flow. Validates ownership and active status; the response is a placeholder/policy object the dashboard uses to render the form (current implementation does not yet return a populated policy — it short-circuits after the ownership/status checks). Read-only. Use to confirm the VPS exists and is active before calling `postVpsChangeRootPassword`. For a server-generated random password instead, use `postVpsResetPassword`. Sibling ops: `postVpsChangeRootPassword`, `postVpsResetPassword`, `postVpsChangeWebuzoPassword` (Webuzo control panel).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** Object with password requirements/state. Currently a no-op pre-check; reserved for future policy fields (min length, complexity rules, last-change timestamp).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - `409 VPS is not active` — `vps_status != "active"`.  **Related calls:** - **Next (specific password):** `postVpsChangeRootPassword`. - **Random password:** `postVpsResetPassword`. - **Webuzo control panel password:** `postVpsChangeWebuzoPassword` (separate credential). 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsChangeRootPassword()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsChangeRootPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsChangeRootPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/change_root_password"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.GetVpsChangeRootPassword_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsChangeRootPassword_error
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub GetVpsChangeRootPassword_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.GetVpsChangeRootPasswordCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsChangeRootPassword_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.GetVpsChangeRootPasswordCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsChangeTimezone(, id As Integer)
		  // Operation getVpsChangeTimezone
		  // List IANA timezones supported by the VPS guest OS
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsChangeTimezoneCallback(String) on completion. 
		  //
		  // - GET /vps/{id}/change_timezone
		  // - Step 1 of the timezone-change flow. Returns the list of IANA timezone identifiers the VPS accepts (e.g. `America/New_York`, `Europe/London`, `Asia/Tokyo`) — sourced from `/usr/share/zoneinfo/zone.tab` on the MyAdmin host. Use to populate a timezone picker before calling `postVpsChangeTimezone`. Read-only. Sibling op: `postVpsChangeTimezone`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** Array of strings — IANA timezone identifiers, sorted alphabetically.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Next:** `postVpsChangeTimezone` (must pass a value present in this array). - **Account-level timezone:** `updateAccountInfo` (sets the default for new VPS). 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsChangeTimezone()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsChangeTimezone()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsChangeTimezone()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/change_timezone"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsChangeTimezone_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsChangeTimezone_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsChangeTimezonePrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, outData() As String) As Boolean
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
		Private Sub GetVpsChangeTimezone_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data() As String
		  CallbackHandler.GetVpsChangeTimezoneCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsChangeTimezone_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data() As String
		  Call GetVpsChangeTimezonePrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsChangeTimezoneCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsInfo(, id As Integer)
		  // Operation getVpsInfo
		  // Get full details for one VPS — IPs, hostname, OS, slices, status, addons
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsInfoCallback(Vps) on completion. 
		  //
		  // - GET /vps/{id}
		  // - Returns everything the customer dashboard shows for a single VPS — hostname, primary IP plus any extra IPs, OS, allocated slices (CPU/RAM/disk), current `vps_status`, plan/service-type, datacenter location, billing currency, and `serviceAddons` (extra IPs and additional GB disk). Read-only. Backed by `ViewVPS::getDetails()`; ownership is enforced via `get_service($id, 'vps')` — cross-customer requests return 404. Use to render a VPS detail page, to verify ownership before mutating, or to poll `vps_status` after `addVps` (status flips `pending` → `active` once provisioning completes). Sibling ops: `getVpsList`, `doVpsRestart`/`doVpsStart`/`doVpsStop` (lifecycle), `getVpsTrafficUsage` (bandwidth), `getVpsBackups`, `getVpsInvoices`, `updateVpsInfo`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Returned fields** (schema `Vps` plus extras): - Core: `vps_id`, `vps_hostname`, `vps_ip`, `vps_status`, `vps_slices`, `vps_os`, `vps_type` (service-type id), `vps_server` (backing hypervisor id), `vps_custid`, `vps_comment`, `vps_coupon`. - `services_name` (string) — plan name (e.g. `KVM`, `HyperV`). - `client_links` (array) — UI action links (`{name, link, icon}`) for restart, snapshot, console, etc. Internal `?link=queue&action=...` URLs are pre-resolved. - `serviceAddons` (object) — `{extra_ips: [...], additional_gb: <int>}` populated from `repeat_invoices` rows that match `Additional IP*` / `Additional N GB Space*` patterns. - **Stripped fields:** `admin_links`, `settings`, `csrf` are removed before response.  **Auth:** Session or API key. Customer must own the VPS (enforced via `vps_custid` match).  **Errors:** - `401 Unauthorized` — missing session/API key. - `404 Invalid VPS Passed` — `id` does not exist or is owned by a different account.  **Related calls:** - **Lifecycle:** `doVpsStart`, `doVpsStop`, `doVpsRestart`. - **Maintenance:** `postVpsChangeHostname`, `postVpsChangeRootPassword`, `postVpsReverseDns`. - **Upgrade:** `getVpsSlices`/`postVpsSlices`, `getVpsBuyHdSpace`/`putVpsBuyHdSpace`/`postVpsBuyHdSpace`, `getVpsBuyIp`/`postVpsBuyIp`. - **Backups:** `getVpsBackup` (create), `getVpsBackups` (list), `downloadVpsBackup`, `postVpsRestore`. - **Billing:** `getVpsInvoices`, `VPSCancel`. - **Metrics:** `getVpsTrafficUsage`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsInfo()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsInfo()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsInfo()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsInfo_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsInfo_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsInfoPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.Vps) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.Vps
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
		Private Sub GetVpsInfo_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.Vps
		  CallbackHandler.GetVpsInfoCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsInfo_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.Vps
		  Call GetVpsInfoPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsInfoCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsInsertCd(, id As Integer)
		  // Operation getVpsInsertCd
		  // List ISO templates that can be mounted in the VPS virtual CD drive
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsInsertCdCallback() on completion. 
		  //
		  // - GET /vps/{id}/insert_cd
		  // - Step 1 of the CD-mount flow. Returns the catalog of ISO images the customer can mount in the VPS virtual CD drive — typically rescue ISOs, OS installers, or recovery media. Read-only. Use to populate a CD/ISO picker before calling `postVpsInsertCd` with a chosen URL. Sibling ops: `postVpsInsertCd` (mount), `doVpsEjectCd` (unmount), `doVpsDisableCd` (remove drive), `doVpsRestart` (boot from mounted CD).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** Object with available ISO templates (current implementation returns the platform's CD options).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Next:** `postVpsInsertCd` (provide `url` for the ISO to mount). - **Boot from CD:** `doVpsRestart` after mounting. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsInsertCd()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsInsertCd()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsInsertCd()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/insert_cd"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.GetVpsInsertCd_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsInsertCd_error
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub GetVpsInsertCd_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.GetVpsInsertCdCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsInsertCd_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.GetVpsInsertCdCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsInvoices(, id As Integer)
		  // Operation getVpsInvoices
		  // List all billing invoices associated with this specific VPS
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsInvoicesCallback(ChargeInvoiceRows) on completion. 
		  //
		  // - GET /vps/{id}/invoices
		  // - Returns the billing history for one VPS — initial purchase invoice, monthly/period renewal invoices, addon invoices (extra IPs, additional disk space), and any prorated upgrade invoices for slice changes. Read-only. Backed by `BillingInvoicesList::go()`. Use to render a per-VPS billing-history view, to find an unpaid invoice id to pass to `initiatePayment`, or to confirm a recent charge. Sibling ops: `getVpsInfo`, `getBillingInvoice` (single invoice detail), `initiatePayment`, `addVps` (creates the first invoice).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `ChargeInvoiceRows` — array of invoice rows with `id`, `amount`, `paid`, `description`, `date`, `due_date`, `currency`, `module=vps`, `service={id}`, and any addon-specific fields. Order is most-recent-first.  **Auth:** Session/API key. Ownership enforced via parent VPS.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service Passed` — `id` not owned by caller.  **Related calls:** - **Single invoice detail:** `getBillingInvoice`. - **Pay an unpaid invoice:** `initiatePayment` (`GET /billing/pay/{method}/{invoices}`). - **All invoices across account:** `getBillingInvoices`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsInvoices()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsInvoices()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsInvoices()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/invoices"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsInvoices_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsInvoices_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsInvoicesPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.ChargeInvoiceRows) As Boolean
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
		Private Sub GetVpsInvoices_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.ChargeInvoiceRows
		  CallbackHandler.GetVpsInvoicesCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsInvoices_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.ChargeInvoiceRows
		  Call GetVpsInvoicesPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsInvoicesCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsList()
		  // Operation getVpsList
		  // List all VPS services on the customer's account
		  // - 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsListCallback(VpsRow) on completion. 
		  //
		  // - GET /vps
		  // - Enumerates every VPS owned by the authenticated customer — status, hostname, primary IP, plan name, and monthly cost. The canonical entry point for finding a VPS `id` to pass into other VPS operations (`getVpsInfo`, lifecycle, billing, backups, etc.). No path params, no query params, no body. Server-side filtered by session account; rows come from the `vps` table joined to `repeat_invoices` (for cost) and `services` (for plan name). Returns an array of `VpsRow` (empty array if the account has no VPS). Sibling ops: `getVpsInfo` (full detail), `getNewVps`/`putVps`/`addVps` (order a new one).  **Returned fields (per row):** - `vps_id` (integer) — canonical VPS id, used in every `/vps/{id}/_*` path. - `vps_name` (string) — display name shown in the dashboard. - `vps_hostname` (string) — FQDN currently assigned to the VPS. - `vps_ip` (string) — primary IPv4 address. - `vps_status` (string enum) — `active`, `pending` (awaiting payment/provisioning), `suspended` (non-payment), or `cancelled`. - `services_name` (string) — service-type name (e.g. `KVM`, `KVM Storage`, `HyperV`). - `repeat_invoices_cost` (decimal) — current monthly cost in the VPS's billing currency. - `vps_comment` (string|null) — customer-provided note.  **Auth:** Session (`sessionid` header) or API key (`X-API-KEY` header). API key preferred for integrations.  **Errors:** - `401 Unauthorized` — missing/invalid session or API key.  **Related calls:** - **Next (per-VPS):** `getVpsInfo` (full detail incl. extra IPs, slices, addons), `getVpsInvoices` (billing per VPS), `doVpsRestart`/`doVpsStart`/`doVpsStop` (lifecycle). - **Order a new VPS:** `getNewVps` (catalog) → `putVps` (validate + quote) → `addVps` (place + invoice). - **Cancel:** `VPSCancel` (end of cycle, customer-initiated). 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsList()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsList()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsList()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsList_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsList_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsListPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, outData() As OpenAPIClient.Models.VpsRow) As Boolean
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
		Private Sub GetVpsList_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data() As OpenAPIClient.Models.VpsRow
		  CallbackHandler.GetVpsListCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsList_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data() As OpenAPIClient.Models.VpsRow
		  Call GetVpsListPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsListCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsReinstallOs(, id As Integer)
		  // Operation getVpsReinstallOs
		  // List OS templates compatible with this VPS's hypervisor for reinstall
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsReinstallOsCallback(VpsTemplatesList) on completion. 
		  //
		  // - GET /vps/{id}/reinstall_os
		  // - Step 1 of the OS-reinstall flow. Returns the list of OS templates that can be installed on this specific VPS — filtered server-side by the VPS's backing hypervisor type (KVM, HyperV, OpenVZ, Virtuozzo) and by `template_available=1` (non-admin callers only see published templates). Use to populate the reinstall picker; the `template_file` from a chosen row is what `postVpsReinstallOs` accepts. **Reinstall destroys all data** — recommend a backup via `getVpsBackup` first. Sibling ops: `postVpsReinstallOs` (commit reinstall), `getVpsBackup` (snapshot first), `postVpsRestore` (restore from backup instead).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `VpsTemplatesList`: - `templates` (array) — one entry per available template:   - `template_id` (integer)   - `template_name` (string) — display name (e.g. `CentOS 7`).   - `template_version` (string) — version (e.g. `7`).   - `template_file` (string) — **canonical identifier** to pass to `postVpsReinstallOs` (e.g. `centos-7-x86_64.qcow2`).   - `template_os` (string) — OS family tag.   - `template_type` (integer) — internal hypervisor type id.   - `template_available` (integer) — `1` for non-admin visible templates.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Snapshot before reinstall:** `getVpsBackup`. - **Commit reinstall:** `postVpsReinstallOs` (pass `template_file` + MyAdmin login password). - **Alternative — restore old backup:** `postVpsRestore`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsReinstallOs()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsReinstallOs()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsReinstallOs()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/reinstall_os"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsReinstallOs_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsReinstallOs_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsReinstallOsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.VpsTemplatesList) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.VpsTemplatesList
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
		Private Sub GetVpsReinstallOs_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.VpsTemplatesList
		  CallbackHandler.GetVpsReinstallOsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsReinstallOs_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.VpsTemplatesList
		  Call GetVpsReinstallOsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsReinstallOsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsResetPassword(, id As Integer)
		  // Operation getVpsResetPassword
		  // Pre-flight check before resetting the VPS root password to a random value
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsResetPasswordCallback() on completion. 
		  //
		  // - GET /vps/{id}/reset_password
		  // - Step 1 of the random-root-password reset flow. Validates ownership and active status; the response describes the reset behavior (currently a passthrough — full implementation reserved for future policy fields). Read-only. Use to confirm the VPS exists and is active before triggering the reset via `postVpsResetPassword`. For a customer-chosen password use `postVpsChangeRootPassword` instead. Sibling ops: `postVpsResetPassword`, `postVpsChangeRootPassword`, `postVpsChangeWebuzoPassword`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** Object with reset options (reserved for policy info).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Next (random):** `postVpsResetPassword`. - **Specific password instead:** `postVpsChangeRootPassword`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsResetPassword()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsResetPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsResetPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/reset_password"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.GetVpsResetPassword_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsResetPassword_error
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub GetVpsResetPassword_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.GetVpsResetPasswordCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsResetPassword_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.GetVpsResetPasswordCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsReverseDns(, id As Integer)
		  // Operation getVpsReverseDns
		  // Read the current PTR (reverse-DNS) records for every IP on the VPS
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsReverseDnsCallback(ReverseDnsEntries) on completion. 
		  //
		  // - GET /vps/{id}/reverse_dns
		  // - Returns the PTR/reverse-DNS hostname currently resolving for every IP attached to the VPS — primary `vps_ip` plus any extras purchased via `postVpsBuyIp`. PTRs are read live via `get_hostname()` (DNS lookup), not cached. Read-only. Sibling ops: `postVpsReverseDns` (update entries), `getVpsBuyIp` (add more IPs first), `postVpsChangeHostname` (auto-updates PTR for the primary IP).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `ReverseDnsEntries` — `{ ips: { "<ip>": "<ptr-hostname>", ... } }`. Empty string for IPs with no PTR set.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Update PTRs:** `postVpsReverseDns`. - **Add IPs first:** `getVpsBuyIp` → `postVpsBuyIp`. - **Hostname change (auto-PTR for primary):** `postVpsChangeHostname`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsReverseDns()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsReverseDns()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsReverseDns()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/reverse_dns"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsReverseDns_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsReverseDns_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsReverseDnsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.ReverseDnsEntries) As Boolean
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
		Private Sub GetVpsReverseDns_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.ReverseDnsEntries
		  CallbackHandler.GetVpsReverseDnsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsReverseDns_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.ReverseDnsEntries
		  Call GetVpsReverseDnsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsReverseDnsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsSetupVnc(, id As Integer)
		  // Operation getVpsSetupVnc
		  // Read current VNC console connection info for the VPS
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsSetupVncCallback() on completion. 
		  //
		  // - GET /vps/{id}/setup_vnc
		  // - Returns the VNC IP/port the customer can connect to for an out-of-band console (KVM-style remote console — useful when SSH/RDP is unavailable, during boot, or for rescue work). Read-only. **Note:** the current implementation is a stub for some platforms — if you get an empty response, call `postVpsSetupVnc` to (re)provision the VNC endpoint, then call this again. Sibling ops: `postVpsSetupVnc`, `getVpsViewDesktop` (Windows GUI access via RDP/HTML5).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** Object with VNC connection info (IP, port, credentials when provisioned).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Provision/refresh VNC:** `postVpsSetupVnc`. - **Windows remote desktop:** `getVpsViewDesktop`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsSetupVnc()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsSetupVnc()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsSetupVnc()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/setup_vnc"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.GetVpsSetupVnc_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsSetupVnc_error
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub GetVpsSetupVnc_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.GetVpsSetupVncCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsSetupVnc_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.GetVpsSetupVncCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsSlices(, id As Integer)
		  // Operation getVpsSlices
		  // Read current slice count, min/max range, and prorated per-slice upgrade cost
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsSlicesCallback() on completion. 
		  //
		  // - GET /vps/{id}/slices
		  // - Step 1 of the slice upgrade/downgrade flow. A "slice" bundles RAM, disk, and CPU on the VPS — the smallest unit of vertical scaling. Returns the current slice count (`vps_slices`), the range available (`min_slices = current`, `max_slices = host capacity`), the per-slice recurring cost (after coupon and frequency discount), the prorated cost for the remainder of the current cycle, and the underlying resource units (`slice_ram` in MB, `slice_hd` in GB). Read-only. Use to render an upgrade picker before calling `postVpsSlices`. Sibling ops: `postVpsSlices` (commit), `postVpsBuyHdSpace` (disk-only addon).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** - `min_slices` (integer) — current allocation; floor for downgrades is also this value (downgrade decreases from here). - `max_slices` (integer) — host-capacity-limited upper bound (`get_vps_max_slices()`). - `slice_cost` (float) — per-slice recurring cost in customer currency. - `prorated_slice_cost` (float) — prorated cost for the remainder of the current billing cycle. - `frequency` (integer) — billing cycle in months (1/6/12/24/36). - `slice_ram` (integer) — RAM (GB) per slice. - `slice_hd` (integer) — disk (GB) per slice. For KVM Storage (service-type 57) this comes from `services_field2.slice_hd`. - `vps_slices` (integer) — current count. - `vps_cost` (float) — current monthly cost.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Next:** `postVpsSlices` (commit; creates prorated invoice for upgrades, opens ticket for active services). - **Disk-only:** `getVpsBuyHdSpace`/`putVpsBuyHdSpace`/`postVpsBuyHdSpace`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsSlices()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsSlices()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsSlices()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/slices"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.GetVpsSlices_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsSlices_error
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub GetVpsSlices_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.GetVpsSlicesCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsSlices_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.GetVpsSlicesCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsTrafficUsage(, id As Integer)
		  // Operation getVpsTrafficUsage
		  // Read bandwidth traffic usage data for the VPS
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsTrafficUsageCallback(VpsTrafficResponse) on completion. 
		  //
		  // - GET /vps/{id}/traffic_usage
		  // - Returns bandwidth-consumption data for the VPS — inbound/outbound bytes per day and aggregated totals against the plan's `bwSlice` × `vps_slices` allowance. Pulled via `vps_bandwidth_data($vps_id)` from the bandwidth-tracking subsystem. Read-only. For custom date-range or granularity filters use `postVpsTrafficUsage` (currently mirrors GET behavior but reserved for filter parameters). Sibling ops: `postVpsTrafficUsage`, `getVpsInfo` (BW allowance fields are shown there).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `VpsTrafficResponse` — array/object with bandwidth usage points (timestamp, inbound bytes, outbound bytes, totals).  **Auth:** Session/API key. Ownership enforced via parent VPS.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`.  **Related calls:** - **Filtered query:** `postVpsTrafficUsage` (reserved for date-range filters). - **Plan allowance:** `getVpsInfo` returns `bw_total` / `slices` you can compute against. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsTrafficUsage()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsTrafficUsage()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsTrafficUsage()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/traffic_usage"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsTrafficUsage_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsTrafficUsage_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsTrafficUsagePrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.VpsTrafficResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.VpsTrafficResponse
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
		Private Sub GetVpsTrafficUsage_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.VpsTrafficResponse
		  CallbackHandler.GetVpsTrafficUsageCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsTrafficUsage_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.VpsTrafficResponse
		  Call GetVpsTrafficUsagePrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsTrafficUsageCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsViewDesktop(, id As Integer)
		  // Operation getVpsViewDesktop
		  // Read remote-desktop (RDP/HTML5) connection info for a Windows/GUI VPS
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsViewDesktopCallback() on completion. 
		  //
		  // - GET /vps/{id}/view_desktop
		  // - Returns remote-desktop connection details for a Windows VPS or any VPS with a GUI session — IP, port, recommended client, and the `client_links` the dashboard surfaces for launching the session. Backed by `ViewVPS::getDetails()`; response shape mirrors `getVpsInfo` minus the `admin_links` block. Sibling ops: `postVpsViewDesktop` (refresh), `getVpsSetupVnc`/`postVpsSetupVnc` (low-level VNC console).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** Same shape as `getVpsInfo` (sans `admin_links`) — includes `client_links` with RDP/HTML5 launch URLs.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Refresh session:** `postVpsViewDesktop`. - **Low-level console:** `getVpsSetupVnc` / `postVpsSetupVnc`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsViewDesktop()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsViewDesktop()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsViewDesktop()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/view_desktop"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.GetVpsViewDesktop_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsViewDesktop_error
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub GetVpsViewDesktop_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.GetVpsViewDesktopCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsViewDesktop_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.GetVpsViewDesktopCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub GetVpsWelcomeEmail(, id As String)
		  // Operation getVpsWelcomeEmail
		  // Resend the welcome email containing VPS IP, hostname, and root credentials
		  // - 
		  // - parameter id: (path) VPS ID 
		  //
		  // Invokes VPSApiCallbackHandler.GetVpsWelcomeEmailCallback(SuccessTextResponse) on completion. 
		  //
		  // - GET /vps/{id}/welcome_email
		  // - Resends the VPS welcome email — the original new-service email containing IP, hostname, root/Administrator credentials, and connection instructions. Calls `vps_welcome_email($id)` to regenerate and dispatch via the standard mail pipeline. Use when the customer didn't receive (or lost) the original right after provisioning. The dashboard's "show credentials" view is the alternative for in-app retrieval. Sibling ops: `getVpsInfo` (shows connection details in the response), `postVpsChangeRootPassword` / `postVpsResetPassword` (rotate before resending if security is a concern).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `SuccessTextResponse` — `Welcome Email has been resent.`  **Side effects:** - Sends an email to the account's billing email address with the credentials currently stored in `history_log` for this VPS.  **Auth:** Session/API key. Ownership enforced via `vps_custid`.  **Errors:** - `401` — unauthenticated. - `404 Invalid Service Passed` — `id` not owned by caller. - `409 Service is not active` — `vps_status != "active"`.  **Related calls:** - **In-app credential view:** `getVpsInfo`. - **Before resending, rotate password:** `postVpsResetPassword` or `postVpsChangeRootPassword`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.GetVpsWelcomeEmail()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.GetVpsWelcomeEmail()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.GetVpsWelcomeEmail()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/welcome_email"
		  
		  Dim localVarPathStringid As String = id
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.GetVpsWelcomeEmail_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.GetVpsWelcomeEmail_error
		  
		  
		  localVarHTTPSocket.SendRequest("GET", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function GetVpsWelcomeEmailPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SuccessTextResponse) As Boolean
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
		Private Sub GetVpsWelcomeEmail_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  CallbackHandler.GetVpsWelcomeEmailCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub GetVpsWelcomeEmail_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  Call GetVpsWelcomeEmailPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.GetVpsWelcomeEmailCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsBuyHdSpace(, id As Integer)
		  // Operation postVpsBuyHdSpace
		  // Buy or resize the VPS additional-disk addon and create a prorated invoice
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsBuyHdSpaceCallback() on completion. 
		  //
		  // - POST /vps/{id}/buy_hd_space
		  // - Step 3 of the disk-space addon flow — commit. Creates or updates the `Additional N GB Space for VPS {id}` `repeat_invoices` row with the new size and recurring cost, then generates a one-off prorated `invoices` row for the immediate difference. The hypervisor disk-grow action is queued either immediately (`update_hdsize` in `vpsqueue`) when no charge is owed, or after the invoice is paid. When increasing from an existing size, any unpaid prior addon invoice is deleted and any already-paid one is credited against `diffCost`. **Real money** — call `putVpsBuyHdSpace` first to preview. Sibling ops: `getVpsBuyHdSpace`, `putVpsBuyHdSpace`, `postVpsSlices`, `initiatePayment`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `size` (integer, required) — target additional GB. Range `1..100`. Must differ from current.  **Returns:** - When immediate charge owed: `{ text: "Invoice Created, Please Pay This To Activate Extra Space", invoice: <integer> }` — pass `invoice` to `initiatePayment`. - When no charge owed (downgrade/credit): `{ text: "Repeat Invoice Updated, Server Size Update Queued" }` — disk grow already queued.  **Side effects:** - Inserts or updates `repeat_invoices` row for the addon. - Inserts `invoices` row for `diffCost` when > 0. - Deletes any unpaid prior addon invoices for the same VPS within the last month. - Credits any paid prior invoice against `diffCost`. - Queues `update_hdsize` in `vpsqueue` when no payment is owed.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - `Invalid Size Specified` — `size` out of `1..100`. - `No Change Made, Size The Same`. - **Pre-condition:** an existing addon row is required. If not found, the request short-circuits (`go()` returns without acting); use the order flow for the very first addon, or `postVpsSlices` for whole-plan upgrades.  **Related calls:** - **Preview first:** `putVpsBuyHdSpace`. - **Pay the invoice:** `initiatePayment` (`GET /billing/pay/{method}/{invoices}`). - **Whole-plan upgrades:** `postVpsSlices` (bundles disk + RAM + CPU). 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsBuyHdSpace()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsBuyHdSpace()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsBuyHdSpace()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/buy_hd_space"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.PostVpsBuyHdSpace_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsBuyHdSpace_error
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub PostVpsBuyHdSpace_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.PostVpsBuyHdSpaceCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsBuyHdSpace_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.PostVpsBuyHdSpaceCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsBuyIp(, id As Integer)
		  // Operation postVpsBuyIp
		  // Purchase one additional IP for the VPS and create the invoice
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsBuyIpCallback() on completion. 
		  //
		  // - POST /vps/{id}/buy_ip
		  // - Step 2 of the additional-IP addon flow — commit. Auto-selects the next free IP on the same hypervisor via `vps_get_next_ip`, creates a `Additional IP for VPS {id}` recurring invoice (`repeat_invoices`), and generates an immediate one-off `invoices` row at the current IP cost. **Real money.** The network-side IP allocation happens once the invoice is paid; the IP is bound to the VPS during the next provisioning sweep. Sibling ops: `getVpsBuyIp` (preview), `initiatePayment`, `getVpsInfo` (verify), `postVpsReverseDns` (set PTR after activation).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None — the next free IP is auto-selected.  **Returns:** - `text` (string) — `Ordered Additional IP successfully.` - `invoice` (integer) — new invoice id to pay via `initiatePayment`.  **Side effects:** - Reserves the next free IP on the VPS's `vps_server` (parked until payment). - Inserts `repeat_invoices` row (`Additional IP for VPS {id}`, recurring at `ipCost`, frequency from parent service). - Inserts `invoices` row for the immediate one-period charge. - Logs the addon creation in `myadmin_log`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - `VPS already has the maximum number of IPs allowed. If you require additional IPs please contact support.` — `ipCount >= maxIps` (`VPS_MAX_IPS`). - `No available free ips on this server. Please contact support to order additional ips.` — `vps_get_next_ip` returned false.  **Related calls:** - **Prerequisite:** `getVpsBuyIp` (capacity check + preview). - **Next:** `initiatePayment` with the returned `invoice` id, then `getVpsInfo` to confirm allocation. - **Post-activation:** `postVpsReverseDns` to set the PTR for the new IP. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsBuyIp()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsBuyIp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsBuyIp()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/buy_ip"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.PostVpsBuyIp_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsBuyIp_error
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub PostVpsBuyIp_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.PostVpsBuyIpCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsBuyIp_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.PostVpsBuyIpCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsChangeHostname(, id As Integer, Optional hostname As Xoson.O.OptionalString)
		  // Operation postVpsChangeHostname
		  // Rename the VPS hostname (OpenVZ/Virtuozzo only) and auto-set PTR for the primary IP
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter hostname: (form)  (optional, default to Sample)
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsChangeHostnameCallback(QueueResponse) on completion. 
		  //
		  // - POST /vps/{id}/change_hostname
		  // - Renames the VPS — validates the FQDN with `valid_hostname()`, sets the reverse-DNS PTR record for the primary IP (`reverse_dns($vps_ip, $hostname)`), and either updates the `vps_hostname` column directly (if the VPS is still `pending`) or queues a `change_hostname` action on the hypervisor (`vpsqueue`) for active services. **Platform restriction:** rejected unless the VPS runs on OpenVZ, SSD-OpenVZ, Virtuozzo, or SSD-Virtuozzo — KVM/HyperV must open a support ticket. Sibling ops: `getVpsChangeHostname`, `postVpsReverseDns`, `getVpsInfo`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `hostname` (string, required) — new FQDN (e.g. `web1.example.com`). Validated by `valid_hostname()`.  **Returns:** - For active services: `{ text, queueId }` — `queueId` references the `queue_log` row. Allow ~2 minutes. - For pending services: `{ text: "Hostname Updated" }` — applied in place.  **Side effects:** - Sets PTR record for `vps_ip` via `reverse_dns()`. - Either updates `vps_hostname` directly (pending) or queues `change_hostname` (active) plus logs `change_hostname` history entry with the `old to new` transition.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`. - `Invalid Hostname` — fails `valid_hostname()`. - `No change in hostname` — value matches current. - `Hostname changing is only enabled on OpenVZ/Virtuozzo Platforms currently. Contact support and we can change it for you.` — wrong platform.  **Related calls:** - **Prerequisite:** `getVpsChangeHostname` (read current). - **Extra IPs need separate PTR updates:** `postVpsReverseDns`. - **Verify:** `getVpsInfo` (look for updated `vps_hostname`). 
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
		  Dim localVarFormParams As New Dictionary
		  If hostname <> nil Then localVarFormParams.Value("hostname") = hostname
		  If localVarFormParams.Count > 0 Then localVarHTTPSocket.SetFormData(localVarFormParams)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsChangeHostname()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsChangeHostname()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsChangeHostname()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/change_hostname"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsChangeHostname_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsChangeHostname_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsChangeHostnamePrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub PostVpsChangeHostname_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.PostVpsChangeHostnameCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsChangeHostname_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call PostVpsChangeHostnamePrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsChangeHostnameCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsChangeRootPassword(, id As Integer, password As String)
		  // Operation postVpsChangeRootPassword
		  // Set a specific new root/Administrator password on the VPS
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter password: (form)  
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsChangeRootPasswordCallback(QueueResponse) on completion. 
		  //
		  // - POST /vps/{id}/change_root_password
		  // - Sets a specific root password (Administrator on Windows) chosen by the customer. Queues a `change_root` action on the hypervisor (`vpsqueue`) and records the new password in `history_log` as a `change_root_password` entry for operator reference. The password takes effect within ~2 minutes. **Caveat:** there is no rollback — to "undo", set another new password. For a server-generated random password instead, use `postVpsResetPassword`. Sibling ops: `getVpsChangeRootPassword`, `postVpsResetPassword`, `postVpsChangeWebuzoPassword`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `password` (string, required) — new root/Administrator password. The endpoint does not enforce a regex here (the hypervisor agent applies platform policy), but `validate_buy_vps`-style strength is strongly recommended: 8+ chars, upper, lower, digit, special.  **Returns:** `{ text, queueId }` — `queueId` tracks the action in `queue_log`.  **Side effects:** - Inserts `vpsqueue` `change_root` row. - Inserts `history_log` `change_root_password` audit entry storing the new password (operator-readable for support).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`. - `400 Missing field "password"`.  **Related calls:** - **Pre-flight:** `getVpsChangeRootPassword`. - **Random instead:** `postVpsResetPassword`. - **Control panel password:** `postVpsChangeWebuzoPassword`. - **Verify:** `getVpsInfo` (no field change — verification is operational, not via API). 
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
		  Dim localVarFormParams As New Dictionary
		  localVarFormParams.Value("password") = password
		  If localVarFormParams.Count > 0 Then localVarHTTPSocket.SetFormData(localVarFormParams)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsChangeRootPassword()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsChangeRootPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsChangeRootPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/change_root_password"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsChangeRootPassword_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsChangeRootPassword_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsChangeRootPasswordPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub PostVpsChangeRootPassword_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.PostVpsChangeRootPasswordCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsChangeRootPassword_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call PostVpsChangeRootPasswordPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsChangeRootPasswordCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsChangeTimezone(, id As Integer, timezone As String)
		  // Operation postVpsChangeTimezone
		  // Set the system timezone on the VPS guest OS
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter timezone: (form) The time zone 
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsChangeTimezoneCallback(QueueResponse) on completion. 
		  //
		  // - POST /vps/{id}/change_timezone
		  // - Step 2 of the timezone-change flow — commit. Validates `timezone` against the list from `getVpsChangeTimezone`, then queues a `change_timezone` action on the hypervisor (`vpsqueue`). Action takes effect within ~2 minutes. Sibling op: `getVpsChangeTimezone`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `timezone` (string, required) — IANA identifier; **must** be one of the values returned by `getVpsChangeTimezone` (in-array check enforced server-side).  **Returns:** `{ text, queueId }`.  **Side effects:** - Inserts `vpsqueue` `change_timezone` row with the validated value.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`. - `422 Invalid timezone` — value not in the supported list.  **Related calls:** - **Prerequisite:** `getVpsChangeTimezone` (the only valid source for `timezone` values). 
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
		  Dim localVarFormParams As New Dictionary
		  localVarFormParams.Value("timezone") = timezone
		  If localVarFormParams.Count > 0 Then localVarHTTPSocket.SetFormData(localVarFormParams)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsChangeTimezone()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsChangeTimezone()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsChangeTimezone()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/change_timezone"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsChangeTimezone_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsChangeTimezone_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsChangeTimezonePrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub PostVpsChangeTimezone_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.PostVpsChangeTimezoneCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsChangeTimezone_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call PostVpsChangeTimezonePrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsChangeTimezoneCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsChangeWebuzoPassword(, id As Integer, password As String)
		  // Operation postVpsChangeWebuzoPassword
		  // Rotate the Webuzo control panel admin password (re-auth required)
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter password: (form)  
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsChangeWebuzoPasswordCallback(QueueResponse) on completion. 
		  //
		  // - POST /vps/{id}/change_webuzo_password
		  // - Rotates the admin password on the Webuzo control panel that ships pre-installed on certain VPS templates. Re-authenticates the caller via their MyAdmin account password (`account_passwd` md5 check), then calls the Webuzo SDK (`Webuzo_API::change_password`) to apply the new password, updates the stored credential in `history_log`, and emails the customer a confirmation via the `client/client_email.tpl` template. Used for the control panel only — for the underlying OS root/Administrator password use `postVpsChangeRootPassword`/`postVpsResetPassword`. Sibling ops: `postVpsChangeRootPassword`, `postVpsResetPassword`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields (both required):** - `password` (string, required) — new Webuzo admin password. Validated by `valid_password()`. - `login_password` (string, required) — the customer's current MyAdmin account password (re-auth check; md5-compared to `accounts.account_passwd`).  **Returns:** `{ text }` — `Password updated successfully!`  **Side effects:** - Calls Webuzo API to apply new password. - Updates the `Webuzo Details` row in `history_log` with the new value. - Sends a confirmation email to the account's billing email. - Logs the rotation in `myadmin_log`.  **Auth:** Session/API key plus re-auth via `login_password`.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`. - `Missing Password` / `Missing Login Password` — body field absent. - `Login Password is incorrect!` — `login_password` doesn't match stored hash. - `New Password is not valid` — fails `valid_password()`. - `Missing Existing Webuzo Password Details.` — no Webuzo credential in `history_log` (contact support). - `Unable to update password. Please contact support team for further assistance.` — Webuzo API call failed.  **Related calls:** - **OS root password instead:** `postVpsChangeRootPassword`, `postVpsResetPassword`. - **Account password rotation:** `updateAccountPassword`. 
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
		  Dim localVarFormParams As New Dictionary
		  localVarFormParams.Value("password") = password
		  If localVarFormParams.Count > 0 Then localVarHTTPSocket.SetFormData(localVarFormParams)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsChangeWebuzoPassword()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsChangeWebuzoPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsChangeWebuzoPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/change_webuzo_password"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsChangeWebuzoPassword_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsChangeWebuzoPassword_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsChangeWebuzoPasswordPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub PostVpsChangeWebuzoPassword_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.PostVpsChangeWebuzoPasswordCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsChangeWebuzoPassword_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call PostVpsChangeWebuzoPasswordPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsChangeWebuzoPasswordCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsInsertCd(, id As Integer, Optional url As Xoson.O.OptionalString)
		  // Operation postVpsInsertCd
		  // Mount an ISO image in the VPS virtual CD drive from a URL
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter url: (form)  (optional, default to Sample)
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsInsertCdCallback(QueueResponse) on completion. 
		  //
		  // - POST /vps/{id}/insert_cd
		  // - Mounts an ISO image in the VPS virtual CD drive from the supplied URL — used to boot into rescue media, run an OS installer, or temporarily attach removable media. Queues an `insert_cd` action on the hypervisor (`vpsqueue`) with the URL. After mounting, restart the VPS with `doVpsRestart` to boot from the CD. Sibling ops: `getVpsInsertCd` (list), `doVpsEjectCd` (unmount), `doVpsDisableCd` (remove drive), `doVpsRestart` (boot from CD).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `url` (string, required) — http(s):// URL to a `.iso` file accessible from the hypervisor.  **Returns:** `{ text, queueId }` — allow ~2 minutes.  **Side effects:** - Inserts `vpsqueue` `insert_cd` row with the URL.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **List options first:** `getVpsInsertCd`. - **Boot the ISO:** `doVpsRestart`. - **Unmount when done:** `doVpsEjectCd`. 
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
		  Dim localVarFormParams As New Dictionary
		  If url <> nil Then localVarFormParams.Value("url") = url
		  If localVarFormParams.Count > 0 Then localVarHTTPSocket.SetFormData(localVarFormParams)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsInsertCd()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsInsertCd()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsInsertCd()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/insert_cd"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsInsertCd_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsInsertCd_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsInsertCdPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub PostVpsInsertCd_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.PostVpsInsertCdCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsInsertCd_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call PostVpsInsertCdPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsInsertCdCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsReinstallOs(, id As Integer, template As String, localPassword As String, Optional password As Xoson.O.OptionalString)
		  // Operation postVpsReinstallOs
		  // Reinstall the VPS OS (DESTRUCTIVE — wipes disk; requires re-auth)
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter template: (form) OS Template Filename 
		  // - parameter localPassword: (form) Password for this account. 
		  // - parameter password: (form) Password for Root / Administrator Account. (optional, default to Sample)
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsReinstallOsCallback(QueueResponse) on completion. 
		  //
		  // - POST /vps/{id}/reinstall_os
		  // - **DESTRUCTIVE.** Wipes the VPS disk and reinstalls the chosen OS template. Re-authenticates via the customer's MyAdmin account password (`auth->authenticate` against `account_lid`+`localPassword`), updates the `vps` row (`vps_server_status='Reinstalling'`, `vps_os=<template>`), saves any new root password to `history_log`, and queues a `reinstall_os` action on the hypervisor (`vpsqueue`). **No rollback** — recover by restoring a backup via `postVpsRestore` (must have been created beforehand). Allow ~2 minutes for reinstall to start. Sibling ops: `getVpsReinstallOs` (list templates), `getVpsBackup` (snapshot before reinstalling), `postVpsRestore` (alternative — restore from backup instead).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields (required):** - `template` (string, required) — `template_file` from `getVpsReinstallOs.templates[].template_file`. Rejected if not found in `vps_templates` for the VPS's `template_type`. - `localPassword` (string, required) — the customer's current MyAdmin account password (re-auth check).  **Body fields (optional):** - `password` (string, optional) — new root password to set during reinstall. If absent, the template default is used.  **Returns:** `{ text: "Reinstall to has been sent to the server. Please allow up to 2 minutes for action to be completed." }`. If the VPS is `pending` rather than `active`, the OS selection is saved for activation and `{ text: "OS selection has been updated in our system for when the service is activated." }` is returned.  **Side effects:** - Updates `vps_server_status` and `vps_os` columns. - Inserts new password into `history_log` when provided. - Inserts `vpsqueue` `reinstall_os` row (active services only).  **Auth:** Session/API key plus re-auth via `localPassword`.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`. - `Missing Account Password` — `localPassword` body field absent/empty. - `Invalid Account Password` — `localPassword` re-auth failed. - `This Template <name> does not exist` — `template` not found for this VPS's platform.  **Related calls:** - **Prerequisite:** `getVpsReinstallOs` (find valid `template_file`). - **Recommended pre-step:** `getVpsBackup` (snapshot). - **Alternative (preserve state):** `postVpsRestore`. - **Verify after reinstall:** `getVpsInfo` (look for updated `vps_os`). 
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
		  Dim localVarFormParams As New Dictionary
		  localVarFormParams.Value("template") = template
If password <> nil Then localVarFormParams.Value("password") = password
localVarFormParams.Value("localPassword") = localPassword
		  If localVarFormParams.Count > 0 Then localVarHTTPSocket.SetFormData(localVarFormParams)
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsReinstallOs()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsReinstallOs()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsReinstallOs()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/reinstall_os"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsReinstallOs_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsReinstallOs_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsReinstallOsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub PostVpsReinstallOs_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.PostVpsReinstallOsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsReinstallOs_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call PostVpsReinstallOsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsReinstallOsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsResetPassword(, id As Integer)
		  // Operation postVpsResetPassword
		  // Reset the VPS root password to a server-generated random value
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsResetPasswordCallback(QueueResponse) on completion. 
		  //
		  // - POST /vps/{id}/reset_password
		  // - Resets the VPS root/Administrator password to a fresh random value generated on the hypervisor — typical when the customer has lost the existing password and cannot recover it. Queues a `reset_password` action on the hypervisor (`vpsqueue`). The new password is delivered via the standard hypervisor password-change channel (logged to `history_log` and surfaced through `getVpsWelcomeEmail` / dashboard credential views). **No rollback** — to undo, set a new password via `postVpsChangeRootPassword` or call `postVpsResetPassword` again. Sibling ops: `getVpsResetPassword`, `postVpsChangeRootPassword`, `postVpsChangeWebuzoPassword`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None — password is generated server-side.  **Returns:** `{ text, queueId }` — allow ~2 minutes.  **Side effects:** - Inserts `vpsqueue` `reset_password` row; hypervisor agent generates and applies the new password.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Specific password instead:** `postVpsChangeRootPassword`. - **Retrieve the new credentials:** `getVpsWelcomeEmail` (resends with current credentials). 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsResetPassword()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsResetPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsResetPassword()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/reset_password"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsResetPassword_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsResetPassword_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsResetPasswordPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub PostVpsResetPassword_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.PostVpsResetPasswordCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsResetPassword_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call PostVpsResetPasswordPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsResetPasswordCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsRestore(, id As Integer, restoreRequest As OpenAPIClient.Models.RestoreRequest)
		  // Operation postVpsRestore
		  // Restore the VPS from a backup (DESTRUCTIVE — overwrites disk)
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter restoreRequest: (body) VPS Restore request 
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsRestoreCallback(QueueResponse) on completion. 
		  //
		  // - POST /vps/{id}/restore
		  // - **DESTRUCTIVE.** Overwrites the VPS disk with a previously created backup. Re-authenticates via the customer's MyAdmin password (when set), validates the backup row from `getVpsBackups`, checks disk capacity (skipped for ZFS), then queues `snapshot_restore` (ZFS — instant) or `restore` (Swift/MinIO — copy) on the hypervisor. Allow ~10 minutes. **Recommended pre-step:** `getVpsBackup` to snapshot current state first. Sibling ops: `getVpsBackups`, `getVpsBackup`, `postVpsReinstallOs` (wipe to fresh OS instead).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `backup` (string, required) — composite key `<type>:<service>:<name>` matching one of the entries from `getVpsBackups`. `type` is `swift` / `minio` / `zfs`; `service` is the originating VPS id; `name` is the backup filename. - `password` (string, required for non-admin callers when the account has a password set) — the customer's MyAdmin account password (re-auth check via `auth->authenticate`).  **Returns:** `{ text: "Action has been sent to the server. Please allow up to 10 minutes for action to be completed.", queueId: <integer> }`.  **Side effects:** - Inserts `vpsqueue` `snapshot_restore` (ZFS) or `restore` (Swift/MinIO) row. - Calls `vps_resetup_vnc()`.  **Auth:** Session/API key plus re-auth via `password` for non-admin callers.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`. - `You do not seem to currently have a backup that you are allowed to restore yourself.` — no eligible backups found (admin-only Swift backups are excluded for non-admin callers). - `Invalid Password` — `password` re-auth failed. - `Invalid Backup Image` — `backup` doesn't match any row in `getVpsBackups`. - `Not Enough Space To Restore Backup. (Backup Takes up X bytes, The VPS Has Y)` — disk-size check failed (skipped for ZFS).  **Related calls:** - **Find the backup:** `getVpsBackups` (capture `type`, `service`, `name`). - **Snapshot before restoring:** `getVpsBackup`. - **Alternative (fresh OS, no data preserved):** `postVpsReinstallOs`. - **Verify after restore:** `getVpsInfo`. 
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
		  localVarHTTPSocket.SetRequestContent(Xoson.toJSON(restoreRequest), "application/json")
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsRestore()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsRestore()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsRestore()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/restore"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsRestore_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsRestore_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsRestorePrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub PostVpsRestore_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.PostVpsRestoreCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsRestore_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call PostVpsRestorePrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsRestoreCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsReverseDns(, id As Integer, reverseDnsEntries As OpenAPIClient.Models.ReverseDnsEntries)
		  // Operation postVpsReverseDns
		  // Bulk-update PTR (reverse-DNS) records for one or more VPS IPs
		  // - 
		  // - parameter id: (path) VPS ID number 
		  // - parameter reverseDnsEntries: (body)  
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsReverseDnsCallback(TextResponse) on completion. 
		  //
		  // - POST /vps/{id}/reverse_dns
		  // - Sets the PTR hostname for each VPS IP — bulk update via the `ips` map. Calls `reverse_dns($ip, $newHostname)` for every IP in the body whose value differs from the current PTR; IPs not currently attached to the VPS are silently ignored. Propagation depends on the reverse-zone TTL but is typically minutes, not instant. Sibling ops: `getVpsReverseDns`, `postVpsChangeHostname` (auto-sets PTR for primary IP), `getVpsBuyIp`/`postVpsBuyIp` (add more IPs first).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `ips` (object, required) — `{ "<ip>": "<new-hostname>", ... }`. Only IPs that already belong to the VPS will be updated; others are ignored. Empty-string values are skipped.  **Returns:** `{ message: "DNS Updated", success: true }`.  **Side effects:** - One `reverse_dns()` call per IP whose value changed. - PTR records are written to the in-addr.arpa zone; propagation depends on TTL.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Read current PTRs first:** `getVpsReverseDns`. - **For the primary IP:** `postVpsChangeHostname` (renames the VPS hostname and auto-PTRs in one go). - **Adding IPs:** `getVpsBuyIp` → `postVpsBuyIp` → `postVpsReverseDns`. 
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
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsReverseDns()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsReverseDns()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsReverseDns()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/reverse_dns"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsReverseDns_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsReverseDns_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsReverseDnsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.TextResponse) As Boolean
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
		Private Sub PostVpsReverseDns_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.TextResponse
		  CallbackHandler.PostVpsReverseDnsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsReverseDns_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.TextResponse
		  Call PostVpsReverseDnsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsReverseDnsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsSetupVnc(, id As Integer)
		  // Operation postVpsSetupVnc
		  // Provision or refresh the VNC console endpoint for the VPS
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsSetupVncCallback(QueueResponse) on completion. 
		  //
		  // - POST /vps/{id}/setup_vnc
		  // - (Re)establishes out-of-band VNC console access on the VPS — typically after a network change, hypervisor migration, or when troubleshooting boot issues. Validates the supplied VNC IP via `validIp()`, persists it to the `vps` row (`vps_vnc` column), and queues a `setup_vnc` action on the hypervisor (`vpsqueue`). Sibling ops: `getVpsSetupVnc` (read current), `getVpsViewDesktop` (Windows GUI/RDP path).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `vnc` (string, required) — IPv4 address for the VNC endpoint. Validated by `validIp()`.  **Returns:** `{ text, queueId }` — allow ~2 minutes for the hypervisor to bring up the listener.  **Side effects:** - Updates `vps.vps_vnc` to the new IP. - Inserts `vpsqueue` `setup_vnc` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`. - `Invalid IP "<value>" or is blank` — `vnc` failed `validIp()`.  **Related calls:** - **Read after provisioning:** `getVpsSetupVnc`. - **Windows GUI access:** `getVpsViewDesktop`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsSetupVnc()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsSetupVnc()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsSetupVnc()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/setup_vnc"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PostVpsSetupVnc_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsSetupVnc_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PostVpsSetupVncPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.QueueResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.QueueResponse
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
		Private Sub PostVpsSetupVnc_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.QueueResponse
		  CallbackHandler.PostVpsSetupVncCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsSetupVnc_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.QueueResponse
		  Call PostVpsSetupVncPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PostVpsSetupVncCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsSlices(, id As Integer)
		  // Operation postVpsSlices
		  // Upgrade or downgrade the VPS slice count (creates prorated invoice on upgrade)
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsSlicesCallback() on completion. 
		  //
		  // - POST /vps/{id}/slices
		  // - Changes the VPS's slice count — bumps or shrinks CPU/RAM/disk allocation. Deletes any unpaid prior slice-upgrade invoices for this VPS, updates the recurring `repeat_invoices` row to the new slice count's cost, creates a one-off `invoices` row prorated for the rest of the cycle, and either auto-opens a support ticket (active services — slice upgrades typically need a manual hypervisor action) or queues `set_slices` directly. Downgrades complete free and immediately (`paid=1` zero-amount invoice). **Real money** on upgrades. Sibling ops: `getVpsSlices`, `postVpsBuyHdSpace`, `initiatePayment`, `getVpsInfo`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `slices` (integer, required) — target slice count. `min_slices ≤ slices ≤ max_slices` per `getVpsSlices`. Must differ from current.  **Returns:** - **Upgrade with payment owed:** `{ text: "Thank you for your upgrade request. Kindly Pay the invoice to activate the upgrade.", invoice: <integer> }` — pay via `initiatePayment`. - **Active VPS, upgrade queued via ticket:** `{ text: "Thank you for your upgrade request. A ticket has been automatically opened for you. Please allow us 24 hours to complete your upgrade. ..." }`. - **Downgrade:** `{ text: "You have downgraded N slices from your VPS, the changes will be apply shortly." }`.  **Side effects:** - Deletes unpaid `N Slice Upgrade for VPS {id}` invoices. - Updates `repeat_invoices` recurring cost and description (`<plan_name> N Slices`). - Creates a new `invoices` row for the prorated upgrade amount (or `paid=1` zero-amount for downgrades). - Updates `vps.vps_slices` and `vps.vps_currency`. - **Active VPS:** opens a support ticket via `create_ticket()` so an operator can resize manually, OR (when `$deferUpgradeViaTicket` is false) inserts `vpsqueue` `set_slices` row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`. - `Must pass the slices field.` — body field missing. - `Invalid Slices. You requested N but that amount is not available currently.` — out of range. - `No Changes were made, Please Try Again!` — equals current. - `Please activate the service first.` — VPS not in `pending`/`active`.  **Related calls:** - **Prerequisite:** `getVpsSlices` (read range + prorated cost). - **Pay the upgrade invoice:** `initiatePayment` with the returned `invoice` id. - **Disk-only addon:** `postVpsBuyHdSpace`. - **Verify:** `getVpsInfo`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsSlices()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsSlices()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsSlices()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/slices"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.PostVpsSlices_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsSlices_error
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub PostVpsSlices_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.PostVpsSlicesCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsSlices_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.PostVpsSlicesCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsTrafficUsage(, id As Integer)
		  // Operation postVpsTrafficUsage
		  // Search/filter VPS bandwidth usage with custom criteria (reserved)
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsTrafficUsageCallback() on completion. 
		  //
		  // - POST /vps/{id}/traffic_usage
		  // - Filtered variant of the bandwidth-usage endpoint — reserved for date-range and granularity filters. The current implementation mirrors `getVpsTrafficUsage` behavior and returns the full dataset; the body shape is reserved for future filter parameters (start/end date, day/hour granularity). Sibling op: `getVpsTrafficUsage`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** Filter fields (reserved — date range, granularity).  **Returns:** Same `VpsTrafficResponse` shape as `getVpsTrafficUsage`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`.  **Related calls:** - **Unfiltered alternative:** `getVpsTrafficUsage`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsTrafficUsage()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsTrafficUsage()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsTrafficUsage()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/traffic_usage"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.PostVpsTrafficUsage_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsTrafficUsage_error
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub PostVpsTrafficUsage_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.PostVpsTrafficUsageCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsTrafficUsage_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.PostVpsTrafficUsageCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PostVpsViewDesktop(, id As Integer)
		  // Operation postVpsViewDesktop
		  // Refresh the remote-desktop session connection info after IP/hostname changes
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.PostVpsViewDesktopCallback() on completion. 
		  //
		  // - POST /vps/{id}/view_desktop
		  // - Force-refreshes the remote-desktop connection metadata — typically called after a hostname change (`postVpsChangeHostname`), IP addition (`postVpsBuyIp`), or reverse-DNS update (`postVpsReverseDns`) so the dashboard can re-fetch via its form-action pattern. Returns the same payload as `getVpsViewDesktop`. Sibling op: `getVpsViewDesktop`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None (form-action pattern).  **Returns:** Same shape as `getVpsViewDesktop`.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed`. - `409 VPS is not active`.  **Related calls:** - **Read without refresh:** `getVpsViewDesktop`. - **Common triggers:** `postVpsChangeHostname`, `postVpsBuyIp`, `postVpsReverseDns`.  Path param: `id` (integer). No body.  Returns the VPS view-desktop payload. Errors: HTTP 404 wrong owner, HTTP 409 not `active`. Sibling: `getVpsViewDesktop`, `postVpsSetupVnc`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PostVpsViewDesktop()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PostVpsViewDesktop()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PostVpsViewDesktop()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/view_desktop"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.PostVpsViewDesktop_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PostVpsViewDesktop_error
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub PostVpsViewDesktop_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.PostVpsViewDesktopCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PostVpsViewDesktop_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.PostVpsViewDesktopCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PutVps(, Optional vpsOrderPutRequest As OpenAPIClient.Models.VpsOrderPutRequest)
		  // Operation putVps
		  // Validate a VPS order configuration and quote the cost — dry run, no charge
		  // - 
		  // - parameter vpsOrderPutRequest: (body)  (optional)
		  //
		  // Invokes VPSApiCallbackHandler.PutVpsCallback(VpsOrderPutResponse) on completion. 
		  //
		  // - PUT /vps/order
		  // - Step 2 of the VPS order flow. Validates a chosen VPS configuration (platform, OS, slices, location, control panel, coupon, etc.) against stock and policy, applies any coupon discount and frequency discount, and returns a cost breakdown — without creating any invoice or service record. Use this to preview the first-month and recurring cost before the customer commits via `addVps`. The body shape is identical between `putVps` and `addVps`; the only difference is the HTTP verb — PUT validates, POST commits. Sibling ops: `getNewVps` (catalog), `addVps` (place order).  **Required body fields:** - `osDistro` (string) — OS template tag from `getNewVps.osNames` (e.g. `centos-7-x86_64`). - `osVersion` (string) — OS version from `getNewVps.templates[platform][os][template_file]`. - `vpsPlatform` (string) — one of the keys in `getNewVps.platformNames`: `kvm`, `kvmstorage`, `hyperv`, `openvz`, `ssdopenvz`, `virtuozzo`, `ssdvirtuozzo`, `lxc`, `cloudkvm`, `docker`. HTML stripped server-side. - `slices` (integer) — `1 ≤ slices ≤ getNewVps.maxSlices`. Windows (`kvm` with `osDistro` starting `windows` or `os==5`, plus `hyperv`/`cloudkvm` Windows) requires `slices ≥ 2`.  **Optional body fields:** - `location` (integer, default 1) — `1`=NJ, `2`=LA, `3`=TX. Out-of-stock platforms in a location auto-fail with an error. - `period` (integer, default 1) — billing cycle in months: `1` / `6` / `12` / `24` / `36`. Discounts: 6mo=5%, 12mo=10%, 24mo=15%, 36mo=20%. - `controlpanel` (string, default `none`) — `none` / `cpanel` (forces CentOS) / `da` (DirectAdmin). Incompatible with Windows. - `coupon` (string) — coupon code; validated against `coupons` table (custid match, module=`vps`, applies-to-service-type, usable count). Returns "Invalid Coupon" if not found/usable. - `hostname` (string) — FQDN matching `/^.*..*..*$/` (e.g. `server.example.com`). Skipped for Windows KVM (auto-set to `vps{id}` server-side). - `rootpass` (string) — required for all Linux platforms. Must match `/(?=.{8,})(?=.*[a-z])(?=.*[A-Z])(?=.*d)(?=.*W)/`. Not required for Windows. - `comment` (string) — free-form note saved on the `vps` row.  **Returned fields** (schema `VpsOrderPutResponse`): - `continue` (bool) — `true` if validation passed and the order can be POSTed. If `false`, render `errors` and do not call `addVps`. - `errors` (array of strings) — human-readable validation messages. - `coupon_code` (integer) — id of the matched coupon row, or `0` if no coupon applied. - `service_cost` (float) — first-period cost in customer currency (includes coupon + period discount). - `slice_cost` (float) — per-slice cost after coupon. - `repeat_service_cost` (float) — recurring monthly/period cost after coupon and period discount. - `original_slice_cost`, `original_cost` (float) — undiscounted reference values. - `service_type` (integer) — resolved service-type id (e.g. KVM Linux=33, KVM Win=32, KVM Storage=57, HyperV=54, OpenVZ=31, Virtuozzo=55). - `monthly_service_cost` (float) — recurring cost normalized to monthly.  **Side effects:** None — `PUT /vps/order` is a pure read.  **Errors:** - `400` — missing required field (`osDistro` / `vpsPlatform` / `slices` / `osVersion`) or invalid `location`. Body shape: `{error: "Missing field <name>"}`. - `401` — unauthenticated.  **Related calls:** - **Prerequisite:** `getNewVps` (provides every option value referenced in the body). - **Next:** `addVps` (place the order with the same body once `continue == true`).  **Example request body:** ```json {   "vpsPlatform": "kvm",   "osDistro": "centos-7-x86_64",   "osVersion": "centos-7-x86_64.qcow2",   "slices": 2,   "location": 1,   "period": 1,   "controlpanel": "none",   "hostname": "web1.example.com",   "rootpass": "Sup3rS3cret!",   "coupon": "" } ``` **Example response (validation passed):** ```json {   "continue": true,   "errors": [],   "coupon_code": 0,   "service_cost": 12.00,   "slice_cost": 6.00,   "repeat_service_cost": 12.00,   "service_type": 33,   "monthly_service_cost": 12.00,   "platform": "kvm", "os": "centos-7-x86_64",   "slices": 2, "location": 1, "period": 1,   "hostname": "web1.example.com" } ``` 
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
		  localVarHTTPSocket.SetRequestContent(Xoson.toJSON(vpsOrderPutRequest), "application/json")
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PutVps()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PutVps()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PutVps()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/order"
		  
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.PutVps_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PutVps_error
		  
		  
		  localVarHTTPSocket.SendRequest("PUT", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function PutVpsPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.VpsOrderPutResponse) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.VpsOrderPutResponse
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
		Private Sub PutVps_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.VpsOrderPutResponse
		  CallbackHandler.PutVpsCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PutVps_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.VpsOrderPutResponse
		  Call PutVpsPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.PutVpsCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub PutVpsBuyHdSpace(, id As Integer)
		  // Operation putVpsBuyHdSpace
		  // Preview cost to set additional VPS disk to a target GB size — dry run
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.PutVpsBuyHdSpaceCallback() on completion. 
		  //
		  // - PUT /vps/{id}/buy_hd_space
		  // - Step 2 of the disk-space addon flow. Dry-run that quotes a new "Additional N GB Space" addon at the target size, prorated to the VPS's existing billing cycle. **No invoice is created and no charge happens.** Use to show the customer the immediate prorated `diffCost` and the new recurring `cost` before they commit via `postVpsBuyHdSpace`. Sibling ops: `getVpsBuyHdSpace`, `postVpsBuyHdSpace`.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body fields:** - `size` (integer, required) — target additional GB. Range `1 ≤ size ≤ 100`; rejected with "Invalid Size Specified" otherwise. Rejected with "No Change Made, Size The Same" if it equals current.  **Returns:** - `gbCost` (float) — per-GB monthly cost in USD. - `curSize` (integer) — currently purchased additional GB. - `newSize` (integer) — requested target size. - `cost` (float) — new recurring cost (size × gbCost × frequency). - `diffCost` (float) — prorated immediate charge for the partial cycle plus the remainder of the period (when frequency > 1). - `frequency` (integer) — billing cycle in months (e.g. 1, 6, 12).  **Side effects:** None — pure read.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401` — unauthenticated. - `404 Invalid VPS Passed` — `id` not owned by caller. - `Invalid Size Specified` — `size` out of `1..100`. - `No Change Made, Size The Same` — `size == curSize`.  **Related calls:** - **Prerequisite:** `getVpsBuyHdSpace` (read current state). - **Next:** `postVpsBuyHdSpace` (commit; creates invoice when diffCost > 0, queues immediate update otherwise). 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.PutVpsBuyHdSpace()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.PutVpsBuyHdSpace()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.PutVpsBuyHdSpace()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}/buy_hd_space"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof Me.PutVpsBuyHdSpace_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.PutVpsBuyHdSpace_error
		  
		  localVarHTTPSocket.SendRequest("PUT", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod


	#tag Method, Flags = &h21
		Private Sub PutVpsBuyHdSpace_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  CallbackHandler.PutVpsBuyHdSpaceCallback(error)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub PutVpsBuyHdSpace_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  #Pragma Unused Headers
		  #Pragma Unused Content

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", "")
		  
		  
		  
		  CallbackHandler.PutVpsBuyHdSpaceCallback(error)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub UpdateVpsInfo(, id As String)
		  // Operation updateVpsInfo
		  // Update editable settings on a VPS service record
		  // - 
		  // - parameter id: (path) VPS ID number. 
		  //
		  // Invokes VPSApiCallbackHandler.UpdateVpsInfoCallback(SuccessTextResponse) on completion. 
		  //
		  // - POST /vps/{id}
		  // - Write-back endpoint for the VPS service record — typically the dashboard's "save changes" action. The body is processed by `ViewVPS::getDetails()`, the same handler as the GET, so the accepted fields mirror what the VPS detail view edits in place (e.g. customer comment/label, display preferences). For lifecycle or provisioning changes use the dedicated endpoints — they enforce platform-specific validation and queue hypervisor actions correctly. Sibling ops: `getVpsInfo`, `VPSCancel`, and all the dedicated mutation endpoints listed below.  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** Form-encoded or JSON with editable fields (handler decides which are persisted). Most callers should use the dedicated endpoints instead.  **Returns:** `SuccessTextResponse` — `{text: "..."}` on success.  **Auth:** Session/API key. Ownership enforced via `vps_custid` match.  **Errors:** - `401 Unauthorized` — missing session/API key. - `404 Invalid VPS Passed` — `id` not owned by caller.  **Prefer these dedicated endpoints when applicable:** - Hostname → `postVpsChangeHostname` (OpenVZ/Virtuozzo only). - Root password → `postVpsChangeRootPassword` (specific value) or `postVpsResetPassword` (random). - Reverse DNS → `postVpsReverseDns`. - Slice upgrade/downgrade → `getVpsSlices` → `postVpsSlices` (creates prorated invoice). - Additional disk → `getVpsBuyHdSpace` → `putVpsBuyHdSpace` → `postVpsBuyHdSpace`. - Additional IPs → `getVpsBuyIp` → `postVpsBuyIp`. - Timezone → `getVpsChangeTimezone` → `postVpsChangeTimezone`. - Cancel service entirely → `VPSCancel`. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.UpdateVpsInfo()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.UpdateVpsInfo()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.UpdateVpsInfo()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}"
		  
		  Dim localVarPathStringid As String = id
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.UpdateVpsInfo_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.UpdateVpsInfo_error
		  
		  
		  localVarHTTPSocket.SendRequest("POST", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function UpdateVpsInfoPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.SuccessTextResponse) As Boolean
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
		Private Sub UpdateVpsInfo_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  CallbackHandler.UpdateVpsInfoCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub UpdateVpsInfo_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.SuccessTextResponse
		  Call UpdateVpsInfoPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.UpdateVpsInfoCallback(error, data)
		End Sub
	#tag EndMethod




	#tag Method, Flags = &h0
		Sub VPSCancel(, id As Integer)
		  // Operation VPSCancel
		  // Cancel a VPS service at the end of the current billing cycle
		  // - 
		  // - parameter id: (path) VPS ID number 
		  //
		  // Invokes VPSApiCallbackHandler.VPSCancelCallback(VPSCancel200Response) on completion. 
		  //
		  // - DELETE /vps/{id}
		  // - Customer-facing cancel — schedules termination, stops future renewals, and queues deprovisioning. Billing continues until the end of the already-paid period, and the customer keeps access until then; this endpoint does **not** issue refunds. Delegates to `BillingCancelService::go()` (shared cancellation handler used across all service modules). The repeat-invoice is marked for cancellation and the VPS row's status will eventually flip to `cancelled`. Reversible: a customer can typically un-cancel before the cycle ends by opening a support ticket. Sibling ops: `getVpsInfo` (verify status), `getVpsInvoices` (review final invoices), `getVpsBackup` (snapshot before cancellation).  **Path param:** - `id` (integer, required) — VPS id from `getVpsList.vps_id`.  **Body:** None.  **Returns:** `VPSCancelResponse` — confirmation text plus the scheduled cancellation date.  **Side effects:** - Sets the `repeat_invoices` row for the VPS to non-renewing. - Logs the cancellation event in `history_log`. - Queues `vpsqueue` deprovisioning action to run at end-of-cycle. - Does NOT immediately stop the VPS — power state is unchanged until the cycle ends.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - `401 Unauthorized` — missing session/API key. - `404 Invalid VPS Passed` — `id` not owned by caller.  **Related calls:** - **Before cancelling:** `getVpsBackup` (create a final snapshot), `downloadVpsBackup` (export it). - **After cancelling:** `getVpsInfo` (confirm `vps_status` flipped), `getVpsInvoices` (final invoices). - **Sibling cancels on other modules:** `CancelDomain`, `mailCancel`, `webhostingCancel`, etc. all use the same `CancelService` handler. 
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
		  
		  
		  If me.ApiKeysessionIdCookieAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdCookieAuth` before invoking `VPSApi.VPSCancel()`.")
		  
		  
		  If me.ApiKeyapiKeyAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeyapiKeyAuth` before invoking `VPSApi.VPSCancel()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("X-API-KEY"), EncodeURLComponent(me.ApiKeyapiKeyAuth))
		  If me.ApiKeysessionIdHeaderAuth = "" Then Raise New OpenAPIClient.OpenAPIClientException(kErrorCannotAuthenticate, "API key is unset. Please assign a value to `VPSApi.ApiKeysessionIdHeaderAuth` before invoking `VPSApi.VPSCancel()`.")
		  
		  localVarHTTPSocket.SetRequestHeader(EncodeURLComponent("sessionid"), EncodeURLComponent(me.ApiKeysessionIdHeaderAuth))
		  


		  Dim localVarPath As String = "/vps/{id}"
		  
		  Dim localVarPathStringid As String = id.ToString
		  
		  localVarPath = localVarPath.ReplaceAllB("{id}", localVarPathStringid)
		  
		  
		  AddHandler localVarHTTPSocket.PageReceived, addressof me.VPSCancel_handler
		  AddHandler localVarHTTPSocket.Error, addressof Me.VPSCancel_error
		  
		  
		  localVarHTTPSocket.SendRequest("DELETE", Me.BasePath + localVarPath)
		  if localVarHTTPSocket.LastErrorCode <> 0 then
		    Dim localVarException As New OpenAPIClient.OpenAPIClientException(localVarHTTPSocket.LastErrorCode)
			Raise localVarException
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function VPSCancelPrivateFuncDeserializeResponse(HTTPStatus As Integer, Headers As InternetHeaders, error As OpenAPIClient.OpenAPIClientException, Content As String, ByRef outData As OpenAPIClient.Models.VPSCancel200Response) As Boolean
		  Dim contentType As String = Headers.Value("Content-Type")
		  Dim contentEncoding As TextEncoding = OpenAPIClient.EncodingFromContentType(contentType)
		  Content = DefineEncoding(Content, contentEncoding)
		  
		  If HTTPStatus > 199 and HTTPStatus < 300 then
		    If contentType.LeftB(16) = "application/json" then
		      
			  outData = New OpenAPIClient.Models.VPSCancel200Response
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
		Private Sub VPSCancel_error(sender As HTTPSecureSocket, Code As Integer)
		  If sender <> nil Then sender.Close()

		  Dim error As New OpenAPIClient.OpenAPIClientException(Code)
		  Dim data As OpenAPIClient.Models.VPSCancel200Response
		  CallbackHandler.VPSCancelCallback(error, data)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub VPSCancel_handler(sender As HTTPSecureSocket, URL As String, HTTPStatus As Integer, Headers As InternetHeaders, Content As String)
		  #Pragma Unused URL
		  

		  If sender <> nil Then sender.Close()
		  
		  Dim error As New OpenAPIClient.OpenAPIClientException(HTTPStatus, "", Content)
		  
		  Dim data As OpenAPIClient.Models.VPSCancel200Response
		  Call VPSCancelPrivateFuncDeserializeResponse(HTTPStatus, Headers, error, Content, data)
		  
		  CallbackHandler.VPSCancelCallback(error, data)
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
		CallbackHandler As OpenAPIClient.APIs.VPSApiCallbackHandler
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

	#tag Enum, Name = AllEnum_DeleteVpsBackup, Type = Integer, Flags = &h0
		
        Escaped0
        Escaped1
        UnknownDefaultOpenApi
		
	#tag EndEnum

	#tag Enum, Name = AllEnum_DownloadVpsBackup, Type = Integer, Flags = &h0
		
        Escaped0
        Escaped1
        UnknownDefaultOpenApi
		
	#tag EndEnum

	#tag Enum, Name = AllEnum_GetVpsBackups, Type = Integer, Flags = &h0
		
        Escaped0
        Escaped1
        UnknownDefaultOpenApi
		
	#tag EndEnum


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
