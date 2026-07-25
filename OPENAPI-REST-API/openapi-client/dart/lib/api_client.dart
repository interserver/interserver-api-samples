//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ApiClient {
  ApiClient({this.basePath = 'https://my.interserver.net/apiv2', this.authentication,});

  final String basePath;
  final Authentication? authentication;

  var _client = Client();
  final _defaultHeaderMap = <String, String>{};

  /// Returns the current HTTP [Client] instance to use in this class.
  ///
  /// The return value is guaranteed to never be null.
  Client get client => _client;

  /// Requests to use a new HTTP [Client] in this class.
  set client(Client newClient) {
    _client = newClient;
  }

  Map<String, String> get defaultHeaderMap => _defaultHeaderMap;

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi', a key might appear multiple times.
  Future<Response> invokeAPI(
    String path,
    String method,
    List<QueryParam> queryParams,
    Object? body,
    Map<String, String> headerParams,
    Map<String, String> formParams,
    String? contentType, {
    Future<void>? abortTrigger,
  }) async {
    await authentication?.applyToParams(queryParams, headerParams);

    headerParams.addAll(_defaultHeaderMap);
    if (contentType != null) {
      headerParams['Content-Type'] = contentType;
    }

    final urlEncodedQueryParams = queryParams.map((param) => '$param');
    final queryString = urlEncodedQueryParams.isNotEmpty ? '?${urlEncodedQueryParams.join('&')}' : '';
    final uri = Uri.parse('$basePath$path$queryString');

    try {
      // Special case for uploading a single file which isn't a 'multipart/form-data'.
      if (
        body is MultipartFile && (contentType == null ||
        !contentType.toLowerCase().startsWith('multipart/form-data'))
      ) {
        final request = AbortableStreamedRequest(method, uri, abortTrigger: abortTrigger);
        request.headers.addAll(headerParams);
        request.contentLength = body.length;
        body.finalize().listen(
          request.sink.add,
          onDone: request.sink.close,
          // ignore: avoid_types_on_closure_parameters
          onError: (Object error, StackTrace trace) => request.sink.close(),
          cancelOnError: true,
        );
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      if (body is MultipartRequest) {
        final request = AbortableMultipartRequest(method, uri, abortTrigger: abortTrigger);
        request.fields.addAll(body.fields);
        request.files.addAll(body.files);
        request.headers.addAll(body.headers);
        request.headers.addAll(headerParams);
        final response = await _client.send(request);
        return Response.fromStream(response);
      }

      final msgBody = contentType == 'application/x-www-form-urlencoded'
        ? formParams
        : await serializeAsync(body);
      final nullableHeaderParams = headerParams.isEmpty ? null : headerParams;

      final request = AbortableRequest(method, uri, abortTrigger: abortTrigger);
      if (nullableHeaderParams != null) {
        request.headers.addAll(nullableHeaderParams);
      }
      if (msgBody is String && msgBody.isNotEmpty) {
        request.body = msgBody;
      } else if (msgBody is List<int> && msgBody.isNotEmpty) {
        request.bodyBytes = msgBody;
      } else if (msgBody is Map<String, String>) {
        request.bodyFields = msgBody;
      }
      final response = await _client.send(request);
      return Response.fromStream(response);
    } on SocketException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Socket operation failed: $method $path',
        error,
        trace,
      );
    } on TlsException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'TLS/SSL communication failed: $method $path',
        error,
        trace,
      );
    } on IOException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'I/O operation failed: $method $path',
        error,
        trace,
      );
    } on ClientException catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'HTTP connection failed: $method $path',
        error,
        trace,
      );
    } on Exception catch (error, trace) {
      throw ApiException.withInner(
        HttpStatus.badRequest,
        'Exception occurred: $method $path',
        error,
        trace,
      );
    }
  }

  Future<dynamic> deserializeAsync(String value, String targetType, {bool growable = false,}) async =>
    // ignore: deprecated_member_use_from_same_package
    deserialize(value, targetType, growable: growable);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use deserializeAsync() instead.')
  dynamic deserialize(String value, String targetType, {bool growable = false,}) {
    // Remove all spaces. Necessary for regular expressions as well.
    targetType = targetType.replaceAll(' ', ''); // ignore: parameter_assignments

    // If the expected target type is String, nothing to do...
    return targetType == 'String'
      ? value
      : fromJson(json.decode(value), targetType, growable: growable);
  }

  // ignore: deprecated_member_use_from_same_package
  Future<String> serializeAsync(Object? value) async => serialize(value);

  @Deprecated('Scheduled for removal in OpenAPI Generator 6.x. Use serializeAsync() instead.')
  String serialize(Object? value) => value == null ? '' : json.encode(value);

  /// Returns a native instance of an OpenAPI class matching the [specified type][targetType].
  static dynamic fromJson(dynamic value, String targetType, {bool growable = false,}) {
    try {
      switch (targetType) {
        case 'String':
          return value is String ? value : value.toString();
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'bool':
          if (value is bool) {
            return value;
          }
          final valueString = '$value'.toLowerCase();
          return valueString == 'true' || valueString == '1';
        case 'DateTime':
          return value is DateTime ? value : DateTime.tryParse(value);
        case 'AccountFeatures':
          return AccountFeatures.fromJson(value);
        case 'AccountInfo':
          return AccountInfo.fromJson(value);
        case 'AccountInfoCountryCurrencies':
          return AccountInfoCountryCurrencies.fromJson(value);
        case 'AccountInfoData':
          return AccountInfoData.fromJson(value);
        case 'AccountInfoDataCc':
          return AccountInfoDataCc.fromJson(value);
        case 'AccountInfoDataCcs':
          return AccountInfoDataCcs.fromJson(value);
        case 'AccountInfoDataEmailSettings':
          return AccountInfoDataEmailSettings.fromJson(value);
        case 'AccountInfoDataExtra':
          return AccountInfoDataExtra.fromJson(value);
        case 'AccountInfoDataFraudrecord':
          return AccountInfoDataFraudrecord.fromJson(value);
        case 'AccountInfoLimits':
          return AccountInfoLimits.fromJson(value);
        case 'AccountInfoLimitsInner':
          return AccountInfoLimitsInner.fromJson(value);
        case 'AccountInfoMaxMindResponse':
          return AccountInfoMaxMindResponse.fromJson(value);
        case 'AccountInfoMaxMindResponseRiskScore':
          return AccountInfoMaxMindResponseRiskScore.fromJson(value);
        case 'AccountInfoOauthConfig':
          return AccountInfoOauthConfig.fromJson(value);
        case 'AccountInfoOauthConfigProviders':
          return AccountInfoOauthConfigProviders.fromJson(value);
        case 'AccountInfoOauthConfigProvidersValue':
          return AccountInfoOauthConfigProvidersValue.fromJson(value);
        case 'AccountInfoOauthproviders':
          return AccountInfoOauthproviders.fromJson(value);
        case 'AccountInfoPost':
          return AccountInfoPost.fromJson(value);
        case 'AccountSshKey':
          return AccountSshKey.fromJson(value);
        case 'AddServer200Response':
          return AddServer200Response.fromJson(value);
        case 'AffiliateBannerRow':
          return AffiliateBannerRow.fromJson(value);
        case 'AffiliateDockSetup':
          return AffiliateDockSetup.fromJson(value);
        case 'AffiliatePaymentSetup':
          return AffiliatePaymentSetup.fromJson(value);
        case 'AffiliateTrafficRow':
          return AffiliateTrafficRow.fromJson(value);
        case 'Backup':
          return Backup.fromJson(value);
        case 'BackupBillingDetails':
          return BackupBillingDetails.fromJson(value);
        case 'BackupClientLink':
          return BackupClientLink.fromJson(value);
        case 'BackupExtraInfoTables':
          return BackupExtraInfoTables.fromJson(value);
        case 'BackupIPInfo':
          return BackupIPInfo.fromJson(value);
        case 'BackupIPInfoRow':
          return BackupIPInfoRow.fromJson(value);
        case 'BackupLoginResponse':
          return BackupLoginResponse.fromJson(value);
        case 'BackupOrderPostResponse':
          return BackupOrderPostResponse.fromJson(value);
        case 'BackupOrderPostResponseCjParams':
          return BackupOrderPostResponseCjParams.fromJson(value);
        case 'BackupOrderPutRequest':
          return BackupOrderPutRequest.fromJson(value);
        case 'BackupOrderPutResponse':
          return BackupOrderPutResponse.fromJson(value);
        case 'BackupRow':
          return BackupRow.fromJson(value);
        case 'BackupServiceInfo':
          return BackupServiceInfo.fromJson(value);
        case 'BackupServiceMaster':
          return BackupServiceMaster.fromJson(value);
        case 'BackupsOrder':
          return BackupsOrder.fromJson(value);
        case 'BackupsOrderPackageCosts':
          return BackupsOrderPackageCosts.fromJson(value);
        case 'BackupsOrderServiceTypes':
          return BackupsOrderServiceTypes.fromJson(value);
        case 'BillingAddCcRequest':
          return BillingAddCcRequest.fromJson(value);
        case 'BillingInvoiceDetail':
          return BillingInvoiceDetail.fromJson(value);
        case 'BillingInvoiceList':
          return BillingInvoiceList.fromJson(value);
        case 'BillingPaymentMethodRequest':
          return BillingPaymentMethodRequest.fromJson(value);
        case 'BillingPrepayRequest':
          return BillingPrepayRequest.fromJson(value);
        case 'BillingVerifyCcRequest':
          return BillingVerifyCcRequest.fromJson(value);
        case 'BuyItNowList':
          return BuyItNowList.fromJson(value);
        case 'BuyItNowRow':
          return BuyItNowRow.fromJson(value);
        case 'BuyItNowRowCpuInner':
          return BuyItNowRowCpuInner.fromJson(value);
        case 'BuyItNowRowCpuInnerOneOf':
          return BuyItNowRowCpuInnerOneOf.fromJson(value);
        case 'BuyItNowServerOrder200Response':
          return BuyItNowServerOrder200Response.fromJson(value);
        case 'BuyItNowServerOrder200ResponseBandwidthInner':
          return BuyItNowServerOrder200ResponseBandwidthInner.fromJson(value);
        case 'BuyItNowServerOrder200ResponseCpInner':
          return BuyItNowServerOrder200ResponseCpInner.fromJson(value);
        case 'BuyItNowServerOrder200ResponseIpsInner':
          return BuyItNowServerOrder200ResponseIpsInner.fromJson(value);
        case 'BuyItNowServerOrder200ResponseOsInner':
          return BuyItNowServerOrder200ResponseOsInner.fromJson(value);
        case 'BuyItNowServerOrder200ResponseRaidInner':
          return BuyItNowServerOrder200ResponseRaidInner.fromJson(value);
        case 'CancelBackup200Response':
          return CancelBackup200Response.fromJson(value);
        case 'CancelDomain200Response':
          return CancelDomain200Response.fromJson(value);
        case 'CancelScrubIp200Response':
          return CancelScrubIp200Response.fromJson(value);
        case 'CaptchaResponse':
          return CaptchaResponse.fromJson(value);
        case 'ChargeInvoiceRows':
          return ChargeInvoiceRows.fromJson(value);
        case 'ChargeInvoiceRowsInvoicesValue':
          return ChargeInvoiceRowsInvoicesValue.fromJson(value);
        case 'ChargeInvoiceRowsInvoicesValuePaidInvoicesValue':
          return ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.fromJson(value);
        case 'ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue':
          return ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.fromJson(value);
        case 'CloseTicketResponseSchema':
          return CloseTicketResponseSchema.fromJson(value);
        case 'CreateFilter':
          return CreateFilter.fromJson(value);
        case 'CreateFilter201Response':
          return CreateFilter201Response.fromJson(value);
        case 'CreateFilter400Response':
          return CreateFilter400Response.fromJson(value);
        case 'CreateFilter500Response':
          return CreateFilter500Response.fromJson(value);
        case 'CreateFirewallRule':
          return CreateFirewallRule.fromJson(value);
        case 'CreateGeoFirewallRule':
          return CreateGeoFirewallRule.fromJson(value);
        case 'CreateGeoRule400Response':
          return CreateGeoRule400Response.fromJson(value);
        case 'CreateRule201Response':
          return CreateRule201Response.fromJson(value);
        case 'CreateRule400Response':
          return CreateRule400Response.fromJson(value);
        case 'CreateRule500Response':
          return CreateRule500Response.fromJson(value);
        case 'DeleteFilter200Response':
          return DeleteFilter200Response.fromJson(value);
        case 'DeleteFilter400Response':
          return DeleteFilter400Response.fromJson(value);
        case 'DeleteFilter500Response':
          return DeleteFilter500Response.fromJson(value);
        case 'DeleteFirewallRule':
          return DeleteFirewallRule.fromJson(value);
        case 'DeleteGeoFirewallRule':
          return DeleteGeoFirewallRule.fromJson(value);
        case 'DeleteMailAlertRequest':
          return DeleteMailAlertRequest.fromJson(value);
        case 'DenyRuleNew':
          return DenyRuleNew.fromJson(value);
        case 'DenyRuleRecord':
          return DenyRuleRecord.fromJson(value);
        case 'DisableScrub200Response':
          return DisableScrub200Response.fromJson(value);
        case 'DisableScrub400Response':
          return DisableScrub400Response.fromJson(value);
        case 'DisableScrub500Response':
          return DisableScrub500Response.fromJson(value);
        case 'DnsListItem':
          return DnsListItem.fromJson(value);
        case 'DnsNewDomain':
          return DnsNewDomain.fromJson(value);
        case 'DnsNewRecord':
          return DnsNewRecord.fromJson(value);
        case 'DnsRecord':
          return DnsRecord.fromJson(value);
        case 'DnsRecordType':
          return DnsRecordTypeTypeTransformer().decode(value);
        case 'DnsUpdateRecord':
          return DnsUpdateRecord.fromJson(value);
        case 'Domain':
          return Domain.fromJson(value);
        case 'DomainAdminContact':
          return DomainAdminContact.fromJson(value);
        case 'DomainAllInfo':
          return DomainAllInfo.fromJson(value);
        case 'DomainAllInfoAttributes':
          return DomainAllInfoAttributes.fromJson(value);
        case 'DomainAllInfoAttributesContactSet':
          return DomainAllInfoAttributesContactSet.fromJson(value);
        case 'DomainBillingDetails':
          return DomainBillingDetails.fromJson(value);
        case 'DomainBillingExtra':
          return DomainBillingExtra.fromJson(value);
        case 'DomainClientLink':
          return DomainClientLink.fromJson(value);
        case 'DomainContactDetails':
          return DomainContactDetails.fromJson(value);
        case 'DomainDnssecRecords':
          return DomainDnssecRecords.fromJson(value);
        case 'DomainDnssecRecordsInner':
          return DomainDnssecRecordsInner.fromJson(value);
        case 'DomainDnssecRequest':
          return DomainDnssecRequest.fromJson(value);
        case 'DomainLookupResponse':
          return DomainLookupResponse.fromJson(value);
        case 'DomainNameServer':
          return DomainNameServer.fromJson(value);
        case 'DomainNameserverGetResponse':
          return DomainNameserverGetResponse.fromJson(value);
        case 'DomainNameserverGetResponseInner':
          return DomainNameserverGetResponseInner.fromJson(value);
        case 'DomainNameserverPostRequest':
          return DomainNameserverPostRequest.fromJson(value);
        case 'DomainNameserverPutRequest':
          return DomainNameserverPutRequest.fromJson(value);
        case 'DomainOrder':
          return DomainOrder.fromJson(value);
        case 'DomainOrderRequest':
          return DomainOrderRequest.fromJson(value);
        case 'DomainOrderResponse':
          return DomainOrderResponse.fromJson(value);
        case 'DomainOrderResponseAttributes':
          return DomainOrderResponseAttributes.fromJson(value);
        case 'DomainOrderServices':
          return DomainOrderServices.fromJson(value);
        case 'DomainOrderServices10001':
          return DomainOrderServices10001.fromJson(value);
        case 'DomainOwnerContact':
          return DomainOwnerContact.fromJson(value);
        case 'DomainProvProcessPending':
          return DomainProvProcessPending.fromJson(value);
        case 'DomainProvProcessPendingAttributes':
          return DomainProvProcessPendingAttributes.fromJson(value);
        case 'DomainRow':
          return DomainRow.fromJson(value);
        case 'DomainSearchResponse':
          return DomainSearchResponse.fromJson(value);
        case 'DomainServiceInfo':
          return DomainServiceInfo.fromJson(value);
        case 'DomainServiceType':
          return DomainServiceType.fromJson(value);
        case 'DomainTechContact':
          return DomainTechContact.fromJson(value);
        case 'DomainWhoisPrivacyRequest':
          return DomainWhoisPrivacyRequest.fromJson(value);
        case 'DownloadQsBackup200Response':
          return DownloadQsBackup200Response.fromJson(value);
        case 'DownloadQsBackupRequest':
          return DownloadQsBackupRequest.fromJson(value);
        case 'EmailAddress':
          return EmailAddress.fromJson(value);
        case 'EmailAddressName':
          return EmailAddressName.fromJson(value);
        case 'EnableScrub200Response':
          return EnableScrub200Response.fromJson(value);
        case 'EnableScrub500Response':
          return EnableScrub500Response.fromJson(value);
        case 'FloatingIpOrderRequest':
          return FloatingIpOrderRequest.fromJson(value);
        case 'FloatingIpsCancel200Response':
          return FloatingIpsCancel200Response.fromJson(value);
        case 'GenericResponse':
          return GenericResponse.fromJson(value);
        case 'GetAccountInfo401Response':
          return GetAccountInfo401Response.fromJson(value);
        case 'GetAccountLocales200ResponseValue':
          return GetAccountLocales200ResponseValue.fromJson(value);
        case 'GetAccountTfaSetup200Response':
          return GetAccountTfaSetup200Response.fromJson(value);
        case 'GetAffiliateSignups200Response':
          return GetAffiliateSignups200Response.fromJson(value);
        case 'GetOauthRedirect200Response':
          return GetOauthRedirect200Response.fromJson(value);
        case 'GetOrderDetail200Response':
          return GetOrderDetail200Response.fromJson(value);
        case 'GetOrderDetail200ResponseIpsInner':
          return GetOrderDetail200ResponseIpsInner.fromJson(value);
        case 'GetOrderDetail200ResponsePackageCosts':
          return GetOrderDetail200ResponsePackageCosts.fromJson(value);
        case 'GetOrderDetail200ResponseServiceTypesInner':
          return GetOrderDetail200ResponseServiceTypesInner.fromJson(value);
        case 'GetScrubIpDetails200Response':
          return GetScrubIpDetails200Response.fromJson(value);
        case 'GetScrubIpDetails200ResponseBillingDetails':
          return GetScrubIpDetails200ResponseBillingDetails.fromJson(value);
        case 'GetScrubIpDetails200ResponseClientLinksInner':
          return GetScrubIpDetails200ResponseClientLinksInner.fromJson(value);
        case 'GetScrubIpDetails200ResponseExtraInfoTables':
          return GetScrubIpDetails200ResponseExtraInfoTables.fromJson(value);
        case 'GetScrubIpDetails200ResponseExtraInfoTablesScrubIps':
          return GetScrubIpDetails200ResponseExtraInfoTablesScrubIps.fromJson(value);
        case 'GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner':
          return GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner.fromJson(value);
        case 'GetScrubIpDetails200ResponseFilterFirewall':
          return GetScrubIpDetails200ResponseFilterFirewall.fromJson(value);
        case 'GetScrubIpDetails200ResponseFilterFirewallFiltersInner':
          return GetScrubIpDetails200ResponseFilterFirewallFiltersInner.fromJson(value);
        case 'GetScrubIpDetails200ResponseFilterFirewallRulesInner':
          return GetScrubIpDetails200ResponseFilterFirewallRulesInner.fromJson(value);
        case 'GetScrubIpDetails200ResponseServiceInfo':
          return GetScrubIpDetails200ResponseServiceInfo.fromJson(value);
        case 'GetWebsiteBuyIp200Response':
          return GetWebsiteBuyIp200Response.fromJson(value);
        case 'Home':
          return Home.fromJson(value);
        case 'HomeDetails':
          return HomeDetails.fromJson(value);
        case 'HomeDetailsModules':
          return HomeDetailsModules.fromJson(value);
        case 'HomeDetailsModulesBackups':
          return HomeDetailsModulesBackups.fromJson(value);
        case 'HomeDetailsModulesDomains':
          return HomeDetailsModulesDomains.fromJson(value);
        case 'HomeDetailsModulesLicenses':
          return HomeDetailsModulesLicenses.fromJson(value);
        case 'HomeDetailsModulesQuickservers':
          return HomeDetailsModulesQuickservers.fromJson(value);
        case 'HomeDetailsModulesServers':
          return HomeDetailsModulesServers.fromJson(value);
        case 'HomeDetailsModulesVps':
          return HomeDetailsModulesVps.fromJson(value);
        case 'HomeDetailsModulesWebhosting':
          return HomeDetailsModulesWebhosting.fromJson(value);
        case 'HomeServices':
          return HomeServices.fromJson(value);
        case 'HomeServicesBackups':
          return HomeServicesBackups.fromJson(value);
        case 'HomeServicesDomains':
          return HomeServicesDomains.fromJson(value);
        case 'HomeServicesDomainsLinks':
          return HomeServicesDomainsLinks.fromJson(value);
        case 'HomeServicesLicenses':
          return HomeServicesLicenses.fromJson(value);
        case 'HomeServicesLicensesLinks':
          return HomeServicesLicensesLinks.fromJson(value);
        case 'HomeServicesServers':
          return HomeServicesServers.fromJson(value);
        case 'HomeServicesServersLinks':
          return HomeServicesServersLinks.fromJson(value);
        case 'HomeServicesVps':
          return HomeServicesVps.fromJson(value);
        case 'HomeServicesVpsLinks':
          return HomeServicesVpsLinks.fromJson(value);
        case 'HomeServicesWebhosting':
          return HomeServicesWebhosting.fromJson(value);
        case 'HomeServicesWebhostingLinks':
          return HomeServicesWebhostingLinks.fromJson(value);
        case 'HomeTicketStatus':
          return HomeTicketStatus.fromJson(value);
        case 'HomeTicketStatusView':
          return HomeTicketStatusView.fromJson(value);
        case 'HostnameObject':
          return HostnameObject.fromJson(value);
        case 'InitiatePayment200Response':
          return InitiatePayment200Response.fromJson(value);
        case 'IpLimitRange':
          return IpLimitRange.fromJson(value);
        case 'IpObject':
          return IpObject.fromJson(value);
        case 'License':
          return License.fromJson(value);
        case 'LicenseBillingDetails':
          return LicenseBillingDetails.fromJson(value);
        case 'LicenseClientLink':
          return LicenseClientLink.fromJson(value);
        case 'LicenseExtraInfoTables':
          return LicenseExtraInfoTables.fromJson(value);
        case 'LicenseIpInfo':
          return LicenseIpInfo.fromJson(value);
        case 'LicenseIpInfoRow':
          return LicenseIpInfoRow.fromJson(value);
        case 'LicenseOrderRequest':
          return LicenseOrderRequest.fromJson(value);
        case 'LicenseRow':
          return LicenseRow.fromJson(value);
        case 'LicenseServiceInfo':
          return LicenseServiceInfo.fromJson(value);
        case 'LicenseServiceType':
          return LicenseServiceType.fromJson(value);
        case 'LicensesCancel200Response':
          return LicensesCancel200Response.fromJson(value);
        case 'LicensesOrder':
          return LicensesOrder.fromJson(value);
        case 'LicensesOrderPackageCosts':
          return LicensesOrderPackageCosts.fromJson(value);
        case 'LicensesOrderServiceCategories':
          return LicensesOrderServiceCategories.fromJson(value);
        case 'LicensesOrderServiceCategories509':
          return LicensesOrderServiceCategories509.fromJson(value);
        case 'LicensesOrderServiceTypes':
          return LicensesOrderServiceTypes.fromJson(value);
        case 'LicensesOrderServiceTypes11482':
          return LicensesOrderServiceTypes11482.fromJson(value);
        case 'LoginErrorResponse':
          return LoginErrorResponse.fromJson(value);
        case 'LoginInfo':
          return LoginInfo.fromJson(value);
        case 'LoginServiceCounts':
          return LoginServiceCounts.fromJson(value);
        case 'LoginSubmissionExample':
          return LoginSubmissionExample.fromJson(value);
        case 'LoginSubmissionExampleGRecaptchaResponse':
          return LoginSubmissionExampleGRecaptchaResponse.fromJson(value);
        case 'LoginSubmissionExampleGRecaptchaResponseDep':
          return LoginSubmissionExampleGRecaptchaResponseDep.fromJson(value);
        case 'LoginSuccessResponse':
          return LoginSuccessResponse.fromJson(value);
        case 'MailAlertRequest':
          return MailAlertRequest.fromJson(value);
        case 'MailAlertUpdateRequest':
          return MailAlertUpdateRequest.fromJson(value);
        case 'MailAlertsResponse':
          return MailAlertsResponse.fromJson(value);
        case 'MailAlertsResponseInner':
          return MailAlertsResponseInner.fromJson(value);
        case 'MailAttachment':
          return MailAttachment.fromJson(value);
        case 'MailBillingDetails':
          return MailBillingDetails.fromJson(value);
        case 'MailBlockClickHouse':
          return MailBlockClickHouse.fromJson(value);
        case 'MailBlockRspamd':
          return MailBlockRspamd.fromJson(value);
        case 'MailBlocks':
          return MailBlocks.fromJson(value);
        case 'MailCancel200Response':
          return MailCancel200Response.fromJson(value);
        case 'MailClientLink':
          return MailClientLink.fromJson(value);
        case 'MailDelistRequest':
          return MailDelistRequest.fromJson(value);
        case 'MailDelistResponse':
          return MailDelistResponse.fromJson(value);
        case 'MailDeliverabilityResponse':
          return MailDeliverabilityResponse.fromJson(value);
        case 'MailExtraInfoTable':
          return MailExtraInfoTable.fromJson(value);
        case 'MailExtraInfoTableRow':
          return MailExtraInfoTableRow.fromJson(value);
        case 'MailLog':
          return MailLog.fromJson(value);
        case 'MailLogEntry':
          return MailLogEntry.fromJson(value);
        case 'MailOrder':
          return MailOrder.fromJson(value);
        case 'MailOrderRequest':
          return MailOrderRequest.fromJson(value);
        case 'MailRow':
          return MailRow.fromJson(value);
        case 'MailSchema':
          return MailSchema.fromJson(value);
        case 'MailSchemaExtraInfoTables':
          return MailSchemaExtraInfoTables.fromJson(value);
        case 'MailServiceInfo':
          return MailServiceInfo.fromJson(value);
        case 'MailServiceType':
          return MailServiceType.fromJson(value);
        case 'MailStatsType':
          return MailStatsType.fromJson(value);
        case 'MailStatsTypeVolume':
          return MailStatsTypeVolume.fromJson(value);
        case 'MailStatsTypeVolumeFrom':
          return MailStatsTypeVolumeFrom.fromJson(value);
        case 'MailStatsTypeVolumeIp':
          return MailStatsTypeVolumeIp.fromJson(value);
        case 'MailStatsTypeVolumeTo':
          return MailStatsTypeVolumeTo.fromJson(value);
        case 'MailTutorialsTable':
          return MailTutorialsTable.fromJson(value);
        case 'MailTutorialsTableRow':
          return MailTutorialsTableRow.fromJson(value);
        case 'ModuleSettings':
          return ModuleSettings.fromJson(value);
        case 'Modules':
          return Modules.fromJson(value);
        case 'MonthlyCounts':
          return MonthlyCounts.fromJson(value);
        case 'PasswordRequest':
          return PasswordRequest.fromJson(value);
        case 'PatchBillingCreditCardVerifyRequest':
          return PatchBillingCreditCardVerifyRequest.fromJson(value);
        case 'PatchOauthTwoFactor200Response':
          return PatchOauthTwoFactor200Response.fromJson(value);
        case 'PatchOauthTwoFactorRequest':
          return PatchOauthTwoFactorRequest.fromJson(value);
        case 'PlaceBuyNowServerRequest':
          return PlaceBuyNowServerRequest.fromJson(value);
        case 'PlaceScrubOrder201Response':
          return PlaceScrubOrder201Response.fromJson(value);
        case 'PlaceScrubOrder201ResponseOrderDetails':
          return PlaceScrubOrder201ResponseOrderDetails.fromJson(value);
        case 'PlaceScrubOrder201ResponseOrderDetailsCjParams':
          return PlaceScrubOrder201ResponseOrderDetailsCjParams.fromJson(value);
        case 'PostOauthCallback200Response':
          return PostOauthCallback200Response.fromJson(value);
        case 'PostOauthCallbackRequest':
          return PostOauthCallbackRequest.fromJson(value);
        case 'PostWebsiteBuyIp200Response':
          return PostWebsiteBuyIp200Response.fromJson(value);
        case 'PostWebsiteBuyIpRequest':
          return PostWebsiteBuyIpRequest.fromJson(value);
        case 'PostWebsiteMigration200Response':
          return PostWebsiteMigration200Response.fromJson(value);
        case 'PostWebsiteMigrationRequest':
          return PostWebsiteMigrationRequest.fromJson(value);
        case 'PutScrubIps200Response':
          return PutScrubIps200Response.fromJson(value);
        case 'QsOrderRequest':
          return QsOrderRequest.fromJson(value);
        case 'QueueResponse':
          return QueueResponse.fromJson(value);
        case 'Quickserver':
          return Quickserver.fromJson(value);
        case 'QuickserverAddons':
          return QuickserverAddons.fromJson(value);
        case 'QuickserverAddonsRow':
          return QuickserverAddonsRow.fromJson(value);
        case 'QuickserverBillingDetails':
          return QuickserverBillingDetails.fromJson(value);
        case 'QuickserverClientLink':
          return QuickserverClientLink.fromJson(value);
        case 'QuickserverExtraInfoTables':
          return QuickserverExtraInfoTables.fromJson(value);
        case 'QuickserverIpInfo':
          return QuickserverIpInfo.fromJson(value);
        case 'QuickserverIpTableRow':
          return QuickserverIpTableRow.fromJson(value);
        case 'QuickserverOrder':
          return QuickserverOrder.fromJson(value);
        case 'QuickserverOrderDistroSel':
          return QuickserverOrderDistroSel.fromJson(value);
        case 'QuickserverOrderDistroSelUbuntu':
          return QuickserverOrderDistroSelUbuntu.fromJson(value);
        case 'QuickserverOrderServerDetails':
          return QuickserverOrderServerDetails.fromJson(value);
        case 'QuickserverOrderServerDetails381':
          return QuickserverOrderServerDetails381.fromJson(value);
        case 'QuickserverOrderTemplates':
          return QuickserverOrderTemplates.fromJson(value);
        case 'QuickserverOrderTemplatesUbuntu64':
          return QuickserverOrderTemplatesUbuntu64.fromJson(value);
        case 'QuickserverOrderVersion':
          return QuickserverOrderVersion.fromJson(value);
        case 'QuickserverOrderVersionCentosstream8':
          return QuickserverOrderVersionCentosstream8.fromJson(value);
        case 'QuickserverRow':
          return QuickserverRow.fromJson(value);
        case 'QuickserverServiceExtra':
          return QuickserverServiceExtra.fromJson(value);
        case 'QuickserverServiceInfo':
          return QuickserverServiceInfo.fromJson(value);
        case 'QuickserverServiceMaster':
          return QuickserverServiceMaster.fromJson(value);
        case 'QuickserversCancel200Response':
          return QuickserversCancel200Response.fromJson(value);
        case 'ReplyTicketRequest':
          return ReplyTicketRequest.fromJson(value);
        case 'ReplyTicketResponseSchema':
          return ReplyTicketResponseSchema.fromJson(value);
        case 'RestoreRequest':
          return RestoreRequest.fromJson(value);
        case 'ReverseDnsEntries':
          return ReverseDnsEntries.fromJson(value);
        case 'ScrubIpFilterTypes':
          return ScrubIpFilterTypes.fromJson(value);
        case 'ScrubIpFilterTypesFiltersValue':
          return ScrubIpFilterTypesFiltersValue.fromJson(value);
        case 'ScrubIpPlaceOrder':
          return ScrubIpPlaceOrder.fromJson(value);
        case 'ScrubIpsDeleteRule200Response':
          return ScrubIpsDeleteRule200Response.fromJson(value);
        case 'ScrubIpsDeleteRule400Response':
          return ScrubIpsDeleteRule400Response.fromJson(value);
        case 'ScrubIpsDeleteRule500Response':
          return ScrubIpsDeleteRule500Response.fromJson(value);
        case 'ScrubIpsLogRowSchema':
          return ScrubIpsLogRowSchema.fromJson(value);
        case 'ScrubIpsRowSchema':
          return ScrubIpsRowSchema.fromJson(value);
        case 'SearchAutocompleteResponse':
          return SearchAutocompleteResponse.fromJson(value);
        case 'SendMail':
          return SendMail.fromJson(value);
        case 'SendMailAdv':
          return SendMailAdv.fromJson(value);
        case 'Server':
          return Server.fromJson(value);
        case 'ServerAsset':
          return ServerAsset.fromJson(value);
        case 'ServerAssets':
          return ServerAssets.fromJson(value);
        case 'ServerBillingDetails':
          return ServerBillingDetails.fromJson(value);
        case 'ServerBulkIpmiPowerResponse':
          return ServerBulkIpmiPowerResponse.fromJson(value);
        case 'ServerBulkIpmiPowerResponseResultsInner':
          return ServerBulkIpmiPowerResponseResultsInner.fromJson(value);
        case 'ServerClientLink':
          return ServerClientLink.fromJson(value);
        case 'ServerExtraInfoTables':
          return ServerExtraInfoTables.fromJson(value);
        case 'ServerIpmiLiveInfo':
          return ServerIpmiLiveInfo.fromJson(value);
        case 'ServerIpmiLiveRequest':
          return ServerIpmiLiveRequest.fromJson(value);
        case 'ServerIpmiPowerRequest':
          return ServerIpmiPowerRequest.fromJson(value);
        case 'ServerLease':
          return ServerLease.fromJson(value);
        case 'ServerLocation1':
          return ServerLocation1.fromJson(value);
        case 'ServerLocations':
          return ServerLocations.fromJson(value);
        case 'ServerNetworkInfo':
          return ServerNetworkInfo.fromJson(value);
        case 'ServerNetworkInfoAssets':
          return ServerNetworkInfoAssets.fromJson(value);
        case 'ServerNetworkInfoSwitchports':
          return ServerNetworkInfoSwitchports.fromJson(value);
        case 'ServerOrder':
          return ServerOrder.fromJson(value);
        case 'ServerOrderBandwidth':
          return ServerOrderBandwidth.fromJson(value);
        case 'ServerOrderBandwidthLi':
          return ServerOrderBandwidthLi.fromJson(value);
        case 'ServerOrderCPU':
          return ServerOrderCPU.fromJson(value);
        case 'ServerOrderConfigIds':
          return ServerOrderConfigIds.fromJson(value);
        case 'ServerOrderControlPanel':
          return ServerOrderControlPanel.fromJson(value);
        case 'ServerOrderCpLi':
          return ServerOrderCpLi.fromJson(value);
        case 'ServerOrderCpuLi':
          return ServerOrderCpuLi.fromJson(value);
        case 'ServerOrderFieldLabel':
          return ServerOrderFieldLabel.fromJson(value);
        case 'ServerOrderFieldLabels':
          return ServerOrderFieldLabels.fromJson(value);
        case 'ServerOrderFormValues':
          return ServerOrderFormValues.fromJson(value);
        case 'ServerOrderIP':
          return ServerOrderIP.fromJson(value);
        case 'ServerOrderIpsLi':
          return ServerOrderIpsLi.fromJson(value);
        case 'ServerOrderMemory':
          return ServerOrderMemory.fromJson(value);
        case 'ServerOrderMemoryLi':
          return ServerOrderMemoryLi.fromJson(value);
        case 'ServerOrderMemoryLi254':
          return ServerOrderMemoryLi254.fromJson(value);
        case 'ServerOrderOS':
          return ServerOrderOS.fromJson(value);
        case 'ServerOrderOsLi':
          return ServerOrderOsLi.fromJson(value);
        case 'ServerOrderPostRequest':
          return ServerOrderPostRequest.fromJson(value);
        case 'ServerOrderPostRequestHd':
          return ServerOrderPostRequestHd.fromJson(value);
        case 'ServerOrderRAID':
          return ServerOrderRAID.fromJson(value);
        case 'ServerRow':
          return ServerRow.fromJson(value);
        case 'ServerServiceInfo':
          return ServerServiceInfo.fromJson(value);
        case 'ServerSwitchport':
          return ServerSwitchport.fromJson(value);
        case 'ServersBuyNowError':
          return ServersBuyNowError.fromJson(value);
        case 'ServersBuyNowResponse':
          return ServersBuyNowResponse.fromJson(value);
        case 'ServersBuyNowResponseOrderDetails':
          return ServersBuyNowResponseOrderDetails.fromJson(value);
        case 'ServersCancel200Response':
          return ServersCancel200Response.fromJson(value);
        case 'Service':
          return Service.fromJson(value);
        case 'ServiceCategories':
          return ServiceCategories.fromJson(value);
        case 'ServiceCategory':
          return ServiceCategory.fromJson(value);
        case 'ServiceOrderPostResponse':
          return ServiceOrderPostResponse.fromJson(value);
        case 'ServiceType':
          return ServiceType.fromJson(value);
        case 'ServiceTypes':
          return ServiceTypes.fromJson(value);
        case 'Services':
          return Services.fromJson(value);
        case 'ServicesInfo':
          return ServicesInfo.fromJson(value);
        case 'SslCancel200Response':
          return SslCancel200Response.fromJson(value);
        case 'SslOrderRequest':
          return SslOrderRequest.fromJson(value);
        case 'StatusMonthlyBreakdown':
          return StatusMonthlyBreakdown.fromJson(value);
        case 'SuccessTextResponse':
          return SuccessTextResponse.fromJson(value);
        case 'TemplateRequest':
          return TemplateRequest.fromJson(value);
        case 'TextResponse':
          return TextResponse.fromJson(value);
        case 'TicketCustomFieldDetails':
          return TicketCustomFieldDetails.fromJson(value);
        case 'TicketDetails':
          return TicketDetails.fromJson(value);
        case 'TicketNew':
          return TicketNew.fromJson(value);
        case 'TicketNewResponse':
          return TicketNewResponse.fromJson(value);
        case 'TicketPostDetails':
          return TicketPostDetails.fromJson(value);
        case 'TicketPostDetailsInner':
          return TicketPostDetailsInner.fromJson(value);
        case 'Tickets':
          return Tickets.fromJson(value);
        case 'TicketsCountArray':
          return TicketsCountArray.fromJson(value);
        case 'TicketsRow':
          return TicketsRow.fromJson(value);
        case 'TimezoneUpdate':
          return TimezoneUpdate.fromJson(value);
        case 'UpdateAccountTfaRequest':
          return UpdateAccountTfaRequest.fromJson(value);
        case 'UpdateTicket':
          return UpdateTicket.fromJson(value);
        case 'UpdateTicketResponseSchema':
          return UpdateTicketResponseSchema.fromJson(value);
        case 'UrlRequest':
          return UrlRequest.fromJson(value);
        case 'VPSCancel200Response':
          return VPSCancel200Response.fromJson(value);
        case 'VPSTrafficDataDataSectionResponse':
          return VPSTrafficDataDataSectionResponse.fromJson(value);
        case 'VPSTrafficDataDataSectionResponseInner':
          return VPSTrafficDataDataSectionResponseInner.fromJson(value);
        case 'ViewMailLogStartDateParameter':
          return ViewMailLogStartDateParameter.fromJson(value);
        case 'ViewTicketResponse':
          return ViewTicketResponse.fromJson(value);
        case 'Vps':
          return Vps.fromJson(value);
        case 'VpsBackupRow':
          return VpsBackupRow.fromJson(value);
        case 'VpsBackupRows':
          return VpsBackupRows.fromJson(value);
        case 'VpsBillingDetails':
          return VpsBillingDetails.fromJson(value);
        case 'VpsCPData':
          return VpsCPData.fromJson(value);
        case 'VpsClientLink':
          return VpsClientLink.fromJson(value);
        case 'VpsDAData':
          return VpsDAData.fromJson(value);
        case 'VpsDALicense':
          return VpsDALicense.fromJson(value);
        case 'VpsExtraInfoTables':
          return VpsExtraInfoTables.fromJson(value);
        case 'VpsIPInfo':
          return VpsIPInfo.fromJson(value);
        case 'VpsIPInfoRow':
          return VpsIPInfoRow.fromJson(value);
        case 'VpsOrder':
          return VpsOrder.fromJson(value);
        case 'VpsOrderLocationNames':
          return VpsOrderLocationNames.fromJson(value);
        case 'VpsOrderLocationStock':
          return VpsOrderLocationStock.fromJson(value);
        case 'VpsOrderLocationStock1':
          return VpsOrderLocationStock1.fromJson(value);
        case 'VpsOrderOsNames':
          return VpsOrderOsNames.fromJson(value);
        case 'VpsOrderPackageCosts':
          return VpsOrderPackageCosts.fromJson(value);
        case 'VpsOrderPlatformNames':
          return VpsOrderPlatformNames.fromJson(value);
        case 'VpsOrderPlatformPackages':
          return VpsOrderPlatformPackages.fromJson(value);
        case 'VpsOrderPostRequest':
          return VpsOrderPostRequest.fromJson(value);
        case 'VpsOrderPutRequest':
          return VpsOrderPutRequest.fromJson(value);
        case 'VpsOrderPutResponse':
          return VpsOrderPutResponse.fromJson(value);
        case 'VpsOrderServiceTypes':
          return VpsOrderServiceTypes.fromJson(value);
        case 'VpsOrderServiceTypes32':
          return VpsOrderServiceTypes32.fromJson(value);
        case 'VpsOrderTemplates':
          return VpsOrderTemplates.fromJson(value);
        case 'VpsOrderTemplatesHyperv':
          return VpsOrderTemplatesHyperv.fromJson(value);
        case 'VpsOrderTemplatesHypervWindows':
          return VpsOrderTemplatesHypervWindows.fromJson(value);
        case 'VpsPlesk12Data':
          return VpsPlesk12Data.fromJson(value);
        case 'VpsPleskLicense':
          return VpsPleskLicense.fromJson(value);
        case 'VpsRow':
          return VpsRow.fromJson(value);
        case 'VpsServiceAddons':
          return VpsServiceAddons.fromJson(value);
        case 'VpsServiceExtra':
          return VpsServiceExtra.fromJson(value);
        case 'VpsServiceInfo':
          return VpsServiceInfo.fromJson(value);
        case 'VpsServiceMaster':
          return VpsServiceMaster.fromJson(value);
        case 'VpsSnapshot':
          return VpsSnapshot.fromJson(value);
        case 'VpsTemplateRow':
          return VpsTemplateRow.fromJson(value);
        case 'VpsTemplatesList':
          return VpsTemplatesList.fromJson(value);
        case 'VpsTrafficDataSectionResponse':
          return VpsTrafficDataSectionResponse.fromJson(value);
        case 'VpsTrafficHistoryResponse':
          return VpsTrafficHistoryResponse.fromJson(value);
        case 'VpsTrafficHistorySectionDataResponse':
          return VpsTrafficHistorySectionDataResponse.fromJson(value);
        case 'VpsTrafficHistorySectionResponse':
          return VpsTrafficHistorySectionResponse.fromJson(value);
        case 'VpsTrafficResponse':
          return VpsTrafficResponse.fromJson(value);
        case 'VpsTrafficTotalsResposne':
          return VpsTrafficTotalsResposne.fromJson(value);
        case 'VpsTrafficTotalsSectionResponse':
          return VpsTrafficTotalsSectionResponse.fromJson(value);
        case 'VpsTrafficUsageAverageResponse':
          return VpsTrafficUsageAverageResponse.fromJson(value);
        case 'VpsTrafficUsageAverageSectionResponse':
          return VpsTrafficUsageAverageSectionResponse.fromJson(value);
        case 'VpsTrafficUsageResponse':
          return VpsTrafficUsageResponse.fromJson(value);
        case 'WebhostingCancel200Response':
          return WebhostingCancel200Response.fromJson(value);
        case 'Website':
          return Website.fromJson(value);
        case 'WebsiteBackups':
          return WebsiteBackups.fromJson(value);
        case 'WebsiteBackupsInner':
          return WebsiteBackupsInner.fromJson(value);
        case 'WebsiteBillingDetails':
          return WebsiteBillingDetails.fromJson(value);
        case 'WebsiteClientLink':
          return WebsiteClientLink.fromJson(value);
        case 'WebsiteExtraInfoTables':
          return WebsiteExtraInfoTables.fromJson(value);
        case 'WebsiteLoginResponse':
          return WebsiteLoginResponse.fromJson(value);
        case 'WebsiteOrderPostRequest':
          return WebsiteOrderPostRequest.fromJson(value);
        case 'WebsiteOrderPutRequest':
          return WebsiteOrderPutRequest.fromJson(value);
        case 'WebsiteRow':
          return WebsiteRow.fromJson(value);
        case 'WebsiteServiceInfo':
          return WebsiteServiceInfo.fromJson(value);
        case 'WebsiteServiceMaster':
          return WebsiteServiceMaster.fromJson(value);
        case 'WebsiteTable':
          return WebsiteTable.fromJson(value);
        case 'WebsiteTableRow':
          return WebsiteTableRow.fromJson(value);
        case 'WebsitesOrder':
          return WebsitesOrder.fromJson(value);
        case 'WebsitesOrderJsonServiceOffers':
          return WebsitesOrderJsonServiceOffers.fromJson(value);
        case 'WebsitesOrderJsonServiceOffersItem':
          return WebsitesOrderJsonServiceOffersItem.fromJson(value);
        case 'WebsitesOrderJsonServices':
          return WebsitesOrderJsonServices.fromJson(value);
        case 'WebsitesOrderPackages':
          return WebsitesOrderPackages.fromJson(value);
        case 'WebsitesOrderPackagesInfo':
          return WebsitesOrderPackagesInfo.fromJson(value);
        case 'WebsitesOrderPackges':
          return WebsitesOrderPackges.fromJson(value);
        case 'WebsitesOrderServiceOffer':
          return WebsitesOrderServiceOffer.fromJson(value);
        case 'WebsitesOrderServiceOffers':
          return WebsitesOrderServiceOffers.fromJson(value);
        case 'WebsitesOrderServiceTypes':
          return WebsitesOrderServiceTypes.fromJson(value);
        default:
          dynamic match;
          if (value is List && (match = _regList.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toList(growable: growable);
          }
          if (value is Set && (match = _regSet.firstMatch(targetType)?.group(1)) != null) {
            return value
              .map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,))
              .toSet();
          }
          if (value is Map && (match = _regMap.firstMatch(targetType)?.group(1)) != null) {
            return Map<String, dynamic>.fromIterables(
              value.keys.cast<String>(),
              value.values.map<dynamic>((dynamic v) => fromJson(v, match, growable: growable,)),
            );
          }
      }
    } on Exception catch (error, trace) {
      throw ApiException.withInner(HttpStatus.internalServerError, 'Exception during deserialization.', error, trace,);
    }
    throw ApiException(HttpStatus.internalServerError, 'Could not find a suitable class for deserialization',);
  }
}

/// Primarily intended for use in an isolate.
class DeserializationMessage {
  const DeserializationMessage({
    required this.json,
    required this.targetType,
    this.growable = false,
  });

  /// The JSON value to deserialize.
  final String json;

  /// Target type to deserialize to.
  final String targetType;

  /// Whether to make deserialized lists or maps growable.
  final bool growable;
}

/// Primarily intended for use in an isolate.
Future<dynamic> decodeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : json.decode(message.json);
}

/// Primarily intended for use in an isolate.
Future<dynamic> deserializeAsync(DeserializationMessage message) async {
  // Remove all spaces. Necessary for regular expressions as well.
  final targetType = message.targetType.replaceAll(' ', '');

  // If the expected target type is String, nothing to do...
  return targetType == 'String'
    ? message.json
    : ApiClient.fromJson(
        json.decode(message.json),
        targetType,
        growable: message.growable,
      );
}

/// Primarily intended for use in an isolate.
Future<String> serializeAsync(Object? value) async => value == null ? '' : json.encode(value);
