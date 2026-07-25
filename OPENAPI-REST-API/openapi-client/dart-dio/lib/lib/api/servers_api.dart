//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:interserver_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:interserver_api/lib/model/add_server200_response.dart';
import 'package:interserver_api/lib/model/buy_it_now_list.dart';
import 'package:interserver_api/lib/model/buy_it_now_server_order200_response.dart';
import 'package:interserver_api/lib/model/charge_invoice_rows.dart';
import 'package:interserver_api/lib/model/get_account_info401_response.dart';
import 'package:interserver_api/lib/model/place_buy_now_server_request.dart';
import 'package:interserver_api/lib/model/reverse_dns_entries.dart';
import 'package:interserver_api/lib/model/server.dart';
import 'package:interserver_api/lib/model/server_bulk_ipmi_power_response.dart';
import 'package:interserver_api/lib/model/server_ipmi_live_info.dart';
import 'package:interserver_api/lib/model/server_order.dart';
import 'package:interserver_api/lib/model/server_order_post_request.dart';
import 'package:interserver_api/lib/model/server_row.dart';
import 'package:interserver_api/lib/model/servers_buy_now_error.dart';
import 'package:interserver_api/lib/model/servers_buy_now_response.dart';
import 'package:interserver_api/lib/model/servers_cancel200_response.dart';
import 'package:interserver_api/lib/model/success_text_response.dart';
import 'package:interserver_api/lib/model/text_response.dart';

class ServersApi {

  final Dio _dio;

  const ServersApi(this._dio);

  /// Place a custom dedicated server order, creating a real billable invoice
  /// Submits a fully custom dedicated server order. Creates a &#x60;pending&#x60; &#x60;servers&#x60; row, a &#x60;Repeat_Invoice&#x60;, and the first invoice, then emails customer + admin. Caveat: real billable order — confirm with the user first. Body (form fields): &#x60;cpu&#x60; (id from &#x60;cpu_li&#x60;), &#x60;hd[]&#x60; (array of drive ids), &#x60;memory&#x60;, &#x60;bandwidth&#x60;, &#x60;ips&#x60;, &#x60;os&#x60;, &#x60;cp&#x60;, &#x60;raid&#x60; (ids from &#x60;getNewServer&#x60;), &#x60;region&#x60; (region_id), &#x60;servername&#x60; (valid hostname), &#x60;rootpass&#x60;, &#x60;tos&#x60; (must be true), optional &#x60;comment&#x60;. &#x60;account.server_order_discount&#x60; (if set) applies. Returns: &#x60;{ text:&#39;Order Completed&#39;, invoice, order }&#x60;. Errors: 422 &#39;Missing/Invalid &lt;field&gt;&#39;; 401 unauth. Sibling ops: &#x60;getNewServer&#x60; (options), &#x60;placeBuyNowServer&#x60; (pre-built path), &#x60;getServerInfo&#x60; (view new order), &#x60;getServerInvoices&#x60;.
  ///
  /// Parameters:
  /// * [serverOrderPostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [AddServer200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<AddServer200Response>> addServer({ 
    required ServerOrderPostRequest serverOrderPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/order';
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
      _bodyData = jsonEncode(serverOrderPostRequest);

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

