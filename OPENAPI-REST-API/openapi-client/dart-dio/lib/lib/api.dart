//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:interserver_api/lib/auth/api_key_auth.dart';
import 'package:interserver_api/lib/auth/basic_auth.dart';
import 'package:interserver_api/lib/auth/bearer_auth.dart';
import 'package:interserver_api/lib/auth/oauth.dart';
import 'package:interserver_api/lib/api/account_api.dart';
import 'package:interserver_api/lib/api/backups_api.dart';
import 'package:interserver_api/lib/api/billing_api.dart';
import 'package:interserver_api/lib/api/dns_api.dart';
import 'package:interserver_api/lib/api/domains_api.dart';
import 'package:interserver_api/lib/api/floating_ips_api.dart';
import 'package:interserver_api/lib/api/licenses_api.dart';
import 'package:interserver_api/lib/api/mail_api.dart';
import 'package:interserver_api/lib/api/public_api.dart';
import 'package:interserver_api/lib/api/quick_servers_api.dart';
import 'package:interserver_api/lib/api/ssl_certificates_api.dart';
import 'package:interserver_api/lib/api/scrub_ips_api.dart';
import 'package:interserver_api/lib/api/servers_api.dart';
import 'package:interserver_api/lib/api/tickets_api.dart';
import 'package:interserver_api/lib/api/vps_api.dart';
import 'package:interserver_api/lib/api/webhosting_api.dart';

class InterserverApi {
  static const String basePath = r'https://my.interserver.net/apiv2';

  final Dio dio;
  InterserverApi({
    Dio? dio,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : 
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the OAuth token associated with the given [name].
  ///
  /// If no [OAuthInterceptor] is registered or no token exists for the given
  /// [name], this method has no effect.
  void removeOAuthToken(String name) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens.remove(name);
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  /// Removes the bearer authentication token associated with the given [name].
  ///
  /// If no [BearerAuthInterceptor] is registered or no token exists for the
  /// given [name], this method has no effect.
  void removeBearerAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens.remove(name);
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  /// Removes the basic authentication credentials associated with the given [name].
  ///
  /// If no [BasicAuthInterceptor] is registered or no credentials exist for the
  /// given [name], this method has no effect.
  void removeBasicAuth(String name) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo.remove(name);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Removes the API key associated with the given [name].
  ///
  /// If no [ApiKeyAuthInterceptor] is registered or no API key exists for the
  /// given [name], this method has no effect.
  void removeApiKey(String name) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys.remove(name);
    }
  }

  /// Get AccountApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AccountApi getAccountApi() {
    return AccountApi(dio);
  }

  /// Get BackupsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BackupsApi getBackupsApi() {
    return BackupsApi(dio);
  }

  /// Get BillingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  BillingApi getBillingApi() {
    return BillingApi(dio);
  }

  /// Get DNSApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DNSApi getDNSApi() {
    return DNSApi(dio);
  }

  /// Get DomainsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  DomainsApi getDomainsApi() {
    return DomainsApi(dio);
  }

  /// Get FloatingIPsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FloatingIPsApi getFloatingIPsApi() {
    return FloatingIPsApi(dio);
  }

  /// Get LicensesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  LicensesApi getLicensesApi() {
    return LicensesApi(dio);
  }

  /// Get MailApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  MailApi getMailApi() {
    return MailApi(dio);
  }

  /// Get PublicApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  PublicApi getPublicApi() {
    return PublicApi(dio);
  }

  /// Get QuickServersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  QuickServersApi getQuickServersApi() {
    return QuickServersApi(dio);
  }

  /// Get SSLCertificatesApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SSLCertificatesApi getSSLCertificatesApi() {
    return SSLCertificatesApi(dio);
  }

  /// Get ScrubIpsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ScrubIpsApi getScrubIpsApi() {
    return ScrubIpsApi(dio);
  }

  /// Get ServersApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ServersApi getServersApi() {
    return ServersApi(dio);
  }

  /// Get TicketsApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  TicketsApi getTicketsApi() {
    return TicketsApi(dio);
  }

  /// Get VPSApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VPSApi getVPSApi() {
    return VPSApi(dio);
  }

  /// Get WebhostingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WebhostingApi getWebhostingApi() {
    return WebhostingApi(dio);
  }
}
