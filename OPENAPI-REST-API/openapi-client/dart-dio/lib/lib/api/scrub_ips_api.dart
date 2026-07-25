//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:interserver_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:interserver_api/lib/model/cancel_scrub_ip200_response.dart';
import 'package:interserver_api/lib/model/charge_invoice_rows.dart';
import 'package:interserver_api/lib/model/create_filter.dart';
import 'package:interserver_api/lib/model/create_filter201_response.dart';
import 'package:interserver_api/lib/model/create_filter400_response.dart';
import 'package:interserver_api/lib/model/create_filter500_response.dart';
import 'package:interserver_api/lib/model/create_firewall_rule.dart';
import 'package:interserver_api/lib/model/create_geo_firewall_rule.dart';
import 'package:interserver_api/lib/model/create_geo_rule400_response.dart';
import 'package:interserver_api/lib/model/create_rule201_response.dart';
import 'package:interserver_api/lib/model/create_rule400_response.dart';
import 'package:interserver_api/lib/model/create_rule500_response.dart';
import 'package:interserver_api/lib/model/delete_filter200_response.dart';
import 'package:interserver_api/lib/model/delete_filter400_response.dart';
import 'package:interserver_api/lib/model/delete_filter500_response.dart';
import 'package:interserver_api/lib/model/delete_firewall_rule.dart';
import 'package:interserver_api/lib/model/delete_geo_firewall_rule.dart';
import 'package:interserver_api/lib/model/disable_scrub200_response.dart';
import 'package:interserver_api/lib/model/disable_scrub400_response.dart';
import 'package:interserver_api/lib/model/disable_scrub500_response.dart';
import 'package:interserver_api/lib/model/enable_scrub200_response.dart';
import 'package:interserver_api/lib/model/enable_scrub500_response.dart';
import 'package:interserver_api/lib/model/get_account_info401_response.dart';
import 'package:interserver_api/lib/model/get_order_detail200_response.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response.dart';
import 'package:interserver_api/lib/model/place_scrub_order201_response.dart';
import 'package:interserver_api/lib/model/put_scrub_ips200_response.dart';
import 'package:interserver_api/lib/model/scrub_ip_filter_types.dart';
import 'package:interserver_api/lib/model/scrub_ip_place_order.dart';
import 'package:interserver_api/lib/model/scrub_ips_delete_rule200_response.dart';
import 'package:interserver_api/lib/model/scrub_ips_delete_rule400_response.dart';
import 'package:interserver_api/lib/model/scrub_ips_delete_rule500_response.dart';
import 'package:interserver_api/lib/model/scrub_ips_log_row_schema.dart';
import 'package:interserver_api/lib/model/scrub_ips_row_schema.dart';

class ScrubIpsApi {

  final Dio _dio;

  const ScrubIpsApi(this._dio);