    AddServer200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<AddServer200Response, AddServer200Response>(rawData, 'AddServer200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<AddServer200Response>(
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

  /// Get configurable options for a Rapid Deploy / coupon dedicated server
  /// Step 1 of the Rapid Deploy / coupon dedicated server order flow. Returns options + pricing for either a marketplace asset (&#x60;a&#x3D;&lt;asset_id&gt;&#x60;) or a coupon (&#x60;c&#x3D;&lt;coupon_name&gt;&#x60;) so the order form can be rendered before &#x60;placeBuyNowServer&#x60;. Read-only; no charge. Sibling ops: &#x60;placeBuyNowServer&#x60; (commit), &#x60;getMPServers&#x60; (browse marketplace), &#x60;addServer&#x60; (custom build flow).  **Query (one required):** - &#x60;a&#x60; (integer) — asset_id from &#x60;getMPServers&#x60;. - &#x60;c&#x60; (string) — &#x60;server_coupons.name&#x60;.  **Returns:** &#x60;{ bandwidth[], ips[], os[], cp[], raid[], regions[], a?: {asset + items}, c?: {coupon + region} }&#x60;. Each option row is &#x60;{ id, short_desc, long_desc, monthly_price }&#x60; — feed those ids into &#x60;placeBuyNowServer&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;400&#x60; — &#x60;&#39;No Server Coupon or Market-Place Asset Specified&#39;&#x60; when neither &#x60;a&#x60; nor &#x60;c&#x60; is passed. - &#x60;400&#x60; — &#x60;&#39;Invalid Asset ID&#39;&#x60; / &#x60;&#39;No Server Coupon with that name&#39;&#x60;. - &#x60;409&#x60; — &#x60;&#39;Server already sold!&#39;&#x60; (asset already in-cart) or &#x60;&#39;Server Out of stock&#39;&#x60; (coupon). - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Next:** &#x60;placeBuyNowServer&#x60; (commit the order). - **Browse:** &#x60;getMPServers&#x60;. - **Custom build alternative:** &#x60;addServer&#x60;. 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [BuyItNowServerOrder200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<BuyItNowServerOrder200Response>> buyItNowServerOrder({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/order/buy_now_server';
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

    BuyItNowServerOrder200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<BuyItNowServerOrder200Response, BuyItNowServerOrder200Response>(rawData, 'BuyItNowServerOrder200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<BuyItNowServerOrder200Response>(
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

  /// Get custom dedicated server ordering options, regions, and pricing
  /// Use before placing a fully custom (non-Rapid-Deploy) dedicated server order to discover available CPUs, drives, memory tiers, OS images, control panels, RAID levels, bandwidth packages, IP blocks, and regions with monthly prices. No params, no body. Returns: object with &#x60;config_li&#x60; keyed by category (&#x60;cpu_li&#x60;, &#x60;hd_li&#x60;, &#x60;memory_li&#x60;, &#x60;bandwidth_li&#x60;, &#x60;ips_li&#x60;, &#x60;os_li&#x60;, &#x60;cp_li&#x60;, &#x60;raid_li&#x60;) plus &#x60;regions&#x60;. Use returned IDs as POST values for &#x60;addServer&#x60;. Note &#x60;hd_li&#x60; and &#x60;memory_li&#x60; are nested by &#x60;cpu&#x60; id — the chosen CPU constrains valid drive/memory options. Errors: 401 if not authenticated. Sibling ops: &#x60;addServer&#x60; (commits the order), &#x60;buyItNowServerOrder&#x60; (pre-built marketplace alternative), &#x60;getMPServers&#x60; (browse marketplace).
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ServerOrder] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ServerOrder>> getNewServer({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/order';
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

    ServerOrder? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ServerOrder, ServerOrder>(rawData, 'ServerOrder', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ServerOrder>(
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

  /// Get full hardware, network, and lifecycle details for a dedicated server
  /// Use to fetch complete configuration for one dedicated server — hardware, network/VLAN/IP layout, asset assignments, location, status, billing references, and client action links. Path param: &#x60;id&#x60; (integer server_id, from &#x60;getServerList&#x60;). No body. Returns: &#x60;ViewServer::getDetails()&#x60; shape: &#x60;serviceInfo&#x60;, &#x60;networkInfo&#x60; (vlans + assets, with &#x60;ipmi_admin_username&#x60;/&#x60;ipmi_admin_password&#x60; and admin lease creds REDACTED for client safety), normalized &#x60;client_links&#x60;, &#x60;serviceType&#x60;. &#x60;admin_links&#x60;/raw &#x60;settings&#x60;/&#x60;csrf&#x60; stripped. Errors: 404 not owned; 401 unauth. Sibling ops: &#x60;getServerInvoices&#x60;, &#x60;serverIpmiLiveGet&#x60;, &#x60;serverIpmiPowerGet&#x60; (single — prefer &#x60;serverBulkIpmiPowerGet&#x60; for many), &#x60;getServerReverseDns&#x60;, &#x60;getServersWelcomeEmail&#x60;, &#x60;serversCancel&#x60;.
  ///
  /// Parameters:
  /// * [id] - Server ID number.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [Server] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<Server>> getServerInfo({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}'.replaceAll('{' r'id' '}', id.toString());
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

    Server? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<Server, Server>(rawData, 'Server', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<Server>(
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

  /// List billing invoices (charges + payments) tied to one dedicated server
  /// Use to retrieve the invoice history for a single dedicated server — e.g. before a cancel, refund, or to show outstanding balances. Path param: &#x60;id&#x60; (integer server_id from &#x60;getServerList&#x60;). No body. Inherits from &#x60;MyAdmin\\Api\\Billing\\InvoicesList&#x60; with module&#x3D;servers. Returns: &#x60;ChargeInvoiceRows&#x60; array — invoice rows with id, date, amount, status, currency, line items. Errors: 404 if &#x60;id&#x60; not owned by the caller; 401 unauth. Sibling ops: &#x60;getServerInfo&#x60; (current service state), &#x60;serversCancel&#x60; (cancel), &#x60;getBillingInvoice&#x60; (single invoice by invoice id), &#x60;getVpsInvoices&#x60;/&#x60;getDomainInvoices&#x60; for other modules, &#x60;getServersWelcomeEmail&#x60; to resend setup info.
  ///
  /// Parameters:
  /// * [id] - Server ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ChargeInvoiceRows] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ChargeInvoiceRows>> getServerInvoices({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}/invoices'.replaceAll('{' r'id' '}', id.toString());
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

  /// List all dedicated servers owned by the authenticated customer
  /// Use to enumerate physical bare-metal dedicated servers on the calling account. No params, no body. Filters &#x60;servers&#x60; by session &#x60;account_id&#x60;. Returns: array of &#x60;{ server_id, account_lid, server_hostname, server_status }&#x60;. Use &#x60;server_id&#x60; with &#x60;getServerInfo&#x60; for full hardware/network/IPMI details, &#x60;getServerInvoices&#x60; for billing, or &#x60;serverIpmiPowerGet&#x60; for chassis power state. Errors: 401 if not authenticated; empty array if account owns no servers. Sibling ops: &#x60;getServerInfo&#x60; (details), &#x60;getVpsList&#x60; (virtual instead of physical hardware), &#x60;getMPServers&#x60; (purchasable inventory, not owned). For IPMI status across many servers in one call, prefer &#x60;serverBulkIpmiPowerGet&#x60;.
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<ServerRow>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<ServerRow>>> getServerList({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers';
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

    List<ServerRow>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<ServerRow>, ServerRow>(rawData, 'List<ServerRow>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<ServerRow>>(
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

  /// List current reverse-DNS (PTR) records for a dedicated server&#39;s IPs
  /// Use to read the existing PTR/rDNS hostnames assigned to each public IP in the server&#39;s VLANs — typically before calling &#x60;postServerReverseDns&#x60; to update them. Path param: &#x60;id&#x60; (integer server_id). No body. Walks &#x60;networkInfo.vlans&#x60;, expands each network to usable host IPs (handles /31 and /32 edge cases), and resolves each via &#x60;get_hostname()&#x60;. Returns: &#x60;{ ips: { &#39;&lt;ipv4&gt;&#39;: &#39;&lt;ptr_or_empty_string&gt;&#39;, ... } }&#x60;. Empty string indicates no PTR set. Errors: 404 if &#x60;id&#x60; not owned by caller; 401 unauth. Sibling ops: &#x60;postServerReverseDns&#x60; (update PTRs), &#x60;getServerInfo&#x60; (full network), &#x60;getVpsReverseDns&#x60; for VPS, &#x60;getDomainNameservers&#x60; / DNS endpoints for forward records. Note rDNS propagation is delegated to the in-addr.arpa zone — changes are not always instant.
  ///
  /// Parameters:
  /// * [id] - Server ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ReverseDnsEntries] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ReverseDnsEntries>> getServerReverseDns({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}/reverse_dns'.replaceAll('{' r'id' '}', id.toString());
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

    ReverseDnsEntries? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ReverseDnsEntries, ReverseDnsEntries>(rawData, 'ReverseDnsEntries', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ReverseDnsEntries>(
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

  /// Resend the dedicated server welcome email with setup credentials
  /// Use when the customer asks for the original setup/login info to be re-sent (root password, IPs, control-panel URL). Path param: &#x60;id&#x60; (integer server_id, must be &#x60;active&#x60;). No body. Invokes &#x60;server_welcome_email($id)&#x60; which re-sends the welcome message to the account&#39;s email. Returns: &#x60;{ text:&#39;Welcome Email has been resent.&#39; }&#x60;. Errors: 404 if &#x60;id&#x60; not owned by caller; 409 if service not active (cancelled/pending/suspended); 401 unauth. Caveat: re-sending is rate-sensitive; do not call repeatedly in a loop. The email may contain root credentials — confirm intent before triggering. Sibling ops: &#x60;getServerInfo&#x60; (status check), &#x60;getServerInvoices&#x60;, &#x60;getVpsWelcomeEmail&#x60; for VPS, &#x60;getDomainsWelcomeEmail&#x60; for domains.
  ///
  /// Parameters:
  /// * [id] - Server ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SuccessTextResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SuccessTextResponse>> getServersWelcomeEmail({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}/welcome_email'.replaceAll('{' r'id' '}', id.toString());
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

    SuccessTextResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SuccessTextResponse, SuccessTextResponse>(rawData, 'SuccessTextResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SuccessTextResponse>(
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

  /// Place a Rapid Deploy / coupon dedicated server order; creates real invoice
  /// Step 2 of the Rapid Deploy / coupon order flow. Commits a marketplace asset OR coupon-based dedicated server order. Inserts the &#x60;servers&#x60; row, creates a &#x60;Repeat_Invoice&#x60; plus the first &#x60;invoices&#x60; row, marks the asset &#x60;MarketPlace-Incart&#x60; (or decrements &#x60;server_coupons.in_stock&#x60;), then emails customer + admin. **Real billable order — confirm intent first.** Sibling ops: &#x60;buyItNowServerOrder&#x60; (catalog), &#x60;getServerInfo&#x60; (poll provisioning), &#x60;getServerInvoices&#x60; (billing), &#x60;addServer&#x60; (custom build alternative).  **Query (one required, same as &#x60;buyItNowServerOrder&#x60;):** - &#x60;a&#x60; (integer) — asset_id. - &#x60;c&#x60; (string) — &#x60;server_coupons.name&#x60;.  **Body fields:** - &#x60;hostname&#x60; (string, required) — valid FQDN; validated by &#x60;valid_hostname&#x60;. - &#x60;enablepassword&#x60; (boolean, optional, default &#x60;false&#x60;) — when true the client must supply &#x60;rootPassword&#x60;; otherwise a secure password is generated server-side via &#x60;generate_password()&#x60;. - &#x60;rootPassword&#x60; (string, required when &#x60;enablepassword&#x3D;true&#x60;) — must be ≥8 chars with at least one uppercase, lowercase, digit, and special character (&#x60;valid_password&#x60;). - &#x60;os&#x60;, &#x60;bandwidth&#x60;, &#x60;ips&#x60;, &#x60;cp&#x60;, &#x60;raid&#x60; (integer, optional) — option ids from &#x60;buyItNowServerOrder&#x60;; defaults &#x60;30&#x60; / &#x60;10&#x60; / &#x60;9&#x60; / &#x60;1&#x60; / &#x60;0&#x60; applied when missing. - &#x60;comments&#x60; (string, optional) — appended to the order comment.  **Returns:** &#x60;201 { success: true, text: &#39;Server order is placed.&#39;, service_id, invoice_id }&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;400&#x60; — &#x60;&#39;Server Hostname is missing.&#39;&#x60; / &#x60;&#39;Invalid Hostname!&#39;&#x60; / &#x60;&#39;Server Password is missing.&#39;&#x60; / password complexity message. - &#x60;409&#x60; — &#x60;&#39;Server already sold!&#39;&#x60; / &#x60;&#39;Server Out of stock.&#39;&#x60; - &#x60;401&#x60; — unauthenticated.  **Side effects:** inserts &#x60;servers&#x60; row, creates &#x60;repeat_invoices&#x60; + &#x60;invoices&#x60; rows, updates &#x60;assets.status&#x60; or &#x60;server_coupons.in_stock&#x60;, queues admin + customer welcome emails.  **Related calls:** - **Prerequisite:** &#x60;buyItNowServerOrder&#x60;. - **Next:** &#x60;getBillingInvoice&#x60; + &#x60;initiatePayment&#x60; to pay, then poll &#x60;getServerInfo&#x60; for provisioning state. - **Custom build alternative:** &#x60;addServer&#x60;. 
  ///
  /// Parameters:
  /// * [placeBuyNowServerRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ServersBuyNowResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ServersBuyNowResponse>> placeBuyNowServer({ 
    PlaceBuyNowServerRequest? placeBuyNowServerRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/order/buy_now_server';
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
      _bodyData = jsonEncode(placeBuyNowServerRequest);

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

    ServersBuyNowResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ServersBuyNowResponse, ServersBuyNowResponse>(rawData, 'ServersBuyNowResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ServersBuyNowResponse>(
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

  /// Update reverse-DNS (PTR) hostnames on a dedicated server&#39;s IPs
  /// Use to set or remove PTR records for the server&#39;s public IPs. Path param: &#x60;id&#x60; (server_id). Body: &#x60;ips&#x60; (object mapping &#x60;&#39;&lt;ipv4&gt;&#39;&#x60; to desired hostname; empty string removes the PTR). Only IPs that already exist on the server&#39;s VLANs and whose hostname differs from current are updated; each diff calls &#x60;reverse_dns($ip, $host, &#39;set_reverse&#39;|&#39;remove_reverse&#39;)&#x60;. Returns: &#x60;{ message, success:bool }&#x60;. &#x60;success:false&#x60; with &#39;No valid IPs were passed or there were no changes&#39; when nothing to update; otherwise reports update count. Errors: 404 invalid id; 401 unauth. Caveats: caller can only set PTRs for IPs they actually own; rDNS propagation is async — do not assume immediate visibility downstream. Sibling ops: &#x60;getServerReverseDns&#x60; (read first), &#x60;getServerInfo&#x60;, VPS counterpart &#x60;postVpsReverseDns&#x60;.
  ///
  /// Parameters:
  /// * [reverseDnsEntries] 
  /// * [id] - Server ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TextResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TextResponse>> postServerReverseDns({ 
    required ReverseDnsEntries reverseDnsEntries,
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}/reverse_dns'.replaceAll('{' r'id' '}', id.toString());
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
      _bodyData = jsonEncode(reverseDnsEntries);

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

    TextResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TextResponse, TextResponse>(rawData, 'TextResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TextResponse>(
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

  /// Read IPMI chassis power status for many dedicated servers in one call
  /// Use when you need power status for several owned servers at once (dashboards, mass health checks). Each server is queried independently; per-server failures (invalid id, inactive service, no asset, BMC error) are reported in the same response without aborting the batch. Read-only — does NOT change power state. Query: &#x60;ids&#x60; (required) — comma-separated string &#x60;?ids&#x3D;2313,2314,2315&#x60; OR repeated &#x60;ids[]&#x60; array. Duplicates de-duped; non-positive ints become per-row errors. Returns: &#x60;{ results: [ { id, asset?, text|error } ] }&#x60;. Errors: 400 &#39;No server IDs provided.&#39; if &#x60;ids&#x60; empty/missing; 401 unauth. Sibling ops: &#x60;serverIpmiPowerGet&#x60; (single-server equivalent), &#x60;serverIpmiPowerPost&#x60; (DESTRUCTIVE — change power; no bulk equivalent — call per server), &#x60;getServerList&#x60; (discover ids).
  ///
  /// Parameters:
  /// * [ids] - Comma-separated list of Server IDs to query (e.g. `2313,2314,2315`). May also be passed as repeated `ids[]` query parameters.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ServerBulkIpmiPowerResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ServerBulkIpmiPowerResponse>> serverBulkIpmiPowerGet({ 
    required String ids,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/bulk/ipmi_power';
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
      r'ids': ids,
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ServerBulkIpmiPowerResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ServerBulkIpmiPowerResponse, ServerBulkIpmiPowerResponse>(rawData, 'ServerBulkIpmiPowerResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ServerBulkIpmiPowerResponse>(
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

  /// Read current IPMI Live whitelist + KVM gateway URL for a dedicated server
  /// Reads the active IPMI Live session for a dedicated server — the temporary whitelisted public IP, the customer-side IPMI gateway URL, and the IPMI client (read-only) credentials so the customer can open the KVM/console. Looks up the asset&#39;s IPMI IP, the location&#39;s IPMI group, and any active &#x60;ipmi_ips&#x60; lease (3-hour TTL). Sibling ops: &#x60;serverIpmiLivePost&#x60; (allocate whitelist slot), &#x60;serverIpmiPowerGet&#x60; / &#x60;serverIpmiPowerPost&#x60; (chassis power).  **Path:** &#x60;id&#x60; (integer, required) — server_id from &#x60;getServerList&#x60;.  **Body / query:** None. Optionally pass &#x60;asset&#x60; (asset_id) to target a specific asset; default is first asset.  **Returns:** when an active lease exists &#x60;{ text (html), public_ip, allowed_ip, client_username, client_password }&#x60;. When no lease yet: &#x60;{ text: &#39;Setup not yet completed&#39; }&#x60; — then call &#x60;serverIpmiLivePost&#x60; to allocate a slot.  **Auth:** Session/API key. Ownership enforced via &#x60;server_custid&#x60;.  **Errors:** - &#x60;404&#x60; — &#x60;id&#x60; not owned, or &#x60;asset&#x60; not on this server. - &#x60;409&#x60; — service not &#x60;active&#x60;. - &#x60;200&#x60; with error text &#x60;&#39;No IPMI IP Set&#39;&#x60; / &#x60;&#39;Invalid IPMI IP&#39;&#x60; / &#x60;&#39;Live IPMI not Available for this location.&#39;&#x60; when the asset/location is not configured for IPMI Live.  **Caveat:** returns &#x60;client_password&#x60; — never log/echo verbatim.  **Related calls:** - **Allocate:** &#x60;serverIpmiLivePost&#x60;. - **Chassis power:** &#x60;serverIpmiPowerGet&#x60;, &#x60;serverIpmiPowerPost&#x60;. 
  ///
  /// Parameters:
  /// * [id] - Server ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ServerIpmiLiveInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ServerIpmiLiveInfo>> serverIpmiLiveGet({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}/ipmi_live'.replaceAll('{' r'id' '}', id.toString());
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

    ServerIpmiLiveInfo? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ServerIpmiLiveInfo, ServerIpmiLiveInfo>(rawData, 'ServerIpmiLiveInfo', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ServerIpmiLiveInfo>(
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

  /// Whitelist an IP for IPMI Live KVM gateway access (3-hour lease)
  /// Allocates / refreshes an IPMI Live whitelist slot so the customer&#39;s specified IP can reach the BMC&#39;s KVM/console for 3 hours. Picks a free &#x60;ipmi_ips&#x60; row for the location&#39;s &#x60;ipmi_group&#x60;, refreshes the lease if the same IP is already allocated, otherwise pushes the new whitelist via &#x60;ipmi_live_setup()&#x60;. Sibling ops: &#x60;serverIpmiLiveGet&#x60; (read current lease), &#x60;serverIpmiPowerPost&#x60; (DESTRUCTIVE — chassis power).  **Path:** &#x60;id&#x60; (integer, required) — server_id.  **Body fields:** - &#x60;ip&#x60; (string, required) — public IPv4 to whitelist. - &#x60;asset&#x60; (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** &#x60;{ text (html), public_ip, allowed_ip, client_username, client_password }&#x60; for KVM login.  **Auth:** Session/API key. Ownership enforced via &#x60;server_custid&#x60;.  **Errors:** - &#x60;404&#x60; — &#x60;id&#x60; not owned, or &#x60;asset&#x60; not on this server. - &#x60;409&#x60; — service not &#x60;active&#x60;. - &#x60;200&#x60; with error text — &#x60;&#39;An Invalid IP was passed.&#39;&#x60;, &#x60;&#39;No Live IPs are currently free for use with the IPMI Gateway. Please wait &lt;duration&gt; for the next IP to free up.&#39;&#x60;, &#x60;&#39;There was an error communicating with the IPMI Management server&#39;&#x60;, &#x60;&#39;No IPMI IP Set&#39;&#x60; / &#x60;&#39;Invalid IPMI IP&#39;&#x60; / &#x60;&#39;Live IPMI not Available for this location.&#39;&#x60;.  **Caveat:** returns IPMI client password — handle securely; whitelist exposes the BMC briefly.  **Related calls:** - **Read current lease:** &#x60;serverIpmiLiveGet&#x60;. - **Power control:** &#x60;serverIpmiPowerPost&#x60;. 
  ///
  /// Parameters:
  /// * [ip] - Your IP Address you wish to connect to the IPMI system from.
  /// * [id] - Server ID number
  /// * [asset] - Asset ID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ServerIpmiLiveInfo] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ServerIpmiLiveInfo>> serverIpmiLivePost({ 
    required String ip,
    required int id,
    int? asset,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}/ipmi_live'.replaceAll('{' r'id' '}', id.toString());
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
        if (asset != null) r'asset': asset,
        r'ip': ip,
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

    ServerIpmiLiveInfo? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ServerIpmiLiveInfo, ServerIpmiLiveInfo>(rawData, 'ServerIpmiLiveInfo', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ServerIpmiLiveInfo>(
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

  /// Read IPMI chassis power status for a dedicated server (single)
  /// Use to check whether a server&#39;s chassis is currently &#x60;on&#x60;/&#x60;off&#x60; via IPMI before issuing a power action. Path param: &#x60;id&#x60; (integer server_id). Optional body &#x60;asset&#x60; (asset_id — defaults to first asset). Issues &#x60;ipmitool power status&#x60; against the asset&#39;s &#x60;ipmi_ip&#x60; using its location IPMI group/credentials. Returns: &#x60;{ text:&#39;Chassis Power is on&#39; }&#x60; (or &#39;off&#39;). Errors: 404 if &#x60;id&#x60; not owned by caller; 409 if service not active; &#39;There was an error sending the IPMI command&#39; if BMC unreachable. Caveat: BMCs occasionally rate-limit — back off on repeated errors. Sibling ops: &#x60;serverBulkIpmiPowerGet&#x60; (preferred when polling many servers — single round-trip), &#x60;serverIpmiPowerPost&#x60; (DESTRUCTIVE — change power), &#x60;getServerInfo&#x60; (full state), &#x60;serverIpmiLiveGet&#x60; (IPMI Live KVM).
  ///
  /// Parameters:
  /// * [id] - Server ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TextResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TextResponse>> serverIpmiPowerGet({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}/ipmi_power'.replaceAll('{' r'id' '}', id.toString());
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

    TextResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TextResponse, TextResponse>(rawData, 'TextResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TextResponse>(
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

  /// DESTRUCTIVE — change chassis power state on a bare-metal server
  /// Sends an IPMI chassis power command (&#x60;on&#x60;, &#x60;off&#x60;, &#x60;cycle&#x60;, &#x60;reset&#x60;, &#x60;soft&#x60;) to a customer&#39;s physical dedicated server. **DESTRUCTIVE on running hardware:** &#x60;off&#x60; / &#x60;cycle&#x60; / &#x60;reset&#x60; are forced power events that can corrupt filesystems, lose un-flushed data, or break in-flight workloads. &#x60;soft&#x60; requests an ACPI shutdown (safer when the guest OS is responsive). Always confirm intent with the operator. Sibling ops: &#x60;serverIpmiPowerGet&#x60; (read first), &#x60;serverBulkIpmiPowerGet&#x60; (status only), &#x60;serverIpmiLivePost&#x60; (KVM access).  **Path:** &#x60;id&#x60; (integer, required) — server_id.  **Body fields:** - &#x60;action&#x60; (string, required) — one of &#x60;on&#x60; / &#x60;off&#x60; / &#x60;cycle&#x60; / &#x60;reset&#x60; / &#x60;soft&#x60;. - &#x60;asset&#x60; (integer, optional) — asset_id; defaults to first asset on the server.  **Returns:** &#x60;{ text: &#39;Power command sent. Response: &lt;ipmi output&gt;&#39; }&#x60;.  **Auth:** Session/API key. Ownership enforced via &#x60;server_custid&#x60;.  **Errors:** - &#x60;422&#x60; / inline error text — &#x60;Invalid Action&#x60; when &#x60;action&#x60; is not in the allowed set. - &#x60;404&#x60; — &#x60;id&#x60; not owned, or &#x60;asset&#x60; not on this server. - &#x60;409&#x60; — service not &#x60;active&#x60;. - &#x60;200&#x60; with error text — &#x60;&#39;There was an error sending the IPMI command.&#39;&#x60; when BMC is unreachable or rate-limiting.  **Related calls:** - **Status (single / bulk):** &#x60;serverIpmiPowerGet&#x60;, &#x60;serverBulkIpmiPowerGet&#x60;. - **KVM console:** &#x60;serverIpmiLivePost&#x60;. 
  ///
  /// Parameters:
  /// * [action] - The power action to send to the ipmi controller.
  /// * [id] - Server ID number
  /// * [asset] - The Asset ID
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [TextResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<TextResponse>> serverIpmiPowerPost({ 
    required String action,
    required int id,
    int? asset,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}/ipmi_power'.replaceAll('{' r'id' '}', id.toString());
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
        if (asset != null) r'asset': asset,
        r'action': action,
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

    TextResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<TextResponse, TextResponse>(rawData, 'TextResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<TextResponse>(
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

  /// Cancel a dedicated server service at the end of the current billing cycle
  /// Submits a cancellation request for a dedicated server. The server is deprovisioned and recurring billing stops at the end of the current billing cycle (not an immediate refund). Path param: &#x60;id&#x60; (integer server_id, from &#x60;getServerList&#x60;). No body. Caveat: billing-affecting action — always confirm with the user. Hardware-attached data may be wiped on deprovisioning. Returns: &#x60;{ success:bool, text:&#39;Servers is canceled.&#39; }&#x60;. Errors: 404 if &#x60;id&#x60; not owned by caller; 409 if already cancelled or non-active; 401 unauth. Sibling ops: &#x60;getServerInfo&#x60; (current status), &#x60;getServerInvoices&#x60; (outstanding charges), VPS counterpart &#x60;VPSCancel&#x60;. To re-order after cancel use &#x60;addServer&#x60; or &#x60;placeBuyNowServer&#x60;.
  ///
  /// Parameters:
  /// * [id] - Server ID number
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ServersCancel200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ServersCancel200Response>> serversCancel({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}'.replaceAll('{' r'id' '}', id.toString());
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

    ServersCancel200Response? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<ServersCancel200Response, ServersCancel200Response>(rawData, 'ServersCancel200Response', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ServersCancel200Response>(
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

  /// Update settings on a dedicated server order (shares handler with view)
  /// Use to modify metadata on an existing dedicated server order. Path param: &#x60;id&#x60; (integer server_id). Currently this method shares the same handler as &#x60;getServerInfo&#x60; (&#x60;View::go()&#x60;) — no dedicated update fields are processed; treat it as deprecated/no-op pending field-specific endpoints. For hostname, password, or rDNS changes use the dedicated ops below. Returns: same payload shape as &#x60;getServerInfo&#x60;. Errors: 404 if &#x60;id&#x60; not owned by caller; 401 unauth. Sibling ops: prefer &#x60;postServerReverseDns&#x60; (rDNS), &#x60;serverIpmiPowerPost&#x60; (power), &#x60;serverIpmiLivePost&#x60; (IPMI access), &#x60;serversCancel&#x60; (cancel). For new orders use &#x60;addServer&#x60; or &#x60;placeBuyNowServer&#x60;. View-only: &#x60;getServerInfo&#x60;.
  ///
  /// Parameters:
  /// * [id] - Server ID number.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SuccessTextResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SuccessTextResponse>> updateServerInfo({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/servers/{id}'.replaceAll('{' r'id' '}', id.toString());
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
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    SuccessTextResponse? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<SuccessTextResponse, SuccessTextResponse>(rawData, 'SuccessTextResponse', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SuccessTextResponse>(
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
