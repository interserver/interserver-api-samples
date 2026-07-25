part of swagger.api;



class QuickServersApi {
  final ApiClient apiClient;

  QuickServersApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Place a QuickServer order, generating a real invoice and queuing provisioning
  ///
  /// Commits the validated order: creates the service row, generates a real invoice, and queues provisioning. Body fields match &#x60;putQs&#x60; (&#x60;server&#x60;, &#x60;password&#x60;, &#x60;os&#x60;, &#x60;comment&#x60;, &#x60;tos&#x60;) — call &#x60;putQs&#x60; first to catch errors. On &#x60;validation.continue&#x3D;false&#x60;, returns the joined error string with no charge. Returns: &#x60;ServiceOrderPostResponse&#x60; with the new service ID and invoice info. Pay via &#x60;getBillingInvoice&#x60;/&#x60;initiatePayment&#x60;. Errors: 401 if unauthenticated, 4xx with message on validation failure. Siblings: &#x60;putQs&#x60; (validate first), &#x60;getNewQs&#x60;, &#x60;addVps&#x60; (VPS equivalent).
  Future<ServiceOrderPostResponse> addQs(QsOrderRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/qs/order".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ServiceOrderPostResponse') as ServiceOrderPostResponse ;
    } else {
      return null;
    }
  }
  /// Permanently delete a QuickServer backup file from object storage
  ///
  /// Removes the backup from its storage backend. Irreversible — the backup cannot be recovered. Path param: &#x60;id&#x60;. Required: &#x60;file&#x60; (the backup &#x60;name&#x60; from &#x60;getQsBackups&#x60;, in query or form body). Works for &#x60;swift&#x60; and &#x60;minio&#x60; backups; &#x60;zfs&#x60; snapshots cannot be deleted via this endpoint (returns an error pointing to support). Returns: &#x60;SuccessTextResponse&#x60; with the removed name. Errors: 401, 404 if not owned, error message if backup type is unsupported or the storage operation fails. Siblings: &#x60;getQsBackups&#x60; (list), &#x60;downloadQsBackup&#x60; (PATCH), &#x60;postQuickServerRestore&#x60;.
  Future<SuccessTextResponse> deleteQsBackup(int id, String file, { String all }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }
    if(file == null) {
     throw new ApiException(400, "Missing required param: file");
    }

    // create path and map variables
    String path = "/qs/{id}/backups".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(all != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "all", all));
    }
      queryParams.addAll(_convertParametersForCollectionFormat("", "file", file));
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'SuccessTextResponse') as SuccessTextResponse ;
    } else {
      return null;
    }
  }
  /// Block outbound SMTP traffic on a QuickServer to halt mail abuse
  ///
  /// Queues a firewall rule that drops outbound port 25 traffic, used to halt spam/abuse without taking the server offline. Path param: &#x60;id&#x60; (integer). No body. Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes via the queue worker, which also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Reversible only by support — there is no &#x60;unblock_smtp&#x60; endpoint. Siblings: &#x60;doVpsBlockSmtp&#x60;, &#x60;getQsInfo&#x60;.
  Future<QueueResponse> doQsBlockSmtp(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/block_smtp".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Disable the virtual CD/DVD drive device on a QuickServer
  ///
  /// Queues removal of the virtual CD/DVD device from the QuickServer (full disable, not just eject). Path param: &#x60;id&#x60; (integer). No body. Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Siblings: &#x60;doQsEjectCd&#x60; (eject the ISO but keep drive), &#x60;postQsInsertCd&#x60; (mount an ISO), &#x60;getQsInsertCd&#x60; (list available ISOs).
  Future<QueueResponse> doQsDisableCd(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/disable_cd".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Disable disk-quota enforcement at OS level on a QuickServer
  ///
  /// Queues a job to turn off disk-quota enforcement at the OS level. Use when quota errors block legitimate writes or before resizing disk space. Path param: &#x60;id&#x60; (integer). No body. Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Re-enable later with &#x60;doQsEnableQuota&#x60;. Siblings: &#x60;doQsEnableQuota&#x60; (re-enable), &#x60;doVpsDisableQuota&#x60; (VPS equivalent).
  Future<QueueResponse> doQsDisableQuota(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/disable_quota".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Eject the currently mounted ISO from a QuickServer&#x27;s virtual CD drive
  ///
  /// Queues an eject — drive remains attached but no media. Path param: &#x60;id&#x60; (integer). No body. Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes. The queue worker also re-runs VNC setup so the console reflects the change. Errors: 401, 404 if &#x60;id&#x60; is not owned by caller. Note: this handler does not validate &#x60;active&#x60; status. Siblings: &#x60;postQsInsertCd&#x60; (mount an ISO), &#x60;getQsInsertCd&#x60; (list ISOs), &#x60;doQsDisableCd&#x60; (remove the drive itself).
  Future<QueueResponse> doQsEjectCd(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/eject_cd".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Enable disk-quota enforcement at OS level on a QuickServer
  ///
  /// Queues a job to turn on disk-quota enforcement at the OS level. Pair with &#x60;doQsDisableQuota&#x60; when re-enabling after maintenance, disk resizing, or restoring a backup. Path param: &#x60;id&#x60; (integer). No body. Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Siblings: &#x60;doQsDisableQuota&#x60; (turn off), &#x60;doVpsEnableQuota&#x60; (VPS equivalent).
  Future<QueueResponse> doQsEnableQuota(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/enable_quota".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Reboot a QuickServer with a graceful OS-level restart
  ///
  /// Queues a graceful restart — equivalent to &#x60;reboot&#x60; inside the OS. Path param: &#x60;id&#x60; (integer). No body. Use to recover from a hung service or apply pending kernel/config changes. Returns: &#x60;{ text, queueId }&#x60;. Async — server is back online within ~2 minutes; queue worker also re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on &#x60;active&#x60; status — restarts work even on suspended services. Siblings: &#x60;doQsStart&#x60;, &#x60;doQsStop&#x60;, &#x60;doVpsRestart&#x60;.
  Future<QueueResponse> doQsRestart(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/restart".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Power on a QuickServer that is currently stopped or pending boot
  ///
  /// Queues a &#x60;start&#x60; command to bring the QuickServer online. Path param: &#x60;id&#x60; (integer). No body. Idempotent in practice — re-running on an already-on server is a no-op at the worker. Returns: &#x60;{ text, queueId }&#x60;. Async — typically online within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status, so it can be issued even for non-active services. Siblings: &#x60;doQsStop&#x60;, &#x60;doQsRestart&#x60;, &#x60;getQsInfo&#x60;, &#x60;doVpsStart&#x60;.
  Future<QueueResponse> doQsStart(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/start".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Power off a QuickServer with a graceful shutdown command
  ///
  /// Queues a &#x60;stop&#x60; command. Path param: &#x60;id&#x60; (integer). No body. Use before maintenance, snapshot, or to halt traffic — billing continues regardless of power state, so use &#x60;quickserversCancel&#x60; to also stop charges. Returns: &#x60;{ text, queueId }&#x60;. Async — typically off within ~2 minutes; queue worker re-runs VNC setup. Errors: 401, 404 if not owned by caller. Note: handler does not gate on status. Siblings: &#x60;doQsStart&#x60;, &#x60;doQsRestart&#x60;, &#x60;doVpsStop&#x60;.
  Future<QueueResponse> doQsStop(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/stop".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Generate a 24-hour pre-signed download URL for a QuickServer backup
  ///
  /// Returns a temporary signed URL to fetch the backup directly from object storage. Path param: &#x60;id&#x60;. Body (JSON or form): &#x60;file&#x60; (the backup &#x60;name&#x60; from &#x60;getQsBackups&#x60;). Only available for &#x60;minio&#x60;-type backups; &#x60;swift&#x60; and &#x60;zfs&#x60; backups return an error directing the caller to contact support. URL expires in 24 hours. Returns: &#x60;{ text, url }&#x60;. Errors: 401, 404 if not owned, error message for unsupported backup type or sharing failure. Siblings: &#x60;getQsBackups&#x60; (list, get &#x60;name&#x60;), &#x60;deleteQsBackup&#x60;, &#x60;postQuickServerRestore&#x60;.
  Future<InlineResponse20012> downloadQsBackup(IdBackupsBody body, int id, { String all }) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/backups".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(all != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "all", all));
    }
    
    List<String> contentTypes = ["application/json","multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (file != null) {
        hasFields = true;
        mp.fields['file'] = parameterToString(file);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (file != null)
        formParams['file'] = parameterToString(file);
    }

    var response = await apiClient.invokeAPI(path,
                                             'PATCH',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'InlineResponse20012') as InlineResponse20012 ;
    } else {
      return null;
    }
  }
  /// Get QuickServer order form metadata and available plans/templates
  ///
  /// Use before placing or validating a QuickServer order to retrieve pricing, available servers, OS templates, and form fields. Read-only — no params, no body, no charge. Returns: &#x60;QuickserverOrder&#x60; schema with plan/template/server options used to build the order payload for &#x60;putQs&#x60; (validate) or &#x60;addQs&#x60; (place). Errors: 401 if unauthenticated. Siblings: &#x60;putQs&#x60; (dry-run validation), &#x60;addQs&#x60; (commits and invoices), &#x60;getNewVps&#x60; (virtual VPS ordering surface).
  Future<QuickserverOrder> getNewQs() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/qs/order".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QuickserverOrder') as QuickserverOrder ;
    } else {
      return null;
    }
  }
  /// Queue creation of a new QuickServer backup snapshot (note: GET triggers job)
  ///
  /// Note: GET on &#x60;/qs/{id}/backup&#x60; triggers a backup job — despite the verb, this is a state-changing action. Queues a &#x60;backup&#x60; operation; backup name is auto-generated. Path param: &#x60;id&#x60; (integer). Returns: &#x60;{ text, queueId }&#x60;. Async — backup completes in minutes to hours depending on disk size. Poll &#x60;getQsBackups&#x60; to see when it appears. Errors: 401 if unauthenticated, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Siblings: &#x60;getQsBackups&#x60; (list), &#x60;postQuickServerRestore&#x60;, &#x60;downloadQsBackup&#x60;, &#x60;deleteQsBackup&#x60;.
  Future<QueueResponse> getQsBackup(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/backup".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// List available QuickServer backups across Swift, MinIO, and ZFS storage
  ///
  /// Returns all backups visible to the caller for this QuickServer across the three backup backends. Path param: &#x60;id&#x60; (integer). Optional query &#x60;all&#x3D;1&#x60; lists every backup the customer owns, not just this server&#x27;s. Returns: &#x60;VpsBackupRows&#x60; array — each row has &#x60;name&#x60;, &#x60;type&#x60; (swift/minio/zfs), &#x60;size&#x60;, &#x60;service&#x60;, &#x60;path&#x60;. Use &#x60;name&#x60; (not a numeric ID) with &#x60;downloadQsBackup&#x60; (PATCH), &#x60;deleteQsBackup&#x60; (DELETE), or &#x60;postQuickServerRestore&#x60;. Errors: 401, 404 if not owned by caller. Siblings: &#x60;getQsBackup&#x60; (create), &#x60;postQuickServerRestore&#x60;.
  Future<VpsBackupRows> getQsBackups(int id, { String all }) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/backups".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(all != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "all", all));
    }
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'VpsBackupRows') as VpsBackupRows ;
    } else {
      return null;
    }
  }
  /// Get current QuickServer hostname plus change rules and platform support
  ///
  /// Read-only probe before calling &#x60;postQsChangeHostname&#x60;. Path param: &#x60;id&#x60; (integer). Returns the current hostname and the validation rules the new hostname must satisfy. Returns: object with hostname metadata. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Note: hostname changes are only supported on OpenVZ/Virtuozzo platforms — &#x60;postQsChangeHostname&#x60; rejects KVM/dedicated types with an explanatory error. Siblings: &#x60;postQsChangeHostname&#x60;, &#x60;getVpsChangeHostname&#x60;.
  Future getQsChangeHostname(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/change_hostname".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Get metadata for QuickServer root/OS password change requirements
  ///
  /// Read-only probe before calling &#x60;postQsChangeRootPassword&#x60;. Path param: &#x60;id&#x60; (integer). Use to surface password complexity rules and confirm the QuickServer accepts root password changes. Returns: object with reset metadata. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Note: this changes the OS root password (Linux) — for the Webuzo control panel password use &#x60;postQsChangeWebuzoPassword&#x60;. Siblings: &#x60;postQsChangeRootPassword&#x60;, &#x60;postQsResetPassword&#x60; (random password), &#x60;getVpsChangeRootPassword&#x60;.
  Future getQsChangeRootPassword(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/change_root_password".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// List timezones the QuickServer can be set to via change_timezone
  ///
  /// Returns the system timezone catalog (parsed from &#x60;/usr/share/zoneinfo/zone.tab&#x60;) for use with &#x60;postQsChangeTimezone&#x60;. Path param: &#x60;id&#x60; (integer). Read-only — no queue, no charge. Returns: array of timezone strings (e.g. &#x60;America/New_York&#x60;, &#x60;Europe/London&#x60;). Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60; (handler labels these errors as &#x60;Invalid VPS Passed&#x60; / &#x60;VPS is not active&#x60; due to shared code). Siblings: &#x60;postQsChangeTimezone&#x60; (commit), &#x60;getVpsChangeTimezone&#x60;, &#x60;getQsChangeHostname&#x60; (also informational).
  Future<List<String>> getQsChangeTimezone(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/change_timezone".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<String>') as List).map((item) => item as String).toList();
    } else {
      return null;
    }
  }
  /// Get metadata for changing the Webuzo control panel admin password
  ///
  /// Read-only probe before &#x60;postQsChangeWebuzoPassword&#x60;. Path param: &#x60;id&#x60; (integer). Webuzo is a control panel optionally installed on QuickServers — its admin password is separate from the OS root password. Returns: object with change instructions. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Siblings: &#x60;postQsChangeWebuzoPassword&#x60;, &#x60;postQsChangeRootPassword&#x60; (OS root password), &#x60;postQsResetPassword&#x60;.
  Future getQsChangeWebuzoPassword(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/change_webuzo_password".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Get full details for one QuickServer including credentials and links
  ///
  /// Returns the QuickServer dashboard payload — service info, IPs, hostname, OS, status, billing, and the list of available &#x60;client_links&#x60; (action endpoints the caller is allowed to invoke). Path param: &#x60;id&#x60; (integer QuickServer ID). Returns: &#x60;Quickserver&#x60; schema. Use response links to drive &#x60;doQsStart&#x60;, &#x60;doQsStop&#x60;, &#x60;doQsRestart&#x60;, &#x60;getQsBackups&#x60;, &#x60;getQsReinstallOs&#x60;, &#x60;getQsReverseDns&#x60;, &#x60;getQsInvoices&#x60;. Errors: 401 if unauthenticated, 404 if &#x60;id&#x60; is not owned by caller. Siblings: &#x60;updateQsInfo&#x60; (mutate), &#x60;quickserversCancel&#x60; (delete), &#x60;getVpsInfo&#x60; (VPS equivalent).
  Future<Quickserver> getQsInfo(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'Quickserver') as Quickserver ;
    } else {
      return null;
    }
  }
  /// List ISO images available to mount on a QuickServer&#x27;s virtual CD
  ///
  /// Returns the catalog of bootable ISOs the caller can mount via &#x60;postQsInsertCd&#x60;. Path param: &#x60;id&#x60; (integer). Read-only — no queue, no charge. Returns: object with available ISO entries (URLs/labels) keyed for the QuickServer&#x27;s hardware type. Errors: 401 if unauthenticated. Note: this handler does not validate ownership or active status — pair with &#x60;getQsInfo&#x60; first if you need those checks before presenting options to a user. Siblings: &#x60;postQsInsertCd&#x60; (mount the chosen URL), &#x60;doQsEjectCd&#x60;, &#x60;doQsDisableCd&#x60;, &#x60;getVpsInsertCd&#x60;.
  Future getQsInsertCd(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/insert_cd".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// List billing invoices charged for one QuickServer service
  ///
  /// Returns invoices charged for this QuickServer (initial setup + recurring). Path param: &#x60;id&#x60; (integer). Returns: &#x60;ChargeInvoiceRows&#x60; — each row has invoice ID, amount, status (paid/unpaid), date. Use the invoice ID with &#x60;getBillingInvoice&#x60; for full detail or &#x60;initiatePayment&#x60; to settle. Errors: 401 if unauthenticated, 404 if not owned by caller. Siblings: &#x60;getQsInfo&#x60;, &#x60;getVpsInvoices&#x60;, &#x60;getBillingInvoice&#x60;, &#x60;quickserversCancel&#x60; (check next-invoice date before canceling).
  Future<ChargeInvoiceRows> getQsInvoices(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/invoices".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ChargeInvoiceRows') as ChargeInvoiceRows ;
    } else {
      return null;
    }
  }
  /// List QuickServer rapid-deploy dedicated servers on the account
  ///
  /// Use to enumerate the caller&#x27;s QuickServers (quick-provision physical dedicated boxes that share the VPS billing model). No params, no body. Each row has &#x60;qs_id&#x60;, &#x60;qs_name&#x60;, &#x60;qs_hostname&#x60;, &#x60;qs_status&#x60;, &#x60;qs_comment&#x60;, and &#x60;cost&#x60;. Feed &#x60;qs_id&#x60; into &#x60;getQsInfo&#x60; for full details, or any per-server action (&#x60;doQsStart&#x60;, &#x60;doQsStop&#x60;, &#x60;doQsRestart&#x60;, &#x60;getQsBackups&#x60;, etc.). Returns: array of QuickServer rows. Errors: 401 if unauthenticated. Siblings: &#x60;getVpsList&#x60; (virtual VPS surface), &#x60;getQsInfo&#x60;, &#x60;getNewQs&#x60; for ordering metadata.
  Future<List<QuickserverRow>> getQsList() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/qs".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
        (apiClient.deserialize(response.body, 'List<QuickserverRow>') as List).map((item) => item as QuickserverRow).toList();
    } else {
      return null;
    }
  }
  /// List OS templates available for a QuickServer reinstall
  ///
  /// Returns the OS template catalog filtered to the QuickServer&#x27;s hardware/template type. Path param: &#x60;id&#x60; (integer). Read-only — no provisioning happens. Returns: &#x60;{ templates: [...] }&#x60; — each template has &#x60;template_file&#x60;, &#x60;template_name&#x60;, &#x60;template_version&#x60;. Use &#x60;template_file&#x60; with &#x60;postQsReinstallOs&#x60;. Non-admin callers only see templates with &#x60;template_available&#x3D;1&#x60;. Errors: 401 if unauthenticated. Siblings: &#x60;postQsReinstallOs&#x60; (commit, destructive), &#x60;getVpsReinstallOs&#x60;.
  Future<VpsTemplatesList> getQsReinstallOs(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/reinstall_os".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'VpsTemplatesList') as VpsTemplatesList ;
    } else {
      return null;
    }
  }
  /// Get options for QuickServer randomized root password reset
  ///
  /// Read-only probe before &#x60;postQsResetPassword&#x60;. Path param: &#x60;id&#x60; (integer). Use to confirm the QuickServer is in a state that allows password resets. Returns: object with reset configuration. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Note: &#x60;postQsResetPassword&#x60; generates a random password — for a chosen value use &#x60;postQsChangeRootPassword&#x60;. Siblings: &#x60;postQsResetPassword&#x60;, &#x60;postQsChangeRootPassword&#x60;, &#x60;getVpsResetPassword&#x60;.
  Future getQsResetPassword(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/reset_password".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Get reverse DNS (PTR) records for all of a QuickServer&#x27;s IPs
  ///
  /// Returns the current PTR record for the primary IP and any additional IPs assigned to the QuickServer. Path param: &#x60;id&#x60; (integer). Read-only — looks up live DNS, no queue. Returns: &#x60;{ ips: { \&quot;&lt;ip&gt;\&quot;: \&quot;&lt;hostname&gt;\&quot;, ... } }&#x60;. Use the keys with &#x60;postQsReverseDns&#x60; to update entries. Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: &#x60;postQsReverseDns&#x60;, &#x60;getVpsReverseDns&#x60;.
  Future<ReverseDnsEntries> getQsReverseDns(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/reverse_dns".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'ReverseDnsEntries') as ReverseDnsEntries ;
    } else {
      return null;
    }
  }
  /// Get current VNC console connection details for a QuickServer
  ///
  /// Read-only probe for the VNC tunnel that exposes the server&#x27;s console (host, port, credentials). Path param: &#x60;id&#x60; (integer). Returns: object with VNC connection info. Errors: 401 if unauthenticated, 404 if &#x60;id&#x60; is not owned by caller, 409 if service is not &#x60;active&#x60;. Note: this endpoint is currently a stub — the &#x60;// todo: return vnc info&#x60; line indicates the response body may be empty until completed. Siblings: &#x60;postQsSetupVnc&#x60; (configure access IP), &#x60;getVpsSetupVnc&#x60;.
  Future getQsSetupVnc(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/setup_vnc".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Get bandwidth usage for the QuickServer&#x27;s current billing period
  ///
  /// Returns the inbound/outbound bandwidth totals and time-series points for the QuickServer&#x27;s current cycle. Path param: &#x60;id&#x60; (integer). Read-only. Returns: bandwidth-data object from &#x60;qs_bandwidth_data&#x60; (totals, daily/hourly points, overage flag). Errors: 401 if unauthenticated. Note: handler does not gate on ownership or active status. Siblings: &#x60;postQsTrafficUsage&#x60; (same data, accessible via POST for filtered queries), &#x60;getVpsTrafficUsage&#x60;.
  Future getQsTrafficUsage(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/traffic_usage".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Get the full QuickServer dashboard view payload (rich format)
  ///
  /// Returns the same rich payload the AdminLTE UI uses — service info, billing, available client_links, resource graphs. Heavier than &#x60;getQsInfo&#x60; and intended for desktop dashboards. Path param: &#x60;id&#x60; (integer). Returns: object with &#x60;serviceInfo&#x60;, &#x60;client_links&#x60;, etc. (admin-only fields stripped). Errors: 401 if unauthenticated. Note: handler does not gate on ownership/active status. Siblings: &#x60;getQsInfo&#x60; (lighter), &#x60;postQsViewDesktop&#x60; (mutate variant), &#x60;getVpsViewDesktop&#x60;.
  Future getQsViewDesktop(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/view_desktop".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Resend the QuickServer welcome email with login credentials
  ///
  /// Re-runs the &#x60;qs_welcome_email&#x60; function which composes and sends the welcome email containing connection details, root password, and management URLs to the account owner. Path param: &#x60;id&#x60; (integer). Returns: &#x60;{ text: \&quot;Welcome Email has been resent.\&quot; }&#x60;. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. Use when the original welcome email was lost or the customer needs credentials again. Siblings: &#x60;getVpsWelcomeEmail&#x60;, &#x60;getQsInfo&#x60; (also exposes connection info).
  Future<TextResponse> getQsWelcomeEmail(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/welcome_email".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'GET',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'TextResponse') as TextResponse ;
    } else {
      return null;
    }
  }
  /// Change a QuickServer&#x27;s system hostname (OpenVZ/Virtuozzo only)
  ///
  /// Updates the hostname and the matching reverse DNS entry. Path param: &#x60;id&#x60;. Body (JSON or form): &#x60;hostname&#x60; (must pass &#x60;valid_hostname&#x60;, must differ from current). Only supported on OpenVZ/Virtuozzo platforms — KVM/dedicated returns a 4xx with a contact-support message. Pending services update the DB row directly (&#x60;{ text }&#x60;); active services queue the change (&#x60;{ text, queueId }&#x60;, ~2 min). Errors: 401, 404 if not owned, 409 if status !&#x3D; &#x60;active&#x60;, validation error for bad hostname or no change. Siblings: &#x60;getQsChangeHostname&#x60;, &#x60;postVpsChangeHostname&#x60;.
  Future<QueueResponse> postQsChangeHostname(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/change_hostname".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Change QuickServer root/administrator password to a chosen value
  ///
  /// Queues a root password change. Path param: &#x60;id&#x60;. Body (JSON or form): &#x60;password&#x60; (the new password — required, no server-side complexity validation here). Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes. Both queue and history entries are written. Errors: 401, 404 if not owned, 409 if status !&#x3D; &#x60;active&#x60;, 400 if &#x60;password&#x60; is missing. For a randomly generated password use &#x60;postQsResetPassword&#x60; instead. For Webuzo panel password use &#x60;postQsChangeWebuzoPassword&#x60;. Siblings: &#x60;getQsChangeRootPassword&#x60;, &#x60;postVpsChangeRootPassword&#x60;.
  Future<QueueResponse> postQsChangeRootPassword(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/change_root_password".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Change the system timezone on a QuickServer to a catalog entry
  ///
  /// Queues a timezone change. Path param: &#x60;id&#x60;. Body (JSON or form): &#x60;timezone&#x60; (must be one of the strings returned by &#x60;getQsChangeTimezone&#x60;). Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes by the queue worker. Errors: 401, 404 if not owned, 409 if status !&#x3D; &#x60;active&#x60;, 422 if &#x60;timezone&#x60; is not in the catalog. Siblings: &#x60;getQsChangeTimezone&#x60; (call first to get valid options), &#x60;postVpsChangeTimezone&#x60;.
  Future<QueueResponse> postQsChangeTimezone(String timezone, int id) async {
    Object postBody = body;

    // verify required params are set
    if(timezone == null) {
     throw new ApiException(400, "Missing required param: timezone");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/change_timezone".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["multipart/form-data","application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (timezone != null) {
        hasFields = true;
        mp.fields['timezone'] = parameterToString(timezone);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (timezone != null)
        formParams['timezone'] = parameterToString(timezone);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Change Webuzo control panel admin password live (synchronous, not queued)
  ///
  /// Calls the Webuzo SDK directly on the server to change the panel &#x60;admin&#x60; password, then emails the new credentials. Path param: &#x60;id&#x60;. Body: &#x60;password&#x60; (new Webuzo password, must pass &#x60;valid_password&#x60;), &#x60;login_password&#x60; (caller&#x27;s account login password — verified via md5 hash). Synchronous — no queue ID. Requires a prior Webuzo-Details history entry. Returns: success message string. Errors: 401, 404 if not owned, 409 if status !&#x3D; &#x60;active&#x60;, validation errors for missing fields, wrong login password, weak new password, or SDK failure. Siblings: &#x60;getQsChangeWebuzoPassword&#x60;, &#x60;postQsChangeRootPassword&#x60; (OS root).
  Future<QueueResponse> postQsChangeWebuzoPassword(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/change_webuzo_password".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Mount an ISO image as the QuickServer&#x27;s virtual CD via URL
  ///
  /// Queues an &#x60;insert_cd&#x60; job that attaches the given ISO URL to the QuickServer&#x27;s virtual CD drive (typically for OS reinstalls or rescue boots). Path param: &#x60;id&#x60;. Body (JSON or form): &#x60;url&#x60; (the ISO URL — pick one from &#x60;getQsInsertCd&#x60;). Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller. The action is idempotent in effect (latest mount wins). Siblings: &#x60;getQsInsertCd&#x60; (list options), &#x60;doQsEjectCd&#x60; (unmount), &#x60;doQsDisableCd&#x60;, &#x60;postQsReinstallOs&#x60; (template-based).
  Future<QueueResponse> postQsInsertCd(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/insert_cd".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Reinstall the operating system on a QuickServer (DESTRUCTIVE — wipes disk)
  ///
  /// Wipes the disk and reinstalls the chosen OS template. All data, configs, and snapshots are erased. Path param: &#x60;id&#x60;. Body: &#x60;template&#x60; (a &#x60;template_file&#x60; from &#x60;getQsReinstallOs&#x60;), &#x60;password&#x60; (new root password — required for non-Windows templates). For active services, queues &#x60;reinstall_os&#x60; (~2 min). For inactive services, just stores the OS preference for next activation. Updates &#x60;qs_status&#x60; to &#x60;Reinstalling&#x60; and clears screenshots. Returns flash messages — typical envelope. Errors: 401, invalid template name returns error flash. Siblings: &#x60;getQsReinstallOs&#x60; (list options), &#x60;postVpsReinstallOs&#x60;, &#x60;postQuickServerRestore&#x60; (recover from backup instead).
  Future<QueueResponse> postQsReinstallOs(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/reinstall_os".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Reset QuickServer root password to a server-generated random value
  ///
  /// Queues a &#x60;reset_password&#x60; job that generates a new root password and emails it to the account owner. Path param: &#x60;id&#x60; (integer). No body — password is generated server-side. Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes. Errors: 401, 404 if not owned by caller, 409 if status !&#x3D; &#x60;active&#x60;. For a chosen password use &#x60;postQsChangeRootPassword&#x60; instead; for the Webuzo panel password use &#x60;postQsChangeWebuzoPassword&#x60;. Siblings: &#x60;getQsResetPassword&#x60;, &#x60;postVpsResetPassword&#x60;.
  Future<QueueResponse> postQsResetPassword(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/reset_password".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Update reverse DNS (PTR) records for a QuickServer&#x27;s IPs
  ///
  /// Sets PTR records for one or more of the QuickServer&#x27;s IPs. Path param: &#x60;id&#x60;. Body (form): &#x60;ips&#x60; — keyed by IP, value is the desired hostname (must be valid). Returns: &#x60;{ message: \&quot;DNS Updated\&quot;, success: true }&#x60;. Caveat: in the current implementation the body is parsed but the per-IP update loop is a no-op shell — verify with &#x60;getQsReverseDns&#x60; after calling, and use the support channel if changes don&#x27;t propagate. Errors: 401 if unauthenticated. Siblings: &#x60;getQsReverseDns&#x60;, &#x60;postVpsReverseDns&#x60;.
  Future<TextResponse> postQsReverseDns(ReverseDnsEntries body, int id) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/reverse_dns".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json","multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (ips != null) {
        hasFields = true;
        mp.fields['ips'] = parameterToString(ips);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (ips != null)
        formParams['ips'] = parameterToString(ips);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'TextResponse') as TextResponse ;
    } else {
      return null;
    }
  }
  /// Configure the source IP allowed to reach a QuickServer&#x27;s VNC console
  ///
  /// Sets the IP allowed to reach the VNC tunnel and queues a &#x60;setup_vnc&#x60; to apply it. Path param: &#x60;id&#x60;. Body (JSON or form): &#x60;vnc&#x60; (a valid IPv4 address — only this address can reach the console). Returns: &#x60;{ text, queueId }&#x60;. Async — applied within ~2 minutes. Errors: 401, 404 if not owned, 409 if status !&#x3D; &#x60;active&#x60;. Returns an inline &#x60;Invalid IP&#x60; message when &#x60;vnc&#x60; fails &#x60;validIp&#x60;. The VPS-style helper also runs after the DB update. Siblings: &#x60;getQsSetupVnc&#x60; (read), &#x60;postVpsSetupVnc&#x60;.
  Future<QueueResponse> postQsSetupVnc(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/setup_vnc".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Query QuickServer bandwidth usage via POST (filtered variant)
  ///
  /// Functional duplicate of &#x60;getQsTrafficUsage&#x60; exposed under POST so clients can pass a filter body. Path param: &#x60;id&#x60; (integer). Body fields are accepted but the current handler ignores them and returns the full current-cycle dataset. Returns: same bandwidth-data object as &#x60;getQsTrafficUsage&#x60;. Errors: 401 if unauthenticated. No active-status or ownership gate. Siblings: &#x60;getQsTrafficUsage&#x60;, &#x60;postVpsTrafficUsage&#x60;.
  Future postQsTrafficUsage(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/traffic_usage".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Submit changes and re-fetch the QuickServer dashboard view payload
  ///
  /// Same handler as &#x60;getQsViewDesktop&#x60; but accessible via POST so callers can pass body fields alongside re-fetching the view. Path param: &#x60;id&#x60;. Body fields are accepted by the underlying View handler. Returns: refreshed dashboard object — &#x60;serviceInfo&#x60;, &#x60;client_links&#x60;, etc. Errors: 401 if unauthenticated. For structured updates prefer the dedicated endpoints (&#x60;postQsChangeHostname&#x60;, &#x60;postQsReverseDns&#x60;, &#x60;postQsSetupVnc&#x60;, etc.) which return queue IDs. Siblings: &#x60;getQsViewDesktop&#x60;, &#x60;postVpsViewDesktop&#x60;.
  Future postQsViewDesktop(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/view_desktop".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Restore a QuickServer from a backup (DESTRUCTIVE — overwrites disk)
  ///
  /// Overwrites the live disk with a backup. Path param: &#x60;id&#x60;. Body (form): &#x60;backup&#x60; (composite key &#x60;&lt;type&gt;:&lt;service&gt;:&lt;name&gt;&#x60; from &#x60;getQsBackups&#x60;), &#x60;password&#x60; (caller&#x27;s account login password — required for non-admin to confirm). Validates backup exists, caller&#x27;s password (when applicable), and that the QuickServer disk is large enough (size check skipped for ZFS). Queues &#x60;snapshot_restore&#x60; for ZFS or &#x60;restore&#x60; for swift/minio; allow up to 10 minutes. Returns: &#x60;{ text, queueId }&#x60;. Errors: 401, 404 if not owned, 409 if status !&#x3D; &#x60;active&#x60;, errors for invalid password, missing backup, or insufficient disk space. Siblings: &#x60;getQsBackups&#x60;, &#x60;getQsBackup&#x60; (create), &#x60;postVpsRestore&#x60;.
  Future<QueueResponse> postQuickServerRestore(RestoreRequest body, int id) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}/restore".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json","multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (backup != null) {
        hasFields = true;
        mp.fields['backup'] = parameterToString(backup);
      }
      if (password != null) {
        hasFields = true;
        mp.fields['password'] = parameterToString(password);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (backup != null)
        formParams['backup'] = parameterToString(backup);
if (password != null)
        formParams['password'] = parameterToString(password);
    }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'QueueResponse') as QueueResponse ;
    } else {
      return null;
    }
  }
  /// Validate a QuickServer order without charging or provisioning
  ///
  /// Dry-run the order payload before calling &#x60;addQs&#x60;. No invoice is created and no service is provisioned. Use to surface form errors, compute the price, and resolve the chosen &#x60;server&#x60;/&#x60;os&#x60;/&#x60;distro&#x60; against the master pool. Body (form): &#x60;server&#x60; (master ID), &#x60;password&#x60;, &#x60;os&#x60; (template), &#x60;comment&#x60;, &#x60;tos&#x60;. Returns the &#x60;validate_buy_qs&#x60; result with &#x60;continue&#x60; flag, normalized fields, &#x60;service_cost&#x60;, and &#x60;errors&#x60; array. Errors: 401 if unauthenticated; validation errors are returned in the body, not as 4xx. Siblings: &#x60;addQs&#x60; (commits the order), &#x60;getNewQs&#x60; (form metadata), &#x60;putVps&#x60; (VPS equivalent).
  Future putQs(QsOrderRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/qs/order".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = ["application/json"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'PUT',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          ;
    } else {
      return ;
    }
  }
  /// Cancel a QuickServer service at the end of the current billing cycle
  ///
  /// Schedules deprovisioning. The server keeps running until the current billing period ends, then is canceled and the recurring invoice stops. Path param: &#x60;id&#x60; (integer). Returns: &#x60;{ success: bool, text: string }&#x60;. Errors: 401 if unauthenticated, 404 if not owned by caller. Reversible only by support before the cycle closes — use &#x60;getQsInvoices&#x60; to check the next invoice date first. Siblings: &#x60;getQsInfo&#x60;, &#x60;VPSCancel&#x60; (VPS equivalent), &#x60;serversCancel&#x60; (dedicated equivalent).
  Future<InlineResponse20011> quickserversCancel(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'DELETE',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'InlineResponse20011') as InlineResponse20011 ;
    } else {
      return null;
    }
  }
  /// Update QuickServer order metadata or stored settings without OS impact
  ///
  /// Mutates QuickServer-level settings (comment, stored notes) without affecting the running OS. Path param: &#x60;id&#x60;. Body fields are module-specific and processed by the shared &#x60;View::go&#x60; handler. Returns: &#x60;SuccessTextResponse&#x60;. Errors: 401 if unauthenticated, 404 if not owned by caller. For server-side actions use the dedicated endpoints — hostname via &#x60;postQsChangeHostname&#x60;, password via &#x60;postQsChangeRootPassword&#x60;, OS via &#x60;postQsReinstallOs&#x60;. Siblings: &#x60;getQsInfo&#x60; (read), &#x60;quickserversCancel&#x60; (delete).
  Future<SuccessTextResponse> updateQsInfo(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/qs/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    
    List<String> contentTypes = [];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if(hasFields)
        postBody = mp;
    }
    else {
          }

    var response = await apiClient.invokeAPI(path,
                                             'POST',
                                             queryParams,
                                             postBody,
                                             headerParams,
                                             formParams,
                                             contentType,
                                             authNames);

    if(response.statusCode >= 400) {
      throw new ApiException(response.statusCode, response.body);
    } else if(response.body != null) {
      return
          apiClient.deserialize(response.body, 'SuccessTextResponse') as SuccessTextResponse ;
    } else {
      return null;
    }
  }
}