  /// Cancel a Scrub IP service and stop its recurring DDoS billing
  /// Cancels the Scrub IP DDoS protection service. The protected IP is removed from the scrubbing infrastructure and the recurring invoice is closed; protection stops at end of the current billing cycle. Use only when the customer no longer needs DDoS scrubbing for the IP. Path param: &#x60;id&#x60; (integer, required) — service ID from getScrubIpsList. No request body. Returns {success: true, text: &#39;Scrub Ips is canceled.&#39;}. Errors: 401 unauthenticated; 404/Invalid Service if id is not owned by the session account; 409 if the service is not in a cancellable state. Caveat: leaves the underlying VPS/server IP exposed to attacks once protection ends; contact billing for refund handling. Siblings: getScrubIpDetails, disableScrub, getScrubIpInvoices.
  ///
  /// Parameters:
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CancelScrubIp200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CancelScrubIp200Response>> cancelScrubIp({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}'.replaceAll('{' r'id' '}', id.toString());
    final _options = Options(
      method: r'DELETE',
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

    CancelScrubIp200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<CancelScrubIp200Response, CancelScrubIp200Response>(rawData, 'CancelScrubIp200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CancelScrubIp200Response>(
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

  /// Apply a predefined scrubbing filter (DNS/HTTP/synproxy) to a port
  /// Attaches a named scrubbing profile to a destination port on the protected IP, applying protocol-aware mitigation (DNS amplification protection, HTTP rate limiting, synproxy SYN-cookies). Call getScrubIpFilterTypes first to list valid &#x60;filter_type&#x60; values. Path param: &#x60;id&#x60; (integer, required) — service ID. Body (CreateFilter): &#x60;filter_type&#x60; (string, required, one of getScrubIpFilterTypes keys), &#x60;port&#x60; (int, required, &gt;&#x3D; 0). Destination IP is locked to the service IP server-side; synproxy uses a different shape internally. Returns 201 {success: true, text: &#39;New filter has been created.&#39;}. Errors: 400 &#39;Filter type is empty/invalid&#39;, &#39;Port is invalid&#39;, or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::filterCreate fails. Siblings: deleteFilter, getScrubIpFilterTypes, createRule.
  ///
  /// Parameters:
  /// * [createFilter] 
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CreateFilter201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CreateFilter201Response>> createFilter({ 
    required CreateFilter createFilter,
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/create_filter'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(createFilter);

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

    CreateFilter201Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<CreateFilter201Response, CreateFilter201Response>(rawData, 'CreateFilter201Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CreateFilter201Response>(
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

  /// Add a geographic firewall rule (block/allow by country code or ASN)
  /// Creates a geo-based XDP rule on the scrubber for the service&#39;s protected IP. Use to block traffic from specific countries or ASNs (botnet source regions) or to allow only known regions. Path param: &#x60;id&#x60; (integer, required) — service ID. Body (CreateGeoFirewallRule): &#x60;country_code&#x60; (int, country numeric ID) OR &#x60;asn&#x60; (int) — at least one is required, &#x60;destination_port&#x60; (int, defaults 80), &#x60;xdp_action&#x60; (0 allow, 1 drop, defaults 1). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 errors[] &#39;Country or Asn is required.&#39; or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::geoFirewallCreate fails. Caveat: country_code is an internal numeric ID, not ISO-3166. Siblings: scrubIpsDeleteGeoRule, createRule, createFilter.
  ///
  /// Parameters:
  /// * [createGeoFirewallRule] 
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CreateRule201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CreateRule201Response>> createGeoRule({ 
    required CreateGeoFirewallRule createGeoFirewallRule,
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/create_geo_rule'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(createGeoFirewallRule);

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

    CreateRule201Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<CreateRule201Response, CreateRule201Response>(rawData, 'CreateRule201Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CreateRule201Response>(
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

  /// Add an L3/L4 firewall rule (allow/drop by IP, port, and protocol)
  /// Creates an XDP firewall rule on the scrubber for the service&#39;s protected IP. Use to whitelist a known good source, block an abusive source, or restrict a destination port. Path param: &#x60;id&#x60; (integer, required) — service ID. Body (CreateFirewallRule): &#x60;source_ip&#x60; (IPv4, 0 &#x3D; any), &#x60;source_port&#x60; (int, 0 &#x3D; any), &#x60;destination_port&#x60; (int, 0 &#x3D; any), &#x60;protocol_id&#x60; (1 ICMP or 2 TCP/UDP — must be 1 or 2), &#x60;xdp_action&#x60; (0 allow, 1 drop). Destination IP is locked to the service IP server-side. Returns 201 {success: true} when created. Errors: 400 with &#x60;errors[]&#x60; for invalid source_ip/protocol_id/xdp_action or Invalid Service; 401 unauthenticated; 500 if upstream Scrub::firewallCreate fails. Caveat: rules are stateless and may interact with active filters. Siblings: scrubIpsDeleteRule, createGeoRule, createFilter.
  ///
  /// Parameters:
  /// * [createFirewallRule] 
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [CreateRule201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<CreateRule201Response>> createRule({ 
    required CreateFirewallRule createFirewallRule,
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/create_rule'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(createFirewallRule);

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

    CreateRule201Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<CreateRule201Response, CreateRule201Response>(rawData, 'CreateRule201Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<CreateRule201Response>(
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

  /// Remove a scrubbing filter by matching filter_type and port
  /// Removes a previously attached scrubbing profile from the protected IP. Identification is by composite key, not &#x60;rule_id&#x60; — pass the same &#x60;filter_type&#x60; and &#x60;port&#x60; that were used in &#x60;createFilter&#x60;. The endpoint splits &#x60;filter_type&#x60; on &#x60;_&#x60; to dispatch to the correct delete shape (synproxy vs generic). Sibling ops: &#x60;createFilter&#x60;, &#x60;getScrubIpFilterTypes&#x60;.  **Path:** &#x60;id&#x60; (integer, required) — Scrub IP service ID.  **Body fields:** - &#x60;filter_type&#x60; (string, required) — must match an enabled type from &#x60;getScrubIpFilterTypes&#x60;. - &#x60;port&#x60; (integer, required) — must be &#x60;&gt; 0&#x60;.  **Returns:** &#x60;{ success: true, text: &#39;Filter is deleted.&#39; }&#x60;.  **Errors:** - &#x60;400&#x60; — &#x60;&#39;Filter is required.&#39;&#x60; / &#x60;&#39;Port is required.&#39;&#x60; / &#x60;&#39;Invalid filter&#39;&#x60; / &#x60;Invalid Service&#x60;. - &#x60;401&#x60; — unauthenticated. - &#x60;500&#x60; — upstream &#x60;Scrub::filterDelete&#x60; failed.  **Caveat:** the port loses its protocol-specific scrubbing protection until &#x60;createFilter&#x60; is called again with the same composite key. 
  ///
  /// Parameters:
  /// * [createFilter] 
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DeleteFilter200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DeleteFilter200Response>> deleteFilter({ 
    required CreateFilter createFilter,
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/delete_filter'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(createFilter);

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

    DeleteFilter200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<DeleteFilter200Response, DeleteFilter200Response>(rawData, 'DeleteFilter200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DeleteFilter200Response>(
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

  /// Disable DDoS scrubbing and remove the BGP announcement on the IP
  /// Withdraws the BGP announcement from Wanguard so the IP stops being routed through scrubbing; traffic resumes flowing directly to the backend. Use for maintenance windows or migration off scrub. Path param: &#x60;id&#x60; (integer, required) — service ID from getScrubIpsList. No body (HTTP GET). The endpoint reads the stored Wanguard &#x60;href&#x60; from the service&#39;s &#x60;extra&#x60; JSON to know which announcement to delete; clears &#x60;extra&#x60; on success. Returns {success: true, text: &#39;Scrub is disabled on your IP.&#39;}. Errors: 400 Invalid Service if id is not owned, or &#39;Scrub is not enabled in this service.&#39; if there is no active announcement; 401 unauthenticated; 500 if upstream delete fails. Caveat: leaves the IP unprotected against DDoS until enableScrub is called. Siblings: enableScrub, cancelScrubIp, getScrubIpDetails.
  ///
  /// Parameters:
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [DisableScrub200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<DisableScrub200Response>> disableScrub({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/disable'.replaceAll('{' r'id' '}', id.toString());
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

    DisableScrub200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<DisableScrub200Response, DisableScrub200Response>(rawData, 'DisableScrub200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<DisableScrub200Response>(
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

  /// Enable DDoS scrubbing (BGP announcement) on the service&#39;s protected IP
  /// Routes the service&#39;s protected IP through the Wanguard scrubbing infrastructure by creating a BGP announcement, so inbound traffic passes through filtering before reaching the backend. Call after placeScrubOrder activation, after disableScrub, or whenever the announcement was lost. Path param: &#x60;id&#x60; (integer, required) — service ID from getScrubIpsList. No request body (HTTP GET). Returns {success: true, text: &#39;Scrub is enabled on your IP.&#39;} on 201 from Wanguard, persisted into the service&#39;s &#x60;extra&#x60; column. Errors: 400 Invalid Service if id is not owned by the session account; 401 unauthenticated; 500 if the upstream Wanguard call fails. Caveat: enabling re-routes live traffic and can briefly disrupt active sessions. Siblings: disableScrub, getScrubIpDetails, getScrubIpLogs.
  ///
  /// Parameters:
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [EnableScrub200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<EnableScrub200Response>> enableScrub({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/enable'.replaceAll('{' r'id' '}', id.toString());
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

    EnableScrub200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<EnableScrub200Response, EnableScrub200Response>(rawData, 'EnableScrub200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<EnableScrub200Response>(
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

  /// Get plans, pricing, and eligible IPs for a new Scrub IP order
  /// Returns the data needed to render a new-order form: &#x60;packageCosts&#x60; (default services_id and recurring price in customer currency with symbol), &#x60;serviceTypes&#x60; (each buyable plan with services_id, services_name, services_cost, services_module), and &#x60;ips&#x60; (the customer&#39;s existing VPS/server/floating IPs eligible to be put behind a scrubber, each with service_id, service_module, service_hostname). Use as a precursor to putScrubIps (validate) or placeScrubOrder (commit). No path/query/body parameters. Returns object. Errors: 401 unauthenticated. Caveat: ips list is filtered to the session account; pricing is converted to the customer&#39;s currency. Siblings: putScrubIps, placeScrubOrder, getScrubIpsList.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetOrderDetail200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetOrderDetail200Response>> getOrderDetail({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/order';
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

    GetOrderDetail200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<GetOrderDetail200Response, GetOrderDetail200Response>(rawData, 'GetOrderDetail200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetOrderDetail200Response>(
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

  /// Get full Scrub IP service detail (rules + geo + filters)
  /// Returns the full service-detail payload for one Scrub IP — used to render the dashboard or before mutating rules/filters. Includes &#x60;serviceInfo&#x60; (status, scrubbed IP, custid), &#x60;billingDetails&#x60; (cost, frequency), &#x60;client_links&#x60; (allowed self-service actions), and &#x60;filter_firewall&#x60; with the active firewall &#x60;rules&#x60;, geographic &#x60;geo_rules&#x60;, and traffic &#x60;filters&#x60;. Each rule/filter row carries its own &#x60;id&#x60; used by the delete endpoints. Sibling ops: &#x60;getScrubIpsList&#x60;, &#x60;enableScrub&#x60;, &#x60;disableScrub&#x60;, &#x60;createRule&#x60;, &#x60;scrubIpsDeleteRule&#x60;, &#x60;createGeoRule&#x60;, &#x60;scrubIpsDeleteGeoRule&#x60;, &#x60;createFilter&#x60;, &#x60;deleteFilter&#x60;, &#x60;getScrubIpInvoices&#x60;, &#x60;getScrubIpLogs&#x60;, &#x60;cancelScrubIp&#x60;.  **Path:** &#x60;id&#x60; (integer, required) — service ID from &#x60;getScrubIpsList&#x60;.  **Body / query:** None.  **Returns:** object with &#x60;serviceInfo&#x60;, &#x60;billingDetails&#x60;, &#x60;client_links&#x60;, &#x60;filter_firewall&#x60; (&#x60;rules&#x60; / &#x60;geo_rules&#x60; / &#x60;filters&#x60;).  **Auth:** Session/API key. Ownership enforced via &#x60;scrub_ips_custid&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Invalid Service&#x60; — &#x60;id&#x60; is not owned by the session account.  **Caveat:** rule/filter IDs are regenerated after recreate — re-fetch before calling a delete endpoint.  **Related calls:** - **Mutations:** &#x60;enableScrub&#x60;, &#x60;disableScrub&#x60;, &#x60;createRule&#x60;, &#x60;createGeoRule&#x60;, &#x60;createFilter&#x60;. - **Deletes:** &#x60;scrubIpsDeleteRule&#x60;, &#x60;scrubIpsDeleteGeoRule&#x60;, &#x60;deleteFilter&#x60;. - **Billing / activity:** &#x60;getScrubIpInvoices&#x60;, &#x60;getScrubIpLogs&#x60;. - **Cancel:** &#x60;cancelScrubIp&#x60;. 
  ///
  /// Parameters:
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [GetScrubIpDetails200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<GetScrubIpDetails200Response>> getScrubIpDetails({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}'.replaceAll('{' r'id' '}', id.toString());
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

    GetScrubIpDetails200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<GetScrubIpDetails200Response, GetScrubIpDetails200Response>(rawData, 'GetScrubIpDetails200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<GetScrubIpDetails200Response>(
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

  /// List enabled traffic filter profiles available for createFilter
  /// Returns the catalog of scrub filter profiles (e.g. dns, http, synproxy) currently enabled on the scrubbing platform, keyed by filter_name with a humanized display &#x60;name&#x60; and &#x60;desc&#x60;. Call this to populate a dropdown before invoking createFilter — the &#x60;filter_type&#x60; field on that endpoint must be one of the keys returned here. Not service-scoped: no path/query/body parameters and the same set applies to every Scrub IP. Returns {success: true, filters: {&lt;filter_name&gt;: {name, desc}, ...}}. Errors: 401 unauthenticated. Caveat: only filters with enabled&#x3D;1 are returned; profile semantics are platform-defined (synproxy uses different request shape internally). Siblings: createFilter, deleteFilter, getScrubIpDetails.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ScrubIpFilterTypes] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ScrubIpFilterTypes>> getScrubIpFilterTypes({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/filter_types';
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

    ScrubIpFilterTypes? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ScrubIpFilterTypes, ScrubIpFilterTypes>(rawData, 'ScrubIpFilterTypes', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ScrubIpFilterTypes>(
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

  /// List recurring and one-time invoices billed for this Scrub IP service
  /// Returns the recurring and one-time invoices generated for the Scrub IP service so the caller can verify billing status, present a payment history, or initiate payment on an unpaid invoice. Use after placeScrubOrder (to find the new invoice id) or before cancelScrubIp (to surface outstanding balance). Path param: &#x60;id&#x60; (integer, required) — service ID from getScrubIpsList. No body/query parameters. Returns ChargeInvoiceRows (array of invoice objects with id, amount, status, due dates). Errors: 401 unauthenticated; empty result if id is not owned by the session account. Caveat: paid invoices remain in history; filter on status client-side. Siblings: getScrubIpDetails, placeScrubOrder, cancelScrubIp.
  ///
  /// Parameters:
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ChargeInvoiceRows] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ChargeInvoiceRows>> getScrubIpInvoices({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/invoices'.replaceAll('{' r'id' '}', id.toString());
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

    ChargeInvoiceRows? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ChargeInvoiceRows, ChargeInvoiceRows>(rawData, 'ChargeInvoiceRows', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ChargeInvoiceRows>(
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

  /// Get last 50000 packet/event log entries for the protected IP
  /// Pulls scrubbing telemetry directly from the SCRUBLOGS clickhouse-style backend: timestamp, source IP, target IP, target port, protocol (ICMP/IGMP/TCP/UDP/etc.), byte_count, action (Allow/Drop/Challenge), and the matching filter label. Use for incident analysis, validating new firewall rules, or proving a DDoS attack hit the scrubber. Path param: &#x60;id&#x60; (string, required) — service ID. No body/query parameters. Timestamps are converted to the customer&#39;s timezone. Returns array of log rows (ScrubIpsLogRowSchema), most recent first, capped at 50000. Errors: 401 unauthenticated; returns false if id is not owned or upstream returns no data — not a 404. Caveat: large response; logs are not real-time and source IPs are reverse-byte-ordered. Siblings: getScrubIpDetails, enableScrub, createRule.
  ///
  /// Parameters:
  /// * [id] - Scrub Order ID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<ScrubIpsLogRowSchema>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<ScrubIpsLogRowSchema>>> getScrubIpLogs({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/logs'.replaceAll('{' r'id' '}', id.toString());
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

    List<ScrubIpsLogRowSchema>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<ScrubIpsLogRowSchema>, ScrubIpsLogRowSchema>(rawData, 'List<ScrubIpsLogRowSchema>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<ScrubIpsLogRowSchema>>(
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

  /// List all Scrub IP DDoS protection services on the authenticated account
  /// Returns every Scrub IP service belonging to the authenticated customer with status, protected IP, plan name, and recurring cost. Use this for dashboards, picking a service ID for downstream calls (getScrubIpDetails, enableScrub, createRule, getScrubIpLogs), or auditing which IPs are routed through DDoS scrubbing. No path/query/body parameters; service ownership is enforced via session account_id. Returns an array of {id, repeat_invoices_cost, ip, status, services_name}; empty array if no scrub services. Errors: 401 unauthenticated. Caveat: only customer-owned services are visible. Siblings: getScrubIpDetails, getOrderDetail, placeScrubOrder, cancelScrubIp.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<ScrubIpsRowSchema>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<ScrubIpsRowSchema>>> getScrubIpsList({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips';
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

    List<ScrubIpsRowSchema>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<ScrubIpsRowSchema>, ScrubIpsRowSchema>(rawData, 'List<ScrubIpsRowSchema>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<ScrubIpsRowSchema>>(
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

  /// Place a new Scrub IP DDoS protection order and generate an invoice
  /// Commits the order: re-runs validate_buy_scrub_ip then place_buy_scrub_ip which creates the service row, repeat_invoice, and a one-time invoice for the prorated charge. Use putScrubIps first to surface errors without billing. No path parameters. Body (ScrubIpPlaceOrder): &#x60;serviceType&#x60; (services_id), &#x60;ip&#x60; (eligible IP from getOrderDetail). Returns 201 {success: true, text: &#39;ScrubIp order is placed.&#39;, order_details: {total_cost, service_id, invoice_id, invoice_description, cj_params}}. Errors: 400 {success: false, text: &#39;Unable to place order.&#39;, errors: []} on validation; 401 unauthenticated; 422 on invalid serviceType/ip; 409 if the IP is already protected. Caveat: invoice is unpaid at creation — pay via Pay endpoints to activate. Siblings: putScrubIps, getOrderDetail, enableScrub, getScrubIpInvoices.
  ///
  /// Parameters:
  /// * [scrubIpPlaceOrder] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PlaceScrubOrder201Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PlaceScrubOrder201Response>> placeScrubOrder({ 
    required ScrubIpPlaceOrder scrubIpPlaceOrder,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/order';
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
      _bodyData = jsonEncode(scrubIpPlaceOrder);

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

    PlaceScrubOrder201Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PlaceScrubOrder201Response, PlaceScrubOrder201Response>(rawData, 'PlaceScrubOrder201Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PlaceScrubOrder201Response>(
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

  /// Validate a Scrub IP order and return effective pricing without billing
  /// Dry-runs a Scrub IP purchase via validate_buy_scrub_ip and returns whether the order would succeed plus the resolved pricing — without creating an invoice. Use to render a real-time price/error panel as the user picks options. No path parameters. Body (ScrubIpPlaceOrder): &#x60;serviceType&#x60; (services_id from getOrderDetail.serviceTypes), &#x60;ip&#x60; (one of getOrderDetail.ips), optional &#x60;coupon&#x60;. Returns {continue: bool, errors: [], serviceType, serviceCost, originalCost, repeatServiceCost}. Errors: 401 unauthenticated; validation failures appear in &#x60;errors&#x60;, not as HTTP 4xx. Caveat: idempotent — call as often as needed; 422 on invalid coupon surfaces in the errors array. Siblings: getOrderDetail, placeScrubOrder, getScrubIpsList.
  ///
  /// Parameters:
  /// * [scrubIpPlaceOrder] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [PutScrubIps200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<PutScrubIps200Response>> putScrubIps({ 
    required ScrubIpPlaceOrder scrubIpPlaceOrder,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/order';
    final _options = Options(
      method: r'PUT',
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
      _bodyData = jsonEncode(scrubIpPlaceOrder);

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

    PutScrubIps200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<PutScrubIps200Response, PutScrubIps200Response>(rawData, 'PutScrubIps200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<PutScrubIps200Response>(
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

  /// Delete a geo firewall rule by rule_id from getScrubIpDetails
  /// Removes a previously created geographic firewall rule from the Scrub IP service. The rule_id must come from the &#x60;filter_firewall.geo_rules[].id&#x60; array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: &#x60;id&#x60; (integer, required) — Scrub IP service ID. Body (JSON): {&#x60;rule_id&#x60;: integer, required}. Returns {success: true, text: &#39;Firewall Rule has been deleted.&#39;}. Errors: 400 Invalid Service, &#39;Rule Id is required.&#39; or &#39;Invalid rule id&#39; (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::geoFirewallDelete fails. Caveat: removing a country/ASN block re-admits that traffic. Siblings: createGeoRule, scrubIpsDeleteRule, deleteFilter, getScrubIpDetails.
  ///
  /// Parameters:
  /// * [deleteGeoFirewallRule] 
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ScrubIpsDeleteRule200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ScrubIpsDeleteRule200Response>> scrubIpsDeleteGeoRule({ 
    required DeleteGeoFirewallRule deleteGeoFirewallRule,
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/delete_geo_rule'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(deleteGeoFirewallRule);

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

    ScrubIpsDeleteRule200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ScrubIpsDeleteRule200Response, ScrubIpsDeleteRule200Response>(rawData, 'ScrubIpsDeleteRule200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ScrubIpsDeleteRule200Response>(
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

  /// Delete an L3/L4 firewall rule by rule_id from getScrubIpDetails
  /// Removes a previously created L3/L4 firewall rule from the Scrub IP service. The rule_id must come from the &#x60;filter_firewall.rules[].id&#x60; array returned by getScrubIpDetails — the endpoint validates the id belongs to this service before deleting. Path param: &#x60;id&#x60; (integer, required) — Scrub IP service ID. Body (JSON): {&#x60;rule_id&#x60;: integer, required}. Returns {success: true, text: &#39;Firewall Rule has been deleted.&#39;}. Errors: 400 Invalid Service, &#39;rule_id is required.&#39; or &#39;Invalid rule id&#39; (rule does not belong to this service); 401 unauthenticated; 500 if upstream Scrub::firewallDelete fails. Caveat: if the rule was the only protection against a specific source, deleting it re-exposes the IP. Siblings: createRule, scrubIpsDeleteGeoRule, deleteFilter, getScrubIpDetails.
  ///
  /// Parameters:
  /// * [deleteFirewallRule] 
  /// * [id] - ScrubIp ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ScrubIpsDeleteRule200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ScrubIpsDeleteRule200Response>> scrubIpsDeleteRule({ 
    required DeleteFirewallRule deleteFirewallRule,
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/scrub_ips/{id}/delete_rule'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(deleteFirewallRule);

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

    ScrubIpsDeleteRule200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ScrubIpsDeleteRule200Response, ScrubIpsDeleteRule200Response>(rawData, 'ScrubIpsDeleteRule200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ScrubIpsDeleteRule200Response>(
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

}
