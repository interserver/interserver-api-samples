part of swagger.api;



class LicensesApi {
  final ApiClient apiClient;

  LicensesApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// Order a new software license and create the recurring invoice
  ///
  /// Places an order for a new software license (cPanel, Plesk, LiteSpeed, etc.). Re-runs validate_buy_license then place_buy_license, which creates the repeat_invoices row, the first invoice, and queues payment processing. Always call putLicenses first to surface validation errors cheaply; addLicense re-validates and returns error JSON if continue&#x3D;false. Body (form or JSON): package (services_id from getNewLicense), ip (target server IP the license binds to), frequency (billing months), coupon, comment, tos (truthy). No path params. Returns ServiceOrderPostResponse with the new service id and invoice info. Errors: 401 unauthenticated; validation or payment failures return json_error with the underlying message. Caveat: provisioning is asynchronous — poll getLicenseInfo for status.  Sibling ops: &#x60;getNewLicense&#x60; (catalog), &#x60;putLicenses&#x60; (validate), &#x60;getLicenseInfo&#x60; (poll status), &#x60;getLicenseInvoices&#x60;, &#x60;getBillingInvoice&#x60; + &#x60;initiatePayment&#x60; (settle invoice), &#x60;licensesCancel&#x60;.
  Future<ServiceOrderPostResponse> addLicense(LicenseOrderRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/licenses/order".replaceAll("{format}","json");

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
  /// Get full details for one license including status, IP, and links
  ///
  /// Returns rich detail for a single license service: serviceInfo row (license_id, hostname, license_ip, license_status, license_type), the underlying services row (name, cost, frequency), client_links for self-service actions (change IP, cancel, resend welcome email, view invoices), and provisioning state. Use after getLicenseList to drill into a specific license, or as the canonical lookup before postLicenseChangeIp / licensesCancel / getLicenseInvoices. Path: id (license_id from list). No body. Errors: 401 unauthenticated; 404 if id is invalid or owned by a different customer. Caveat: admin_links/settings/csrf are stripped — use admin endpoints for those. Sibling endpoints: updateLicenseInfo (mutate fields), postLicenseChangeIp.
  Future<License> getLicenseInfo(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/licenses/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
          apiClient.deserialize(response.body, 'License') as License ;
    } else {
      return null;
    }
  }
  /// List all billing invoices tied to one software license service
  ///
  /// Returns the full invoice history for a single license service: the original setup invoice plus every recurring renewal invoice generated by the repeat_invoices entry. Use this for billing reconciliation, to display past charges in the customer UI, or to confirm a renewal posted before contacting support. Path: id (license_id from getLicenseList). No body. Returns ChargeInvoiceRows: an array of invoice rows with id, date, amount, paid status, and payment method. Errors: 401 unauthenticated; returns success&#x3D;false with HTTP 400 if the service id is invalid or owned by a different customer. Caveat: only invoices linked via repeat_invoices_id are included — manual one-off charges from staff may not appear here. Sibling endpoints: getLicenseInfo, licensesCancel.
  Future<ChargeInvoiceRows> getLicenseInvoices(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/licenses/{id}/invoices".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
  /// List all software licenses owned by the authenticated customer
  ///
  /// Lists every software license service (cPanel, Plesk, LiteSpeed, CloudLinux, etc.) on the authenticated customer&#x27;s account. Use this as the entry point for license management to discover the license_id needed by every other Licenses endpoint. Returns an array of rows including license_id, hostname, bound IP, services_name (license type), recurring cost, status (pending/active/canceled), and last invoice date/paid state. No path or query parameters; the customer scope is taken from the session. Errors: 401 when the session is missing or expired. Caveats: list is unpaginated, includes canceled rows so callers should filter by status. Sibling: getLicenseInfo for full details on one license.
  Future<List<LicenseRow>> getLicenseList() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/licenses".replaceAll("{format}","json");

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
        (apiClient.deserialize(response.body, 'List<LicenseRow>') as List).map((item) => item as LicenseRow).toList();
    } else {
      return null;
    }
  }
  /// Resend the license welcome email with the key and activation steps
  ///
  /// Resends the welcome email for an active license to the account email on file. The email contains the license key, the bound IP, and vendor-specific activation instructions (e.g. cPanel /usr/local/cpanel/cpkeyclt, LiteSpeed lswsctrl). Use this when the customer lost the original email or rotated mailboxes — the key itself is unchanged. Path: id (license_id). No body. Returns SuccessTextResponse with a translated confirmation. Errors: 401 unauthenticated; 404 if the id is invalid or not owned by the session customer; 409 if the license status is not active (cancelled licenses cannot resend). Caveat: delivery is best-effort — check the email log if it does not arrive. Sibling endpoints: getLicenseInfo, postLicenseChangeIp.
  Future<SuccessTextResponse> getLicensesWelcomeEmail(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/licenses/{id}/welcome_email".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
          apiClient.deserialize(response.body, 'SuccessTextResponse') as SuccessTextResponse ;
    } else {
      return null;
    }
  }
  /// Get available license types, packages, and pricing for ordering
  ///
  /// Returns the catalog needed to build the license-order form: service categories (category_id-&gt;name), buyable service types (services_id, name, cost, billing frequency), package costs map keyed by services_id, the customer&#x27;s currency symbol, and per-package field metadata via get_license_fields. Use this before addLicense to render type/package pickers and to validate a chosen package_id exists and is buyable (services_hidden&#x3D;0, services_buyable&#x3D;1). No path params or body. Returns LicensesOrder schema. Errors: 401 if unauthenticated. Sibling endpoints: putLicenses (validate selection), addLicense (place order). Note: pricing is converted to the session currency; coupon/IP/frequency are evaluated in the validate step, not here.
  Future<LicensesOrder> getNewLicense() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/licenses/order".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'LicensesOrder') as LicensesOrder ;
    } else {
      return null;
    }
  }
  /// Cancel a license service and stop future billing (irreversible)
  ///
  /// Cancels a license service: invokes cancel_service which marks the service canceled, deactivates the license key with the upstream vendor, and stops the recurring invoice so no further charges occur. Use carefully — once vendor-side deactivation propagates the key stops working on the bound machine. Path: id (license_id from getLicenseList). No body. Returns LicensesCancelResponse with success and a translated text message. Errors: 401 unauthenticated; the underlying handler returns success&#x3D;false JSON if the service id is invalid or cancellation fails (contact support path). Caveats: no prorated refund by default; pre-paid time is forfeited per TOS. Sibling endpoints: getLicenseInfo, getLicenseInvoices for billing history before cancelling.
  Future<InlineResponse2005> licensesCancel(int id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/licenses/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
          apiClient.deserialize(response.body, 'InlineResponse2005') as InlineResponse2005 ;
    } else {
      return null;
    }
  }
  /// Rebind a license to a new IP address (may incur a vendor fee)
  ///
  /// Changes the IP address that the license is bound to and triggers re-issuance with the upstream vendor (cPanel store, LiteSpeed key server, Plesk, etc.). The service must be active. Use getLicenseInfo first to read the current license_ip, then submit the new IP. Path: id (license_id). Body (JSON or multipart): IpObject with the new ip field. Returns SuccessTextResponse on success. Errors: 401 unauthenticated; 404 invalid id or not owned; 409 if status !&#x3D; active; 422-style failures from the vendor are returned via json_error with the upstream status_text. Caveats: many vendors charge a per-change fee and rate-limit changes (e.g. cPanel allows limited free changes per period); the new IP must be reachable for license verification. Sibling: updateLicenseInfo.
  Future<SuccessTextResponse> postLicenseChangeIp(IpObject body, int id) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/licenses/{id}/change_ip".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
      if (ip != null) {
        hasFields = true;
        mp.fields['ip'] = parameterToString(ip);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (ip != null)
        formParams['ip'] = parameterToString(ip);
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
  /// Validate a software license order before placing it (dry run preview)
  ///
  /// Dry-runs validate_buy_license against the same payload addLicense will accept, returning a structured result with continue&#x3D;true/false plus errors[], normalized package, ip, service_cost, original_cost, coupon_code, custid, currency and service_extra. Always call this before addLicense to surface package/IP/coupon/TOS issues without creating an invoice. Body fields (form or JSON): package (services_id), ip, frequency (billing cycle months), coupon, comment, tos. No path params. Returns the validation object. Errors: 401 unauthenticated; 422-style errors are returned inside the body with continue&#x3D;false rather than as HTTP errors. Caveat: a valid PUT does not reserve inventory; addLicense re-validates. Sibling: addLicense, getNewLicense.
  Future putLicenses(LicenseOrderRequest body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/licenses/order".replaceAll("{format}","json");

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
  /// Update mutable fields on a license service (e.g. assigned IP)
  ///
  /// Updates settings on an existing license service. The primary mutable field is the bound IP, but the endpoint shares routing with View::go so other future fields flow through here. For IP changes prefer postLicenseChangeIp which has explicit semantics and triggers vendor rebinding. Path: id (license_id). Body: fields to update (form or JSON); shape varies by license type. Returns SuccessTextResponse. Errors: 401 unauthenticated; 404 if id is invalid or not owned; 409 if license is not active. Caveats: vendor-side propagation (cPanel store, LiteSpeed key server, etc.) is asynchronous; some IP/hostname changes incur a fee per vendor policy. Sibling: getLicenseInfo (read), postLicenseChangeIp (dedicated).
  Future<SuccessTextResponse> updateLicenseInfo(String id) async {
    Object postBody = null;

    // verify required params are set
    if(id == null) {
     throw new ApiException(400, "Missing required param: id");
    }

    // create path and map variables
    String path = "/licenses/{id}".replaceAll("{format}","json").replaceAll("{" + "id" + "}", id.toString());

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
