part of swagger.api;



class PublicApi {
  final ApiClient apiClient;

  PublicApi([ApiClient apiClient]) : apiClient = apiClient ?? defaultApiClient;

  /// List enabled currency codes accepted for billing and preferences
  ///
  /// Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, plus the billing-preference endpoints under &#x60;/account/_*&#x60; and &#x60;/billing/_*&#x60;.  **Path/Query/Body:** None.  **Returns:** flat JSON array of ISO-4217 currency codes — e.g. &#x60;[\&quot;USD\&quot;, \&quot;EUR\&quot;, \&quot;GBP\&quot;, \&quot;INR\&quot;]&#x60;. Sourced from rows in the &#x60;currencies&#x60; table where &#x60;currency_enabled&#x3D;1&#x60;, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** &#x60;updateAccountInfo&#x60;. - **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;. 
  Future<List<String>> getAccountCurrencies() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/account/currencies".replaceAll("{format}","json");

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
  /// List supported UI locales with English and native display names
  ///
  /// Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP&#x27;s Punic locale data with &#x60;locale/google_langs.php&#x60; so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountCurrencies&#x60;, &#x60;updateAccountInfo&#x60; (consumes the chosen locale).  **Path/Query/Body:** None.  **Returns:** JSON object keyed by BCP-47-style locale code, with &#x60;{ name, local_name }&#x60; per entry — e.g.      {       \&quot;en\&quot;: { \&quot;name\&quot;: \&quot;English\&quot;, \&quot;local_name\&quot;: \&quot;English\&quot; },       \&quot;es\&quot;: { \&quot;name\&quot;: \&quot;Spanish\&quot;, \&quot;local_name\&quot;: \&quot;español\&quot; },       \&quot;fr\&quot;: { \&quot;name\&quot;: \&quot;French\&quot;, \&quot;local_name\&quot;: \&quot;français\&quot; }     }  &#x60;name&#x60; is the English label; &#x60;local_name&#x60; is the locale&#x27;s name in its own language (good for accessibility and avoiding the wrong-script problem).  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** &#x60;updateAccountInfo&#x60; (sets &#x60;locale&#x60;). - **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountCurrencies&#x60;. 
  Future<Map<String, InlineResponseMap200>> getAccountLocales() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/account/locales".replaceAll("{format}","json");

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
          new Map<String, InlineResponseMap200>.from(apiClient.deserialize(response.body, 'Map<String, InlineResponseMap200>')) ;
    } else {
      return null;
    }
  }
  /// Fetch a base64 JPEG captcha challenge for human verification
  ///
  /// Fetches a fresh captcha challenge image to display before submitting &#x60;submitSignup&#x60; (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: &#x60;getLoginInfo&#x60; (returns a captcha alongside other login-page data), &#x60;submitSignup&#x60; (consumes the answer), &#x60;submitLogin&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;{ captcha: string }&#x60; — &#x60;captcha&#x60; is a &#x60;data:image/jpeg;base64,...&#x60; URL ready to drop into an &#x60;&lt;img src&gt;&#x60;.  **Side effects:** the phrase is stored server-side in &#x60;$_SESSION[&#x27;captcha&#x27;]&#x60; (also aliased to the signup-flow key &#x60;$_SESSION[&#x27;captchaSignup&#x27;]&#x60; and forgot-password key &#x60;$_SESSION[&#x27;captchaFP&#x27;]&#x60;). The browser must send the same &#x60;PHPSESSID&#x60; cookie back when posting the answer.  **Charset:** 8 chars from &#x60;3456789ABCDEFGHJKLMNPQRSTWXY&#x60; — no ambiguous &#x60;0&#x60;/&#x60;1&#x60;/&#x60;I&#x60;/&#x60;O&#x60;/&#x60;2&#x60;/&#x60;Z&#x60;.  **Related calls:** - **Consumers:** &#x60;submitSignup&#x60;, &#x60;submitLogin&#x60;. - **One-shot login bootstrap:** &#x60;getLoginInfo&#x60;. answer in &#x60;captcha&#x60; field). 
  Future<CaptchaResponse> getCaptcha() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/captcha".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'CaptchaResponse') as CaptchaResponse ;
    } else {
      return null;
    }
  }
  /// List enabled countries keyed by ISO-2/ISO-3/numeric code
  ///
  /// Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in &#x60;country_t.enabled&#x60;. Sibling ops: &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;, &#x60;updateAccountInfo&#x60; (consumes the chosen country).  **Query parameters:** - &#x60;fetch_by&#x60; (string, optional) — one of &#x60;iso2&#x60; (default; two-letter codes like &#x60;US&#x60;, &#x60;GB&#x60;), &#x60;iso3&#x60; (three-letter like &#x60;USA&#x60;, &#x60;GBR&#x60;), or &#x60;numcode&#x60; (UN M49 numeric like &#x60;840&#x60;). Any other value silently falls back to &#x60;iso2&#x60;.  **Body:** None.  **Returns:** JSON object mapping the chosen key format to the country&#x27;s short name — e.g. &#x60;{ \&quot;AF\&quot;: \&quot;Afghanistan\&quot;, \&quot;US\&quot;: \&quot;United States\&quot;, \&quot;ZW\&quot;: \&quot;Zimbabwe\&quot; }&#x60;. Sourced from the &#x60;country_t&#x60; table, filtered to &#x60;enabled&#x3D;1&#x60;, ordered alphabetically by &#x60;short_name&#x60;.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** &#x60;updateAccountInfo&#x60;. - **Other preference catalogs:** &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;. 
  Future<Object> getCountries({ String fetchBy }) async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/account/countries".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
    if(fetchBy != null) {
      queryParams.addAll(_convertParametersForCollectionFormat("", "fetch_by", fetchBy));
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
          apiClient.deserialize(response.body, 'Object') as Object ;
    } else {
      return null;
    }
  }
  /// Discover available modules, service packages, categories, and types
  ///
  /// Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: &#x60;getNewVps&#x60;, &#x60;getNewWebsite&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewSsl&#x60;, &#x60;getNewLicense&#x60;, &#x60;getNewBackup&#x60;, &#x60;getNewQs&#x60;, &#x60;getNewServer&#x60; — each module&#x27;s catalog op for buyable-package details.  **Path/Query/Body:** None.  **Returns:** &#x60;{ modules, services, serviceTypes, serviceCategories }&#x60;. - &#x60;modules&#x60; (array) — enabled plugin modules (&#x60;vps&#x60;, &#x60;webhosting&#x60;, &#x60;domains&#x60;, &#x60;ssl&#x60;, etc.). - &#x60;services&#x60; (object) — map of &#x60;services_id&#x60; → row from the &#x60;services&#x60; table, filtered to &#x60;services_buyable&#x3D;1 AND services_hidden&#x3D;0&#x60;, with &#x60;services_ourcost&#x60; / &#x60;services_hidden&#x60; stripped, and &#x60;services_id&#x60; / &#x60;services_category&#x60; / &#x60;services_type&#x60; cast to int and &#x60;services_cost&#x60; cast to float. - &#x60;serviceTypes&#x60; (object) — joins service rows to human-readable type names. - &#x60;serviceCategories&#x60; (object) — joins service rows to category names.  **Auth:** None.  **Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.  **Related calls:** - **Module-specific order catalog:** &#x60;getNewVps&#x60;, &#x60;getNewWebsite&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewSsl&#x60;, &#x60;getNewLicense&#x60;, &#x60;getNewBackup&#x60;, &#x60;getNewQs&#x60;, &#x60;getNewServer&#x60;. - **Deeper health probe:** &#x60;pingServer&#x60;. 
  Future<ServicesInfo> getInfo() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/info".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'ServicesInfo') as ServicesInfo ;
    } else {
      return null;
    }
  }
  /// Fetch logo, captcha, language, and stats for rendering a login page
  ///
  /// Bootstraps an unauthenticated login page in one round-trip — branding logo, fresh captcha challenge, auto-detected user language, and live counts of VPS / websites / servers managed by the system (often used as marketing stats). Public — no auth required. Sibling ops: &#x60;submitLogin&#x60; (consume the captcha), &#x60;getCaptcha&#x60; (refresh captcha only), &#x60;getAccountLocales&#x60;, &#x60;submitSignup&#x60;.  **Path/Query/Body:** None.  **Returns** &#x60;{ logo, captcha, language, counts }&#x60;: - &#x60;logo&#x60; (string) — URL; uses the &#x60;LOGO&#x60; constant or a default. - &#x60;captcha&#x60; (string) — &#x60;data:image/jpeg;base64,...&#x60; image; phrase is stored server-side under &#x60;$_SESSION[&#x27;captcha&#x27;]&#x60; (also aliased to &#x60;$_SESSION[&#x27;captchaSignup&#x27;]&#x60; and &#x60;$_SESSION[&#x27;captchaFP&#x27;]&#x60;) — the browser&#x27;s &#x60;PHPSESSID&#x60; cookie carries the phrase to &#x60;submitLogin&#x60; / &#x60;submitSignup&#x60;. - &#x60;language&#x60; (string) — BCP-47 locale (e.g. &#x60;en-US&#x60;). - &#x60;counts&#x60; (object) — &#x60;{ vps: int, websites: int, servers: int }&#x60; from live &#x60;SELECT COUNT(*)&#x60; on the underlying tables.  **Auth:** None.  **Errors:** &#x60;403&#x60; per &#x60;LoginResponseError&#x60; if a stricter login gate is configured upstream.  **Related calls:** - **Next:** &#x60;submitLogin&#x60; (login form post) or &#x60;submitSignup&#x60; (new account). - **Captcha refresh only:** &#x60;getCaptcha&#x60;. - **OAuth alternative:** &#x60;getOauthRedirect&#x60;. 
  Future<LoginInfo> getLoginInfo() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/login".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'LoginInfo') as LoginInfo ;
    } else {
      return null;
    }
  }
  /// List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
  ///
  /// Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from &#x60;mynew.interserver.net/ajax/server_a.php&#x60;. Returns: array of &#x60;{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }&#x60;. The &#x60;server_id&#x60; is the marketplace asset id — feed it into &#x60;buyItNowServerOrder&#x60; (GET options for asset &#x60;?a&#x3D;&lt;id&gt;&#x60;) and &#x60;placeBuyNowServer&#x60; (POST to commit). Errors: 401 if session expired. Sibling ops: &#x60;buyItNowServerOrder&#x60; (configure asset), &#x60;placeBuyNowServer&#x60; (purchase), &#x60;getNewServer&#x60;/&#x60;addServer&#x60; (custom-spec build, not pre-built), &#x60;getServerList&#x60; (already-owned servers).
  Future<BuyItNowList> getMPServers() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/buy_now_servers_list".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'BuyItNowList') as BuyItNowList ;
    } else {
      return null;
    }
  }
  /// Begin OAuth login flow — redirect user to provider for authentication
  ///
  /// Use as step 1 of social login. Navigate the browser (typically a popup) to &#x60;/apiv2/oauth?provider&#x3D;X&#x60; so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required. Query params: &#x60;provider&#x60; (required, case-sensitive: &#x60;Google&#x60;/&#x60;GitHub&#x60;/&#x60;Facebook&#x60;/&#x60;Twitter&#x60;), &#x60;origin&#x60; (optional, opener window origin used to target postMessage instead of &#x60;*&#x60;). The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: &#x60;oauth_success&#x60; (logged in), &#x60;oauth_2fa_required&#x60; (call &#x60;patchOauthTwoFactor&#x60; with the &#x60;oauth_token&#x60;), &#x60;oauth_link_required&#x60; (call &#x60;postOauthCallback&#x60; to link or create), or &#x60;oauth_error&#x60;. Siblings: &#x60;postOauthCallback&#x60;, &#x60;patchOauthTwoFactor&#x60;, &#x60;submitLogin&#x60; (password flow).
  Future<InlineResponse2006> getOauthRedirect(String provider) async {
    Object postBody = null;

    // verify required params are set
    if(provider == null) {
     throw new ApiException(400, "Missing required param: provider");
    }

    // create path and map variables
    String path = "/oauth".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "provider", provider));
    
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
          apiClient.deserialize(response.body, 'InlineResponse2006') as InlineResponse2006 ;
    } else {
      return null;
    }
  }
  /// List all PHP timezone identifiers usable on accounts and services
  ///
  /// Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP&#x27;s &#x60;DateTimeZone::listIdentifiers()&#x60; so the catalog is large (~400+ zones, including deprecated aliases like &#x60;US/Eastern&#x60;). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: &#x60;postVpsChangeTimezone&#x60;, &#x60;postQsChangeTimezone&#x60;, &#x60;getCountries&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;.  **Path/Query/Body:** None.  **Returns:** flat JSON array of stable IANA tz strings, e.g. &#x60;[\&quot;Africa/Abidjan\&quot;, \&quot;America/New_York\&quot;, \&quot;Asia/Tokyo\&quot;, \&quot;Europe/London\&quot;, \&quot;UTC\&quot;]&#x60;. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.  **Auth:** None.  **Errors:** No documented error path under normal operation.  **Related calls:** - **Apply selection to a service:** &#x60;postVpsChangeTimezone&#x60; (&#x60;/vps/{id}/change_timezone&#x60;), &#x60;postQsChangeTimezone&#x60; (&#x60;/qs/{id}/change_timezone&#x60;). - **Apply to account profile:** &#x60;updateAccountInfo&#x60; (sets &#x60;timezone&#x60;). - **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;. 
  Future<List<String>> getTimezones() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/account/timezones".replaceAll("{format}","json");

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
  /// Submit 2FA code to finish OAuth login when account has 2FA enabled
  ///
  /// Final step of the OAuth login flow when the account has 2FA enabled. Called after &#x60;postOauthCallback&#x60; (or the popup&#x27;s &#x60;window.postMessage()&#x60; handshake) returned &#x60;2fa_required&#x60;. Verifies the TOTP against the account&#x27;s stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: &#x60;postOauthCallback&#x60; (prior step), &#x60;getOauthRedirect&#x60; (entry point), &#x60;getAccountTfaSetup&#x60; (enroll 2FA), &#x60;submitLogin&#x60;.  **Body fields** (JSON or form): - &#x60;code&#x60; (string, required) — 6-digit TOTP from the authenticator app. - &#x60;account_id&#x60; (integer, required) — returned by the prior &#x60;postOauthCallback&#x60;. - &#x60;oauth_token&#x60; (string, optional) — signed token from the original &#x60;postMessage&#x60; payload, type &#x60;2fa&#x60;, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.  **Returns:** &#x60;{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }&#x60;.  **Errors:** - &#x60;400&#x60; — invalid / expired &#x60;oauth_token&#x60; or no pending verification. - &#x60;401&#x60; — invalid 2FA code. - &#x60;409&#x60; — 2FA not enabled on the account. - &#x60;422&#x60; — missing &#x60;code&#x60;.  **Related calls:** - **Prerequisite:** &#x60;postOauthCallback&#x60;. - **Enroll 2FA on the account first:** &#x60;getAccountTfaSetup&#x60; → &#x60;updateAccountTfa&#x60;. - **Alternate login:** &#x60;submitLogin&#x60;. 
  Future<InlineResponse2008> patchOauthTwoFactor(OauthBody2 body) async {
    Object postBody = body;

    // verify required params are set
    if(body == null) {
     throw new ApiException(400, "Missing required param: body");
    }

    // create path and map variables
    String path = "/oauth".replaceAll("{format}","json");

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
      if (accountId != null) {
        hasFields = true;
        mp.fields['account_id'] = parameterToString(accountId);
      }
      if (code != null) {
        hasFields = true;
        mp.fields['code'] = parameterToString(code);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (accountId != null)
        formParams['account_id'] = parameterToString(accountId);
if (code != null)
        formParams['code'] = parameterToString(code);
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
          apiClient.deserialize(response.body, 'InlineResponse2008') as InlineResponse2008 ;
    } else {
      return null;
    }
  }
  /// Liveness check — returns the JSON string \&quot;pong\&quot; to confirm API is up
  ///
  /// Trivial GET that returns the JSON string &#x60;\&quot;pong\&quot;&#x60; so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: &#x60;getInfo&#x60; (richer probe that touches MySQL).  **Path/Query/Body:** None.  **Returns:** JSON-encoded string &#x60;\&quot;pong\&quot;&#x60; with HTTP 200.  **Auth:** None (public endpoint).  **Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.  **Use when:** - Bootstrapping a new client and want to confirm the API is reachable. - Smoke-testing in CI/health-check pipelines. - Diagnosing connectivity issues before higher-cost calls.  **Related calls:** - **Deeper health probe:** &#x60;getInfo&#x60; (exercises the DB layer). 
  Future<String> pingServer() async {
    Object postBody = null;

    // verify required params are set

    // create path and map variables
    String path = "/ping".replaceAll("{format}","json");

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
          apiClient.deserialize(response.body, 'String') as String ;
    } else {
      return null;
    }
  }
  /// Complete OAuth login by linking provider to existing or new account
  ///
  /// Step 3 of the OAuth login flow. Called after &#x60;getOauthRedirect&#x60; returned &#x60;oauth_link_required&#x60; via the popup&#x27;s &#x60;window.postMessage()&#x60;. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: &#x60;patchOauthTwoFactor&#x60; (2FA follow-up), &#x60;getOauthRedirect&#x60; (start the flow), &#x60;submitSignup&#x60;, &#x60;submitLogin&#x60;.  **Body fields** (JSON or form): - &#x60;oauth_token&#x60; (string, required) — signed token from the popup&#x27;s &#x60;window.postMessage()&#x60; payload; 10-minute expiry. - &#x60;login&#x60; (string, required) — email. - &#x60;password&#x60; (string, required). - &#x60;create&#x60; (boolean, optional) — set &#x60;true&#x60; to create a new account instead of linking. - &#x60;email_confirmation&#x60; (string, conditional) — 8-char code emailed on the first &#x60;create&#x3D;true&#x60; attempt; server returns 422 &#x60;email_verification_required&#x60; until provided. - &#x60;tfa&#x60; (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 &#x60;2fa_required&#x60;).  **Returns:** &#x60;{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }&#x60;.  **Errors:** - &#x60;400&#x60; — invalid / expired &#x60;oauth_token&#x60;. - &#x60;401&#x60; — bad password or wrong 2FA code. - &#x60;409&#x60; — account already exists (when &#x60;create: true&#x60;). - &#x60;422&#x60; — missing field; &#x60;email_verification_required&#x60;; &#x60;2fa_required&#x60;.  **Related calls:** - **Prerequisite:** &#x60;getOauthRedirect&#x60; to initiate the popup flow. - **Follow-up when 2FA required:** &#x60;patchOauthTwoFactor&#x60;. - **Alternate entry points:** &#x60;submitLogin&#x60;, &#x60;submitSignup&#x60;. 
  Future<InlineResponse2007> postOauthCallback(String provider, { OauthBody body }) async {
    Object postBody = body;

    // verify required params are set
    if(provider == null) {
     throw new ApiException(400, "Missing required param: provider");
    }

    // create path and map variables
    String path = "/oauth".replaceAll("{format}","json");

    // query params
    List<QueryParam> queryParams = [];
    Map<String, String> headerParams = {};
    Map<String, String> formParams = {};
      queryParams.addAll(_convertParametersForCollectionFormat("", "provider", provider));
    
    List<String> contentTypes = ["application/json","multipart/form-data"];

    String contentType = contentTypes.length > 0 ? contentTypes[0] : "application/json";
    List<String> authNames = ["apiKeyAuth", "sessionIdCookieAuth", "sessionIdHeaderAuth"];

    if(contentType.startsWith("multipart/form-data")) {
      bool hasFields = false;
      MultipartRequest mp = new MultipartRequest(null, null);
      if (provider != null) {
        hasFields = true;
        mp.fields['provider'] = parameterToString(provider);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (provider != null)
        formParams['provider'] = parameterToString(provider);
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
          apiClient.deserialize(response.body, 'InlineResponse2007') as InlineResponse2007 ;
    } else {
      return null;
    }
  }
  /// Authenticate with email + password and return a session token
  ///
  /// Primary password→session-token exchange. Pass the returned session id back as the &#x60;sessionid&#x60; HTTP header on subsequent calls. Public — no auth required. Sibling ops: &#x60;getLoginInfo&#x60; (captcha + branding), &#x60;getOauthRedirect&#x60; (social login), &#x60;submitSignup&#x60;, &#x60;updateAccountApiKey&#x60; (rotate API key once logged in).  **Body fields** (JSON or form): - &#x60;login&#x60; (string, required) — email. - &#x60;passwd&#x60; (string, required) — password. - &#x60;tfa&#x60; (string, conditional) — 6-digit TOTP when the account has 2FA enabled. - &#x60;verify&#x60; (string, conditional) — 8-char email-confirmation code returned via email when logging in from a new IP. Triggered automatically when the IP has no &#x60;acquittal&#x60; trial record yet (see &#x60;Trial&#x60; ORM, type &#x60;verify_email&#x60;). - &#x60;remember&#x60; (boolean / &#x60;&#x27;true&#x27;&#x60; / &#x60;&#x27;yes&#x27;&#x60; / &#x60;&#x27;1&#x27;&#x60;, optional) — extends cookie lifetime.  **Returns:** &#x60;{ sessionId, account_id, account_lid, ima, name, gravatar }&#x60;. The &#x60;sessionId&#x60; value is the credential to send on every subsequent authenticated request.  **Errors:** - &#x60;401&#x60; — bad credentials or wrong 2FA / verify code. - &#x60;422&#x60; — missing &#x60;login&#x60; / &#x60;passwd&#x60; / &#x60;tfa&#x60; / &#x60;verify&#x60;; response body&#x27;s &#x60;field&#x60; indicates which input is required next. - &#x60;429&#x60; — too many failed attempts (login-log rate-limit) or max code retries reached.  **Related calls:** - **Prerequisite:** &#x60;getLoginInfo&#x60; to fetch the captcha challenge and counts. - **Alternate:** &#x60;getOauthRedirect&#x60; → &#x60;postOauthCallback&#x60; for social login. - **After login:** &#x60;updateAccountApiKey&#x60;. 
  Future<LoginSuccessResponse> submitLogin(String login, String passwd, String remember, LoginSubmissionExampleGrecaptcharesponse gRecaptchaResponse, String tfa) async {
    Object postBody = body;

    // verify required params are set
    if(login == null) {
     throw new ApiException(400, "Missing required param: login");
    }
    if(passwd == null) {
     throw new ApiException(400, "Missing required param: passwd");
    }
    if(remember == null) {
     throw new ApiException(400, "Missing required param: remember");
    }
    if(gRecaptchaResponse == null) {
     throw new ApiException(400, "Missing required param: gRecaptchaResponse");
    }
    if(tfa == null) {
     throw new ApiException(400, "Missing required param: tfa");
    }

    // create path and map variables
    String path = "/login".replaceAll("{format}","json");

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
      if (login != null) {
        hasFields = true;
        mp.fields['login'] = parameterToString(login);
      }
      if (passwd != null) {
        hasFields = true;
        mp.fields['passwd'] = parameterToString(passwd);
      }
      if (remember != null) {
        hasFields = true;
        mp.fields['remember'] = parameterToString(remember);
      }
      if (gRecaptchaResponse != null) {
        hasFields = true;
        mp.fields['g-recaptcha-response'] = parameterToString(gRecaptchaResponse);
      }
      if (tfa != null) {
        hasFields = true;
        mp.fields['tfa'] = parameterToString(tfa);
      }
      if(hasFields)
        postBody = mp;
    }
    else {
      if (login != null)
        formParams['login'] = parameterToString(login);
if (passwd != null)
        formParams['passwd'] = parameterToString(passwd);
if (remember != null)
        formParams['remember'] = parameterToString(remember);
if (gRecaptchaResponse != null)
        formParams['g-recaptcha-response'] = parameterToString(gRecaptchaResponse);
if (tfa != null)
        formParams['tfa'] = parameterToString(tfa);
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
          apiClient.deserialize(response.body, 'LoginSuccessResponse') as LoginSuccessResponse ;
    } else {
      return null;
    }
  }
  /// Create a new customer account (email + password + captcha + ToS)
  ///
  /// First step of the signup flow before adding payment or services. Public — no auth required. The account is created in &#x60;pending&#x60; state and moved to &#x60;active&#x60; once the email-confirmation code is verified; an &#x60;account.activated&#x60; event then fires (welcome email + admin notification). MaxMind GeoIP populates &#x60;country&#x60; from the client IP. Sibling ops: &#x60;submitLogin&#x60;, &#x60;getCaptcha&#x60;, &#x60;getLoginInfo&#x60;, &#x60;addBillingPrepay&#x60;, plus the &#x60;add*&#x60; service ops to follow up after signup.  **Body fields** (JSON or form): - &#x60;login&#x60; (string, required) — email; must be valid and not an alias like &#x60;+tag&#x60; or dotted gmail. - &#x60;passwd&#x60; (string, required) — 4–64 chars. - &#x60;tos&#x60; (truthy, required) — &#x60;yes&#x60; / &#x60;true&#x60; / &#x60;1&#x60;. - &#x60;captcha&#x60; (string, required) — answer to the phrase from &#x60;getCaptcha&#x60; or &#x60;getLoginInfo&#x60; (server reads the phrase from &#x60;$_SESSION[&#x27;captchaSignup&#x27;]&#x60;). - &#x60;email_confirmation&#x60; (string, conditional) — 8-char code emailed on the first attempt; server returns &#x60;400 { field: &#x27;email_confirmation&#x27; }&#x60; until provided. - &#x60;remember&#x60; (boolean / &#x60;&#x27;true&#x27;&#x60; / &#x60;&#x27;yes&#x27;&#x60; / &#x60;&#x27;1&#x27;&#x60;, optional) — 256-day cookie.  **Returns:** &#x60;{ sessionId, account_id, account_lid, ima }&#x60;.  **Errors:** - &#x60;400&#x60; — missing or invalid &#x60;login&#x60; / &#x60;passwd&#x60; / &#x60;tos&#x60; / &#x60;captcha&#x60; / &#x60;email_confirmation&#x60;; blocked-domain or aliased-email; account already exists. - &#x60;402&#x60; per &#x60;LoginResponseError&#x60; — signup gate misconfigured upstream.  **Related calls:** - **Prerequisite:** &#x60;getCaptcha&#x60; or &#x60;getLoginInfo&#x60;. - **After signup:** &#x60;submitLogin&#x60;, &#x60;addBillingPrepay&#x60;, plus any &#x60;add*&#x60; order op. 
  Future submitSignup({ LoginSubmissionExample body }) async {
    Object postBody = body;

    // verify required params are set

    // create path and map variables
    String path = "/signup".replaceAll("{format}","json");

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
          ;
    } else {
      return ;
    }
  }
}
