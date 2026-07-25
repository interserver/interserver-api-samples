//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:interserver_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:interserver_api/lib/model/buy_it_now_list.dart';
import 'package:interserver_api/lib/model/captcha_response.dart';
import 'package:interserver_api/lib/model/get_account_info401_response.dart';
import 'package:interserver_api/lib/model/get_account_locales200_response_value.dart';
import 'package:interserver_api/lib/model/get_oauth_redirect200_response.dart';
import 'package:interserver_api/lib/model/login_error_response.dart';
import 'package:interserver_api/lib/model/login_info.dart';
import 'package:interserver_api/lib/model/login_submission_example.dart';
import 'package:interserver_api/lib/model/login_submission_example_g_recaptcha_response.dart';
import 'package:interserver_api/lib/model/login_success_response.dart';
import 'package:interserver_api/lib/model/patch_oauth_two_factor200_response.dart';
import 'package:interserver_api/lib/model/patch_oauth_two_factor_request.dart';
import 'package:interserver_api/lib/model/post_oauth_callback200_response.dart';
import 'package:interserver_api/lib/model/post_oauth_callback_request.dart';
import 'package:interserver_api/lib/model/services_info.dart';

class PublicApi {

  final Dio _dio;

  const PublicApi(this._dio);

  /// List enabled currency codes accepted for billing and preferences
  /// Populates a currency selector on signup, billing-preferences, or invoice-display forms. Public — no auth required. The list changes only when an admin enables/disables a currency — cache client-side. Sibling ops: &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, plus the billing-preference endpoints under &#x60;/account/_*&#x60; and &#x60;/billing/_*&#x60;.  **Path/Query/Body:** None.  **Returns:** flat JSON array of ISO-4217 currency codes — e.g. &#x60;[\&quot;USD\&quot;, \&quot;EUR\&quot;, \&quot;GBP\&quot;, \&quot;INR\&quot;]&#x60;. Sourced from rows in the &#x60;currencies&#x60; table where &#x60;currency_enabled&#x3D;1&#x60;, in the natural row order. The endpoint returns codes only — for symbols, decimals, or exchange rates use a separate currency-detail endpoint or a static client-side map.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** &#x60;updateAccountInfo&#x60;. - **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<String>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<String>>> getAccountCurrencies({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/account/currencies';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<String>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<String>, String>(rawData, 'List<String>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<String>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// List supported UI locales with English and native display names
  /// Renders the language-picker for account preferences or login pages. Public — no auth required. Cross-references PHP&#39;s Punic locale data with &#x60;locale/google_langs.php&#x60; so only locales with Google Translate support are returned. Result is essentially static — cache client-side. Sibling ops: &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountCurrencies&#x60;, &#x60;updateAccountInfo&#x60; (consumes the chosen locale).  **Path/Query/Body:** None.  **Returns:** JSON object keyed by BCP-47-style locale code, with &#x60;{ name, local_name }&#x60; per entry — e.g.      {       \&quot;en\&quot;: { \&quot;name\&quot;: \&quot;English\&quot;, \&quot;local_name\&quot;: \&quot;English\&quot; },       \&quot;es\&quot;: { \&quot;name\&quot;: \&quot;Spanish\&quot;, \&quot;local_name\&quot;: \&quot;español\&quot; },       \&quot;fr\&quot;: { \&quot;name\&quot;: \&quot;French\&quot;, \&quot;local_name\&quot;: \&quot;français\&quot; }     }  &#x60;name&#x60; is the English label; &#x60;local_name&#x60; is the locale&#39;s name in its own language (good for accessibility and avoiding the wrong-script problem).  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** &#x60;updateAccountInfo&#x60; (sets &#x60;locale&#x60;). - **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getTimezones&#x60;, &#x60;getAccountCurrencies&#x60;. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Map<String, GetAccountLocales200ResponseValue>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Map<String, GetAccountLocales200ResponseValue>>> getAccountLocales({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/account/locales';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Map<String, GetAccountLocales200ResponseValue>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<Map<String, GetAccountLocales200ResponseValue>, GetAccountLocales200ResponseValue>(rawData, 'Map<String, GetAccountLocales200ResponseValue>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Map<String, GetAccountLocales200ResponseValue>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Fetch a base64 JPEG captcha challenge for human verification
  /// Fetches a fresh captcha challenge image to display before submitting &#x60;submitSignup&#x60; (or any unauthenticated form that needs human verification). Public endpoint — no authentication required. Sibling ops: &#x60;getLoginInfo&#x60; (returns a captcha alongside other login-page data), &#x60;submitSignup&#x60; (consumes the answer), &#x60;submitLogin&#x60;.  **Path/Query/Body:** None.  **Returns:** &#x60;{ captcha: string }&#x60; — &#x60;captcha&#x60; is a &#x60;data:image/jpeg;base64,...&#x60; URL ready to drop into an &#x60;&lt;img src&gt;&#x60;.  **Side effects:** the phrase is stored server-side in &#x60;$_SESSION[&#39;captcha&#39;]&#x60; (also aliased to the signup-flow key &#x60;$_SESSION[&#39;captchaSignup&#39;]&#x60; and forgot-password key &#x60;$_SESSION[&#39;captchaFP&#39;]&#x60;). The browser must send the same &#x60;PHPSESSID&#x60; cookie back when posting the answer.  **Charset:** 8 chars from &#x60;3456789ABCDEFGHJKLMNPQRSTWXY&#x60; — no ambiguous &#x60;0&#x60;/&#x60;1&#x60;/&#x60;I&#x60;/&#x60;O&#x60;/&#x60;2&#x60;/&#x60;Z&#x60;.  **Related calls:** - **Consumers:** &#x60;submitSignup&#x60;, &#x60;submitLogin&#x60;. - **One-shot login bootstrap:** &#x60;getLoginInfo&#x60;. answer in &#x60;captcha&#x60; field). 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CaptchaResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CaptchaResponse>> getCaptcha({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/captcha';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    CaptchaResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<CaptchaResponse, CaptchaResponse>(rawData, 'CaptchaResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CaptchaResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// List enabled countries keyed by ISO-2/ISO-3/numeric code
  /// Populates country dropdowns in account registration, billing-address forms, and domain/whois contact forms. Public — no auth required. Disabled countries (e.g. embargoed jurisdictions) are excluded — admins toggle this in &#x60;country_t.enabled&#x60;. Sibling ops: &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;, &#x60;updateAccountInfo&#x60; (consumes the chosen country).  **Query parameters:** - &#x60;fetch_by&#x60; (string, optional) — one of &#x60;iso2&#x60; (default; two-letter codes like &#x60;US&#x60;, &#x60;GB&#x60;), &#x60;iso3&#x60; (three-letter like &#x60;USA&#x60;, &#x60;GBR&#x60;), or &#x60;numcode&#x60; (UN M49 numeric like &#x60;840&#x60;). Any other value silently falls back to &#x60;iso2&#x60;.  **Body:** None.  **Returns:** JSON object mapping the chosen key format to the country&#39;s short name — e.g. &#x60;{ \&quot;AF\&quot;: \&quot;Afghanistan\&quot;, \&quot;US\&quot;: \&quot;United States\&quot;, \&quot;ZW\&quot;: \&quot;Zimbabwe\&quot; }&#x60;. Sourced from the &#x60;country_t&#x60; table, filtered to &#x60;enabled&#x3D;1&#x60;, ordered alphabetically by &#x60;short_name&#x60;.  **Auth:** None.  **Errors:** No documented error path.  **Related calls:** - **Apply to account profile:** &#x60;updateAccountInfo&#x60;. - **Other preference catalogs:** &#x60;getTimezones&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;. 
  ///
  /// Parameters:
  /// * [fetchBy] - Get countries by iso2 or iso3 or numcode
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Object] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Object>> getCountries({ 
    String? fetchBy,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/account/countries';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (fetchBy != null) r'fetch_by': fetchBy,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    Object? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<Object, Object>(rawData, 'Object', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Object>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Discover available modules, service packages, categories, and types
  /// Enumerates what services this MyAdmin install sells before placing orders or building a signup UI. Public — no auth required. Sibling ops: &#x60;getNewVps&#x60;, &#x60;getNewWebsite&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewSsl&#x60;, &#x60;getNewLicense&#x60;, &#x60;getNewBackup&#x60;, &#x60;getNewQs&#x60;, &#x60;getNewServer&#x60; — each module&#39;s catalog op for buyable-package details.  **Path/Query/Body:** None.  **Returns:** &#x60;{ modules, services, serviceTypes, serviceCategories }&#x60;. - &#x60;modules&#x60; (array) — enabled plugin modules (&#x60;vps&#x60;, &#x60;webhosting&#x60;, &#x60;domains&#x60;, &#x60;ssl&#x60;, etc.). - &#x60;services&#x60; (object) — map of &#x60;services_id&#x60; → row from the &#x60;services&#x60; table, filtered to &#x60;services_buyable&#x3D;1 AND services_hidden&#x3D;0&#x60;, with &#x60;services_ourcost&#x60; / &#x60;services_hidden&#x60; stripped, and &#x60;services_id&#x60; / &#x60;services_category&#x60; / &#x60;services_type&#x60; cast to int and &#x60;services_cost&#x60; cast to float. - &#x60;serviceTypes&#x60; (object) — joins service rows to human-readable type names. - &#x60;serviceCategories&#x60; (object) — joins service rows to category names.  **Auth:** None.  **Errors:** No documented error path; 401 only if a stricter auth layer is added upstream.  **Related calls:** - **Module-specific order catalog:** &#x60;getNewVps&#x60;, &#x60;getNewWebsite&#x60;, &#x60;getNewMail&#x60;, &#x60;getNewSsl&#x60;, &#x60;getNewLicense&#x60;, &#x60;getNewBackup&#x60;, &#x60;getNewQs&#x60;, &#x60;getNewServer&#x60;. - **Deeper health probe:** &#x60;pingServer&#x60;. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ServicesInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ServicesInfo>> getInfo({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/info';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ServicesInfo? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ServicesInfo, ServicesInfo>(rawData, 'ServicesInfo', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ServicesInfo>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Fetch logo, captcha, language, and stats for rendering a login page
  /// Bootstraps an unauthenticated login page in one round-trip — branding logo, fresh captcha challenge, auto-detected user language, and live counts of VPS / websites / servers managed by the system (often used as marketing stats). Public — no auth required. Sibling ops: &#x60;submitLogin&#x60; (consume the captcha), &#x60;getCaptcha&#x60; (refresh captcha only), &#x60;getAccountLocales&#x60;, &#x60;submitSignup&#x60;.  **Path/Query/Body:** None.  **Returns** &#x60;{ logo, captcha, language, counts }&#x60;: - &#x60;logo&#x60; (string) — URL; uses the &#x60;LOGO&#x60; constant or a default. - &#x60;captcha&#x60; (string) — &#x60;data:image/jpeg;base64,...&#x60; image; phrase is stored server-side under &#x60;$_SESSION[&#39;captcha&#39;]&#x60; (also aliased to &#x60;$_SESSION[&#39;captchaSignup&#39;]&#x60; and &#x60;$_SESSION[&#39;captchaFP&#39;]&#x60;) — the browser&#39;s &#x60;PHPSESSID&#x60; cookie carries the phrase to &#x60;submitLogin&#x60; / &#x60;submitSignup&#x60;. - &#x60;language&#x60; (string) — BCP-47 locale (e.g. &#x60;en-US&#x60;). - &#x60;counts&#x60; (object) — &#x60;{ vps: int, websites: int, servers: int }&#x60; from live &#x60;SELECT COUNT(*)&#x60; on the underlying tables.  **Auth:** None.  **Errors:** &#x60;403&#x60; per &#x60;LoginResponseError&#x60; if a stricter login gate is configured upstream.  **Related calls:** - **Next:** &#x60;submitLogin&#x60; (login form post) or &#x60;submitSignup&#x60; (new account). - **Captcha refresh only:** &#x60;getCaptcha&#x60;. - **OAuth alternative:** &#x60;getOauthRedirect&#x60;. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [LoginInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<LoginInfo>> getLoginInfo({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/login';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    LoginInfo? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<LoginInfo, LoginInfo>(rawData, 'LoginInfo', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<LoginInfo>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// List Rapid Deploy (Buy-It-Now) marketplace dedicated servers with live pricing
  /// Use to browse pre-built dedicated servers ready for immediate provisioning (Rapid Deploy / marketplace). No params, no body. Pulls live inventory from &#x60;mynew.interserver.net/ajax/server_a.php&#x60;. Returns: array of &#x60;{ server_id, cpu: [model, {img,type,speed,num_cpus,num_cores}], memory, disk, bandwidth, ips, location, price }&#x60;. The &#x60;server_id&#x60; is the marketplace asset id — feed it into &#x60;buyItNowServerOrder&#x60; (GET options for asset &#x60;?a&#x3D;&lt;id&gt;&#x60;) and &#x60;placeBuyNowServer&#x60; (POST to commit). Errors: 401 if session expired. Sibling ops: &#x60;buyItNowServerOrder&#x60; (configure asset), &#x60;placeBuyNowServer&#x60; (purchase), &#x60;getNewServer&#x60;/&#x60;addServer&#x60; (custom-spec build, not pre-built), &#x60;getServerList&#x60; (already-owned servers).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuyItNowList] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuyItNowList>> getMPServers({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/buy_now_servers_list';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    BuyItNowList? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BuyItNowList, BuyItNowList>(rawData, 'BuyItNowList', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuyItNowList>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Begin OAuth login flow — redirect user to provider for authentication
  /// Use as step 1 of social login. Navigate the browser (typically a popup) to &#x60;/apiv2/oauth?provider&#x3D;X&#x60; so the provider authenticates the user, then handle the postMessage from the popup. Public — no auth required. Query params: &#x60;provider&#x60; (required, case-sensitive: &#x60;Google&#x60;/&#x60;GitHub&#x60;/&#x60;Facebook&#x60;/&#x60;Twitter&#x60;), &#x60;origin&#x60; (optional, opener window origin used to target postMessage instead of &#x60;*&#x60;). The endpoint redirects directly to the provider rather than returning JSON. After the provider callback, the popup posts one of: &#x60;oauth_success&#x60; (logged in), &#x60;oauth_2fa_required&#x60; (call &#x60;patchOauthTwoFactor&#x60; with the &#x60;oauth_token&#x60;), &#x60;oauth_link_required&#x60; (call &#x60;postOauthCallback&#x60; to link or create), or &#x60;oauth_error&#x60;. Siblings: &#x60;postOauthCallback&#x60;, &#x60;patchOauthTwoFactor&#x60;, &#x60;submitLogin&#x60; (password flow).
  ///
  /// Parameters:
  /// * [provider] - The OAuth provider name (e.g. `Google`).
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetOauthRedirect200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetOauthRedirect200Response>> getOauthRedirect({ 
    required String provider,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/oauth';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'provider': provider,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    GetOauthRedirect200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<GetOauthRedirect200Response, GetOauthRedirect200Response>(rawData, 'GetOauthRedirect200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetOauthRedirect200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// List all PHP timezone identifiers usable on accounts and services
  /// Populates a timezone picker for account preferences or for VPS / QuickServer timezone changes. Public — no auth required. Backed by PHP&#39;s &#x60;DateTimeZone::listIdentifiers()&#x60; so the catalog is large (~400+ zones, including deprecated aliases like &#x60;US/Eastern&#x60;). Result is fixed for a given PHP build — cache aggressively client-side. Sibling ops: &#x60;postVpsChangeTimezone&#x60;, &#x60;postQsChangeTimezone&#x60;, &#x60;getCountries&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;.  **Path/Query/Body:** None.  **Returns:** flat JSON array of stable IANA tz strings, e.g. &#x60;[\&quot;Africa/Abidjan\&quot;, \&quot;America/New_York\&quot;, \&quot;Asia/Tokyo\&quot;, \&quot;Europe/London\&quot;, \&quot;UTC\&quot;]&#x60;. Values are usable verbatim on the timezone-change endpoints; no translation or country-grouping is performed here.  **Auth:** None.  **Errors:** No documented error path under normal operation.  **Related calls:** - **Apply selection to a service:** &#x60;postVpsChangeTimezone&#x60; (&#x60;/vps/{id}/change_timezone&#x60;), &#x60;postQsChangeTimezone&#x60; (&#x60;/qs/{id}/change_timezone&#x60;). - **Apply to account profile:** &#x60;updateAccountInfo&#x60; (sets &#x60;timezone&#x60;). - **Other preference catalogs:** &#x60;getCountries&#x60;, &#x60;getAccountLocales&#x60;, &#x60;getAccountCurrencies&#x60;. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<String>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<String>>> getTimezones({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/account/timezones';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    List<String>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<String>, String>(rawData, 'List<String>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<String>>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Submit 2FA code to finish OAuth login when account has 2FA enabled
  /// Final step of the OAuth login flow when the account has 2FA enabled. Called after &#x60;postOauthCallback&#x60; (or the popup&#39;s &#x60;window.postMessage()&#x60; handshake) returned &#x60;2fa_required&#x60;. Verifies the TOTP against the account&#39;s stored Google Authenticator secret and creates the session. Public — no auth required. Sibling ops: &#x60;postOauthCallback&#x60; (prior step), &#x60;getOauthRedirect&#x60; (entry point), &#x60;getAccountTfaSetup&#x60; (enroll 2FA), &#x60;submitLogin&#x60;.  **Body fields** (JSON or form): - &#x60;code&#x60; (string, required) — 6-digit TOTP from the authenticator app. - &#x60;account_id&#x60; (integer, required) — returned by the prior &#x60;postOauthCallback&#x60;. - &#x60;oauth_token&#x60; (string, optional) — signed token from the original &#x60;postMessage&#x60; payload, type &#x60;2fa&#x60;, 10-minute expiry. When present, its embedded OAuth profile data is merged into the account (name / picture / phone / address) for any fields still empty.  **Returns:** &#x60;{ login: true, sessionId, account_id, account_lid, ima, name, gravatar }&#x60;.  **Errors:** - &#x60;400&#x60; — invalid / expired &#x60;oauth_token&#x60; or no pending verification. - &#x60;401&#x60; — invalid 2FA code. - &#x60;409&#x60; — 2FA not enabled on the account. - &#x60;422&#x60; — missing &#x60;code&#x60;.  **Related calls:** - **Prerequisite:** &#x60;postOauthCallback&#x60;. - **Enroll 2FA on the account first:** &#x60;getAccountTfaSetup&#x60; → &#x60;updateAccountTfa&#x60;. - **Alternate login:** &#x60;submitLogin&#x60;. 
  ///
  /// Parameters:
  /// * [patchOauthTwoFactorRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PatchOauthTwoFactor200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PatchOauthTwoFactor200Response>> patchOauthTwoFactor({ 
    required PatchOauthTwoFactorRequest patchOauthTwoFactorRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/oauth';
    final _options = Options(
      method: r'PATCH',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(patchOauthTwoFactorRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PatchOauthTwoFactor200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PatchOauthTwoFactor200Response, PatchOauthTwoFactor200Response>(rawData, 'PatchOauthTwoFactor200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PatchOauthTwoFactor200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Liveness check — returns the JSON string \&quot;pong\&quot; to confirm API is up
  /// Trivial GET that returns the JSON string &#x60;\&quot;pong\&quot;&#x60; so AI agents and monitors can verify the API endpoint is reachable. Public — no auth required, no params, no body. Does not exercise the database, queue, or any plugin modules. Sibling ops: &#x60;getInfo&#x60; (richer probe that touches MySQL).  **Path/Query/Body:** None.  **Returns:** JSON-encoded string &#x60;\&quot;pong\&quot;&#x60; with HTTP 200.  **Auth:** None (public endpoint).  **Errors:** No documented error path under normal operation — a non-200 or absent response indicates the API is down, the host is unreachable, or upstream routing is broken.  **Use when:** - Bootstrapping a new client and want to confirm the API is reachable. - Smoke-testing in CI/health-check pipelines. - Diagnosing connectivity issues before higher-cost calls.  **Related calls:** - **Deeper health probe:** &#x60;getInfo&#x60; (exercises the DB layer). 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [String] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<String>> pingServer({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/ping';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    String? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<String, String>(rawData, 'String', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<String>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Complete OAuth login by linking provider to existing or new account
  /// Step 3 of the OAuth login flow. Called after &#x60;getOauthRedirect&#x60; returned &#x60;oauth_link_required&#x60; via the popup&#39;s &#x60;window.postMessage()&#x60;. Either links the OAuth identity to an existing account (verifying password) or creates a new account. Public — no auth required. Sibling ops: &#x60;patchOauthTwoFactor&#x60; (2FA follow-up), &#x60;getOauthRedirect&#x60; (start the flow), &#x60;submitSignup&#x60;, &#x60;submitLogin&#x60;.  **Body fields** (JSON or form): - &#x60;oauth_token&#x60; (string, required) — signed token from the popup&#39;s &#x60;window.postMessage()&#x60; payload; 10-minute expiry. - &#x60;login&#x60; (string, required) — email. - &#x60;password&#x60; (string, required). - &#x60;create&#x60; (boolean, optional) — set &#x60;true&#x60; to create a new account instead of linking. - &#x60;email_confirmation&#x60; (string, conditional) — 8-char code emailed on the first &#x60;create&#x3D;true&#x60; attempt; server returns 422 &#x60;email_verification_required&#x60; until provided. - &#x60;tfa&#x60; (string, conditional) — 6-digit TOTP when the existing account has 2FA enabled (after the first attempt returns 422 &#x60;2fa_required&#x60;).  **Returns:** &#x60;{ login|signup|linked: true, sessionId, account_id, account_lid, ima, name, gravatar }&#x60;.  **Errors:** - &#x60;400&#x60; — invalid / expired &#x60;oauth_token&#x60;. - &#x60;401&#x60; — bad password or wrong 2FA code. - &#x60;409&#x60; — account already exists (when &#x60;create: true&#x60;). - &#x60;422&#x60; — missing field; &#x60;email_verification_required&#x60;; &#x60;2fa_required&#x60;.  **Related calls:** - **Prerequisite:** &#x60;getOauthRedirect&#x60; to initiate the popup flow. - **Follow-up when 2FA required:** &#x60;patchOauthTwoFactor&#x60;. - **Alternate entry points:** &#x60;submitLogin&#x60;, &#x60;submitSignup&#x60;. 
  ///
  /// Parameters:
  /// * [provider] - The OAuth provider name (e.g. `Google`).
  /// * [postOauthCallbackRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PostOauthCallback200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PostOauthCallback200Response>> postOauthCallback({ 
    required String provider,
    PostOauthCallbackRequest? postOauthCallbackRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/oauth';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'provider': provider,
    };

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(postOauthCallbackRequest);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    PostOauthCallback200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PostOauthCallback200Response, PostOauthCallback200Response>(rawData, 'PostOauthCallback200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PostOauthCallback200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Authenticate with email + password and return a session token
  /// Primary password→session-token exchange. Pass the returned session id back as the &#x60;sessionid&#x60; HTTP header on subsequent calls. Public — no auth required. Sibling ops: &#x60;getLoginInfo&#x60; (captcha + branding), &#x60;getOauthRedirect&#x60; (social login), &#x60;submitSignup&#x60;, &#x60;updateAccountApiKey&#x60; (rotate API key once logged in).  **Body fields** (JSON or form): - &#x60;login&#x60; (string, required) — email. - &#x60;passwd&#x60; (string, required) — password. - &#x60;tfa&#x60; (string, conditional) — 6-digit TOTP when the account has 2FA enabled. - &#x60;verify&#x60; (string, conditional) — 8-char email-confirmation code returned via email when logging in from a new IP. Triggered automatically when the IP has no &#x60;acquittal&#x60; trial record yet (see &#x60;Trial&#x60; ORM, type &#x60;verify_email&#x60;). - &#x60;remember&#x60; (boolean / &#x60;&#39;true&#39;&#x60; / &#x60;&#39;yes&#39;&#x60; / &#x60;&#39;1&#39;&#x60;, optional) — extends cookie lifetime.  **Returns:** &#x60;{ sessionId, account_id, account_lid, ima, name, gravatar }&#x60;. The &#x60;sessionId&#x60; value is the credential to send on every subsequent authenticated request.  **Errors:** - &#x60;401&#x60; — bad credentials or wrong 2FA / verify code. - &#x60;422&#x60; — missing &#x60;login&#x60; / &#x60;passwd&#x60; / &#x60;tfa&#x60; / &#x60;verify&#x60;; response body&#39;s &#x60;field&#x60; indicates which input is required next. - &#x60;429&#x60; — too many failed attempts (login-log rate-limit) or max code retries reached.  **Related calls:** - **Prerequisite:** &#x60;getLoginInfo&#x60; to fetch the captcha challenge and counts. - **Alternate:** &#x60;getOauthRedirect&#x60; → &#x60;postOauthCallback&#x60; for social login. - **After login:** &#x60;updateAccountApiKey&#x60;. 
  ///
  /// Parameters:
  /// * [login] 
  /// * [passwd] 
  /// * [remember] 
  /// * [gRecaptchaResponse] 
  /// * [tfa] - Two Factor Authentication Response.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [LoginSuccessResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<LoginSuccessResponse>> submitLogin({ 
    required String login,
    required String passwd,
    String? remember,
    LoginSubmissionExampleGRecaptchaResponse? gRecaptchaResponse,
    String? tfa,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/login';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'multipart/form-data',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = FormData.fromMap(<String, dynamic>{
        r'login': login,
        r'passwd': passwd,
        if (remember != null) r'remember': remember,
        if (gRecaptchaResponse != null) r'g-recaptcha-response': gRecaptchaResponse,
        if (tfa != null) r'tfa': tfa,
      });

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    LoginSuccessResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<LoginSuccessResponse, LoginSuccessResponse>(rawData, 'LoginSuccessResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<LoginSuccessResponse>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Create a new customer account (email + password + captcha + ToS)
  /// First step of the signup flow before adding payment or services. Public — no auth required. The account is created in &#x60;pending&#x60; state and moved to &#x60;active&#x60; once the email-confirmation code is verified; an &#x60;account.activated&#x60; event then fires (welcome email + admin notification). MaxMind GeoIP populates &#x60;country&#x60; from the client IP. Sibling ops: &#x60;submitLogin&#x60;, &#x60;getCaptcha&#x60;, &#x60;getLoginInfo&#x60;, &#x60;addBillingPrepay&#x60;, plus the &#x60;add*&#x60; service ops to follow up after signup.  **Body fields** (JSON or form): - &#x60;login&#x60; (string, required) — email; must be valid and not an alias like &#x60;+tag&#x60; or dotted gmail. - &#x60;passwd&#x60; (string, required) — 4–64 chars. - &#x60;tos&#x60; (truthy, required) — &#x60;yes&#x60; / &#x60;true&#x60; / &#x60;1&#x60;. - &#x60;captcha&#x60; (string, required) — answer to the phrase from &#x60;getCaptcha&#x60; or &#x60;getLoginInfo&#x60; (server reads the phrase from &#x60;$_SESSION[&#39;captchaSignup&#39;]&#x60;). - &#x60;email_confirmation&#x60; (string, conditional) — 8-char code emailed on the first attempt; server returns &#x60;400 { field: &#39;email_confirmation&#39; }&#x60; until provided. - &#x60;remember&#x60; (boolean / &#x60;&#39;true&#39;&#x60; / &#x60;&#39;yes&#39;&#x60; / &#x60;&#39;1&#39;&#x60;, optional) — 256-day cookie.  **Returns:** &#x60;{ sessionId, account_id, account_lid, ima }&#x60;.  **Errors:** - &#x60;400&#x60; — missing or invalid &#x60;login&#x60; / &#x60;passwd&#x60; / &#x60;tos&#x60; / &#x60;captcha&#x60; / &#x60;email_confirmation&#x60;; blocked-domain or aliased-email; account already exists. - &#x60;402&#x60; per &#x60;LoginResponseError&#x60; — signup gate misconfigured upstream.  **Related calls:** - **Prerequisite:** &#x60;getCaptcha&#x60; or &#x60;getLoginInfo&#x60;. - **After signup:** &#x60;submitLogin&#x60;, &#x60;addBillingPrepay&#x60;, plus any &#x60;add*&#x60; order op. 
  ///
  /// Parameters:
  /// * [loginSubmissionExample] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> submitSignup({ 
    LoginSubmissionExample? loginSubmissionExample,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/signup';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[
          {
            'type': 'apiKey',
            'name': 'sessionIdCookieAuth',
            'keyName': 'sessionid',
            'where': '',
          },{
            'type': 'apiKey',
            'name': 'apiKeyAuth',
            'keyName': 'X-API-KEY',
            'where': 'header',
          },{
            'type': 'apiKey',
            'name': 'sessionIdHeaderAuth',
            'keyName': 'sessionid',
            'where': 'header',
          },
        ],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = jsonEncode(loginSubmissionExample);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    return _response;
  }

}
