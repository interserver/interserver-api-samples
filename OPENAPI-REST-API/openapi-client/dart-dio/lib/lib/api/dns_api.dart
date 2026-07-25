//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

// ignore: unused_import
import 'dart:convert';
import 'package:interserver_api/lib/deserialize.dart';
import 'package:dio/dio.dart';

import 'package:interserver_api/lib/model/dns_list_item.dart';
import 'package:interserver_api/lib/model/dns_record.dart';
import 'package:interserver_api/lib/model/dns_record_type.dart';
import 'package:interserver_api/lib/model/get_account_info401_response.dart';
import 'package:interserver_api/lib/model/success_text_response.dart';

class DNSApi {

  final Dio _dio;

  const DNSApi(this._dio);

  /// Create a new authoritative DNS zone seeded with apex A + NS + SOA records
  /// Creates a new authoritative zone in PowerDNS for this account and seeds it with a default record set: apex &#x60;A&#x60; record pointing at &#x60;ip&#x60;, &#x60;NS&#x60; records for InterServer&#39;s &#x60;cdns1.interserver.net&#x60; / &#x60;cdns2.interserver.net&#x60; anycast resolvers, and an &#x60;SOA&#x60;. Served immediately by InterServer&#39;s nameservers via supermaster propagation. **Important:** this only creates the hosted zone — the customer must still point their registrar&#39;s nameservers at &#x60;cdns1.interserver.net&#x60; / &#x60;cdns2.interserver.net&#x60; for queries to resolve through this zone (use &#x60;updateDomainNameservers&#x60; if the domain is registered through InterServer). Sibling ops: &#x60;getDnsList&#x60;, &#x60;getDnsDomain&#x60;, &#x60;addDnsRecord&#x60;, &#x60;updateDomainNameservers&#x60;.  **Body fields (form or JSON, schema &#x60;DnsNewDomain&#x60;):** - &#x60;domain&#x60; (string, required) — FQDN of the zone (e.g. &#x60;example.com&#x60;). - &#x60;ip&#x60; (string, required) — IPv4 address for the apex A record.  **Returns:** &#x60;SuccessTextResponse&#x60; — status text confirming the zone was created.  **Side effects:** - Inserts &#x60;domains&#x60; row scoped to session &#x60;account_id&#x60;. - Inserts default &#x60;records&#x60; rows: apex &#x60;A&#x60;, two &#x60;NS&#x60;, one &#x60;SOA&#x60;.  **Auth:** Session/API key.  **Errors:** - &#x60;400&#x60; — missing &#x60;domain&#x60; or &#x60;ip&#x60;. - &#x60;401&#x60; — unauthenticated. - &#x60;409&#x60; — zone already exists.  **Related calls:** - **Find new zone id:** &#x60;getDnsList&#x60;. - **Add more records:** &#x60;addDnsRecord&#x60;. - **Update registrar nameservers:** &#x60;updateDomainNameservers&#x60; (Domains tag).  **Example request:** &#x60;&#x60;&#x60;json { \&quot;domain\&quot;: \&quot;mydomain.com\&quot;, \&quot;ip\&quot;: \&quot;203.0.113.42\&quot; } &#x60;&#x60;&#x60; 
  ///
  /// Parameters:
  /// * [domain] - The domain name.
  /// * [ip] - IP Address to point the domain to.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SuccessTextResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SuccessTextResponse>> addDnsDomain({ 
    required String domain,
    required String ip,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dns';
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
        r'domain': domain,
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

  /// Add a DNS record (A, AAAA, MX, TXT, CNAME, NS, SRV, CAA, ...) to a zone
  /// Adds a single record to the zone identified by path &#x60;id&#x60;. Type is validated against the global &#x60;$rtypes&#x60; allowlist (A, AAAA, CNAME, MX, TXT, NS, SRV, CAA, PTR, SPF, TLSA, etc.); content is validated against the record type by &#x60;validate_input()&#x60;. The record goes live on PowerDNS immediately; resolvers honor the existing TTL on any cached answer. Sibling ops: &#x60;getDnsDomain&#x60; (find record id afterward), &#x60;updateDnsRecord&#x60;, &#x60;deleteDnsRecord&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;.  **Body fields (form or JSON, schema &#x60;DnsNewRecord&#x60;):** - &#x60;name&#x60; (string, required) — FQDN of the record (must be at or below the zone apex). - &#x60;type&#x60; (string, required) — &#x60;A&#x60; / &#x60;AAAA&#x60; / &#x60;CNAME&#x60; / &#x60;MX&#x60; / &#x60;TXT&#x60; / &#x60;NS&#x60; / &#x60;SRV&#x60; / &#x60;CAA&#x60; / &#x60;PTR&#x60; / &#x60;SPF&#x60; / &#x60;TLSA&#x60; (must be in &#x60;$rtypes&#x60;). - &#x60;content&#x60; (string, required) — value matching &#x60;type&#x60; syntax (IPv4 for A, IPv6 for AAAA, hostname for CNAME/NS/MX, free text for TXT). - &#x60;ttl&#x60; (integer, optional, default 86400) — seconds. - &#x60;prio&#x60; (integer, optional, default 0) — priority (MX/SRV only).  **Returns:** &#x60;{success: true, text: \&quot;Record added\&quot;}&#x60;.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Type must be one of: ...&#x60; — &#x60;type&#x60; not in allowlist. - &#x60;invalid or missing domain or record id&#x60; — zone not found / not owned. - Content-format validation failure (&#x60;text&#x60; describes the issue).  **Related calls:** - **Find new record id:** &#x60;getDnsDomain&#x60;. - **Edit later:** &#x60;updateDnsRecord&#x60;. - **Delete:** &#x60;deleteDnsRecord&#x60;. 
  ///
  /// Parameters:
  /// * [name] - Name part of record
  /// * [type] 
  /// * [content] - Content of record
  /// * [id] - The DNS Domain ID.
  /// * [ttl] - Time-to-live
  /// * [prio] - Priority
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future]
  /// Throws [DioException] if API call or serialization fails
  Future<Response<void>> addDnsRecord({ 
    required String name,
    required DnsRecordType type,
    required String content,
    required String id,
    int? ttl,
    int? prio,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dns/{id}'.replaceAll('{' r'id' '}', id.toString());
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
        r'name': name,
        r'type': type,
        r'content': content,
        if (ttl != null) r'ttl': ttl,
        if (prio != null) r'prio': prio,
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

    return _response;
  }

  /// Permanently delete a DNS zone and every record it contains
  /// Removes the zone identified by path &#x60;id&#x60; AND every record it contains from PowerDNS in a single transaction. **Permanent — no soft-delete, no undo.** Any service relying on these records (web, mail, SPF/DKIM, third-party domain verifications, ACME challenges) will start failing as resolver caches expire (per-record TTL, default 86400s). **Note:** this only deletes the hosted zone on InterServer&#39;s nameservers — it does not affect registrar delegation. If &#x60;cdns1&#x60;/&#x60;cdns2&#x60; are still delegated at the registrar, queries will return NXDOMAIN/SERVFAIL until delegation is changed or the zone is recreated. Sibling ops: &#x60;deleteDnsRecord&#x60; (delete one record only), &#x60;addDnsDomain&#x60; (recreate), &#x60;updateDomainNameservers&#x60; (change registrar delegation).  **Path param:** - &#x60;id&#x60; (string, required) — zone ID from &#x60;getDnsList&#x60;.  **Returns:** &#x60;{success: true, text: \&quot;Domain deleted\&quot;}&#x60;.  **Side effects:** - Deletes every &#x60;records&#x60; row with &#x60;domain_id&#x3D;{id}&#x60;. - Deletes the &#x60;domains&#x60; row.  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;invalid or missing domain or record id&#x60; — zone not found / not owned.  **Related calls:** - **Delete one record only:** &#x60;deleteDnsRecord&#x60;. - **Recreate the zone:** &#x60;addDnsDomain&#x60;. - **Update registrar delegation:** &#x60;updateDomainNameservers&#x60; (Domains tag). 
  ///
  /// Parameters:
  /// * [id] - The DNS domain ID to delete. Use the `id` from `GET /dns` to identify the domain.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SuccessTextResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SuccessTextResponse>> deleteDnsDomain({ 
    required String id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dns/{id}'.replaceAll('{' r'id' '}', id.toString());
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

  /// Permanently delete one DNS record from a zone — zone itself is preserved
  /// Removes the record identified by &#x60;recordId&#x60; from zone &#x60;domainId&#x60;. The zone itself remains intact — only the one record is dropped. **Permanent** — applied to PowerDNS immediately, but resolvers continue to answer with cached values until the previous TTL expires. Use to surgically remove an A/AAAA/MX/TXT etc. record; to drop the entire zone and all its records, use &#x60;deleteDnsDomain&#x60;. Sibling ops: &#x60;getDnsDomain&#x60; (verify after deletion), &#x60;deleteDnsDomain&#x60;, &#x60;updateDnsRecord&#x60;.  **Path params:** - &#x60;domainId&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;. - &#x60;recordId&#x60; (integer, required) — record ID from &#x60;getDnsDomain.id&#x60;.  **Returns:** &#x60;{success: true, text: \&quot;domain record deleted\&quot;}&#x60;.  **Auth:** Session/API key. Zone ownership enforced via &#x60;get_dns_domain($domainId)&#x60;.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;invalid or missing domain or record id&#x60; — zone/record not found or not owned. - &#x60;error removing domain record&#x60; — underlying DB delete failed.  **Related calls:** - **Verify after delete:** &#x60;getDnsDomain&#x60;. - **Recreate:** &#x60;addDnsRecord&#x60;. - **Delete entire zone instead:** &#x60;deleteDnsDomain&#x60;. 
  ///
  /// Parameters:
  /// * [domainId] - The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
  /// * [recordId] - The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SuccessTextResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SuccessTextResponse>> deleteDnsRecord({ 
    required int domainId,
    required int recordId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dns/{domainId}/{recordId}'.replaceAll('{' r'domainId' '}', domainId.toString()).replaceAll('{' r'recordId' '}', recordId.toString());
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

  /// List every DNS record in one zone with the IDs needed to edit or delete them
  /// Returns the full record set for the specified PowerDNS zone (NS, A, AAAA, CNAME, MX, TXT, SRV, CAA, SOA, etc.) in a single response. Ownership is enforced via &#x60;get_dns_domain($id)&#x60; against the session account — cross-account access returns an error rather than 200. Use a returned record &#x60;id&#x60; together with the zone &#x60;id&#x60; to call &#x60;updateDnsRecord&#x60; or &#x60;deleteDnsRecord&#x60;. Sibling ops: &#x60;getDnsList&#x60;, &#x60;addDnsRecord&#x60;, &#x60;updateDnsRecord&#x60;, &#x60;deleteDnsRecord&#x60;, &#x60;deleteDnsDomain&#x60;.  **Path param:** - &#x60;id&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;.  **Returns:** Array of &#x60;DnsRecord&#x60;: - &#x60;id&#x60; (string) — record ID; pass to &#x60;updateDnsRecord&#x60; / &#x60;deleteDnsRecord&#x60;. - &#x60;domain_id&#x60; (string) — parent zone ID. - &#x60;name&#x60; (string) — FQDN of the record (apex or subdomain). - &#x60;type&#x60; (string) — &#x60;A&#x60; / &#x60;AAAA&#x60; / &#x60;CNAME&#x60; / &#x60;MX&#x60; / &#x60;TXT&#x60; / &#x60;NS&#x60; / &#x60;SRV&#x60; / &#x60;CAA&#x60; / &#x60;SOA&#x60; / &#x60;PTR&#x60; / &#x60;SPF&#x60; / &#x60;TLSA&#x60;. - &#x60;content&#x60; (string) — record value (IP for A/AAAA, hostname for CNAME/NS/MX, free text for TXT, etc.). - &#x60;ttl&#x60; (string) — seconds; default 86400. - &#x60;prio&#x60; (string) — priority for MX/SRV (&#x60;0&#x60; for non-priority records). - &#x60;disabled&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;), &#x60;ordername&#x60; (string), &#x60;auth&#x60; (string &#x60;0&#x60;/&#x60;1&#x60;).  **Auth:** Session/API key. Ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;invalid or missing domain or record id&#x60; — zone not found or owned by another account.  **Related calls:** - **Add a record:** &#x60;addDnsRecord&#x60; (POST same path). - **Update a record:** &#x60;updateDnsRecord&#x60; (&#x60;POST /dns/{domainId}/{recordId}&#x60;). - **Delete a record:** &#x60;deleteDnsRecord&#x60;. - **Delete the whole zone:** &#x60;deleteDnsDomain&#x60; (DELETE same path). 
  ///
  /// Parameters:
  /// * [id] - The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<DnsRecord>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<DnsRecord>>> getDnsDomain({ 
    required int id,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dns/{id}'.replaceAll('{' r'id' '}', id.toString());
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

    List<DnsRecord>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<DnsRecord>, DnsRecord>(rawData, 'List<DnsRecord>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<DnsRecord>>(
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

  /// List DNS zones hosted on the account with each zone&#39;s apex A-record IP
  /// Returns every PowerDNS-hosted authoritative zone owned by the authenticated account, one row per zone, with the IP from the apex &#x60;A&#x60; record. Canonical entry point for discovering zone IDs before reading or editing records. The list is filtered server-side by session &#x60;account_id&#x60; — cross-account zones are never returned. Empty array means the account holds no zones (not an error). **Note:** this is the hosted DNS zone list, not registrar delegation — use the Domains tag&#39;s &#x60;updateDomainNameservers&#x60; to point a registered domain at &#x60;cdns1.interserver.net&#x60;/&#x60;cdns2.interserver.net&#x60;. Sibling ops: &#x60;getDnsDomain&#x60;, &#x60;addDnsDomain&#x60;, &#x60;addDnsRecord&#x60;, &#x60;deleteDnsDomain&#x60;.  **Path/Query/Body:** None.  **Returns:** Array of &#x60;DnsListItem&#x60;: - &#x60;id&#x60; (integer) — zone ID; pass to &#x60;getDnsDomain&#x60; / &#x60;addDnsRecord&#x60; / &#x60;deleteDnsDomain&#x60;. - &#x60;name&#x60; (string) — zone FQDN (e.g. &#x60;example.com&#x60;). - &#x60;content&#x60; (string) — IP from the apex &#x60;A&#x60; record matching the zone name (empty when no apex A exists yet).  **Auth:** Session/API key.  **Errors:** - &#x60;401&#x60; — unauthenticated.  **Related calls:** - **Per-zone record list:** &#x60;getDnsDomain&#x60;. - **Add a zone:** &#x60;addDnsDomain&#x60;. - **Add a record to an existing zone:** &#x60;addDnsRecord&#x60;. - **Registrar delegation:** &#x60;getDomainNameservers&#x60; / &#x60;updateDomainNameservers&#x60; (Domains tag). 
  ///
  /// Parameters:
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [List<DnsListItem>] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<List<DnsListItem>>> getDnsList({ 
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dns';
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

    List<DnsListItem>? _responseData;

    try {
final rawData = _response.data;
_responseData = rawData == null ? null : deserialize<List<DnsListItem>, DnsListItem>(rawData, 'List<DnsListItem>', growable: true);

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<List<DnsListItem>>(
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

  /// Replace values on an existing DNS record (name, type, content, ttl, priority)
  /// Replaces the record identified by &#x60;recordId&#x60; within zone &#x60;domainId&#x60; with new values. **TTL caveat:** the change is written to PowerDNS immediately, but already-cached resolver answers persist until the previous record&#39;s TTL expires — plan TTL down ahead of a clean cutover. Type is validated against the global &#x60;$rtypes&#x60; allowlist; content is validated against the record type. Sibling ops: &#x60;getDnsDomain&#x60; (read), &#x60;addDnsRecord&#x60; (create), &#x60;deleteDnsRecord&#x60;.  **Path params:** - &#x60;domainId&#x60; (integer, required) — zone ID from &#x60;getDnsList.id&#x60;. - &#x60;recordId&#x60; (integer, required) — record ID from &#x60;getDnsDomain.id&#x60;.  **Body fields (form or JSON, schema &#x60;DnsUpdateRecord&#x60;):** - &#x60;name&#x60; (string, required) — FQDN at/below zone apex. - &#x60;type&#x60; (string, required) — one of the allowed PowerDNS types. - &#x60;content&#x60; (string, required) — value matching &#x60;type&#x60;. - &#x60;ttl&#x60; (integer, required) — seconds. - &#x60;prio&#x60; (integer, required) — MX/SRV priority (&#x60;0&#x60; otherwise).  **Returns:** &#x60;{success: true, text: \&quot;domain record updated\&quot;}&#x60;.  **Auth:** Session/API key. Zone ownership enforced.  **Errors:** - &#x60;401&#x60; — unauthenticated. - &#x60;Type must be one of: ...&#x60; — &#x60;type&#x60; not in &#x60;$rtypes&#x60;. - &#x60;invalid or missing domain or record id&#x60; — zone/record not found / not owned. - Content-format validation text — &#x60;validate_input()&#x60; failure.  **Related calls:** - **Read first:** &#x60;getDnsDomain&#x60;. - **Delete:** &#x60;deleteDnsRecord&#x60;. - **Create new:** &#x60;addDnsRecord&#x60;. 
  ///
  /// Parameters:
  /// * [domainId] - The DNS domain ID. Use the `id` from `GET /dns` to identify the domain.
  /// * [recordId] - The DNS record ID within the domain. Use the record `id` from `GET /dns/{id}` to identify the record.
  /// * [name] 
  /// * [type] 
  /// * [content] 
  /// * [ttl] 
  /// * [prio] 
  /// * [disabled] 
  /// * [ordername] 
  /// * [auth] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SuccessTextResponse] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SuccessTextResponse>> updateDnsRecord({ 
    required int domainId,
    required int recordId,
    String? name,
    DnsRecordType? type,
    String? content,
    String? ttl,
    String? prio,
    String? disabled,
    String? ordername,
    String? auth,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/dns/{domainId}/{recordId}'.replaceAll('{' r'domainId' '}', domainId.toString()).replaceAll('{' r'recordId' '}', recordId.toString());
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
        if (name != null) r'name': name,
        if (type != null) r'type': type,
        if (content != null) r'content': content,
        if (ttl != null) r'ttl': ttl,
        if (prio != null) r'prio': prio,
        if (disabled != null) r'disabled': disabled,
        if (ordername != null) r'ordername': ordername,
        if (auth != null) r'auth': auth,
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
