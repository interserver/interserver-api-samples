part of swagger.api;

class QueryParam {
  String name;
  String value;

  QueryParam(this.name, this.value);
}

class ApiClient {

  String basePath;
  var client = new BrowserClient();

  Map<String, String> _defaultHeaderMap = {};
  Map<String, Authentication> _authentications = {};

  final _RegList = new RegExp(r'^List<(.*)>$');
  final _RegMap = new RegExp(r'^Map<String,(.*)>$');

  ApiClient({this.basePath: "https://my.interserver.net/apiv2"}) {
    // Setup authentications (key: authentication name, value: authentication).
    _authentications['apiKeyAuth'] = new ApiKeyAuth("header", "X-API-KEY");
    _authentications['sessionIdCookieAuth'] = new ApiKeyAuth("query", "sessionid");
    _authentications['sessionIdHeaderAuth'] = new ApiKeyAuth("header", "sessionid");
  }

  void addDefaultHeader(String key, String value) {
     _defaultHeaderMap[key] = value;
  }

  dynamic _deserialize(dynamic value, String targetType) {
    try {
      switch (targetType) {
        case 'String':
          return '$value';
        case 'int':
          return value is int ? value : int.parse('$value');
        case 'bool':
          return value is bool ? value : '$value'.toLowerCase() == 'true';
        case 'double':
          return value is double ? value : double.parse('$value');
        case 'Account2faBody':
          return new Account2faBody.fromJson(value);
        case 'Account2faBody1':
          return new Account2faBody1.fromJson(value);
        case 'AccountFeatures':
          return new AccountFeatures.fromJson(value);
        case 'AccountInfo':
          return new AccountInfo.fromJson(value);
        case 'AccountInfoCountryCurrencies':
          return new AccountInfoCountryCurrencies.fromJson(value);
        case 'AccountInfoData':
          return new AccountInfoData.fromJson(value);
        case 'AccountInfoDataCc':
          return new AccountInfoDataCc.fromJson(value);
        case 'AccountInfoDataCcs':
          return new AccountInfoDataCcs.fromJson(value);
        case 'AccountInfoDataEmailSettings':
          return new AccountInfoDataEmailSettings.fromJson(value);
        case 'AccountInfoDataExtra':
          return new AccountInfoDataExtra.fromJson(value);
        case 'AccountInfoDataFraudrecord':
          return new AccountInfoDataFraudrecord.fromJson(value);
        case 'AccountInfoLimits':
          return new AccountInfoLimits.fromJson(value);
        case 'AccountInfoLimitsInner':
          return new AccountInfoLimitsInner.fromJson(value);
        case 'AccountInfoMaxMindResponse':
          return new AccountInfoMaxMindResponse.fromJson(value);
        case 'AccountInfoOauthConfig':
          return new AccountInfoOauthConfig.fromJson(value);
        case 'AccountInfoOauthConfigProviders':
          return new AccountInfoOauthConfigProviders.fromJson(value);
        case 'AccountInfoPost':
          return new AccountInfoPost.fromJson(value);
        case 'AccountSshKey':
          return new AccountSshKey.fromJson(value);
        case 'AffiliateBannerRow':
          return new AffiliateBannerRow.fromJson(value);
        case 'AffiliateDockSetup':
          return new AffiliateDockSetup.fromJson(value);
        case 'AffiliatePaymentSetup':
          return new AffiliatePaymentSetup.fromJson(value);
        case 'AffiliateTrafficRow':
          return new AffiliateTrafficRow.fromJson(value);
        case 'AllOfServerOrderFieldLabelsBandwidth':
          return new AllOfServerOrderFieldLabelsBandwidth.fromJson(value);
        case 'AllOfServerOrderFieldLabelsCp':
          return new AllOfServerOrderFieldLabelsCp.fromJson(value);
        case 'AllOfServerOrderFieldLabelsHd':
          return new AllOfServerOrderFieldLabelsHd.fromJson(value);
        case 'AllOfServerOrderFieldLabelsIps':
          return new AllOfServerOrderFieldLabelsIps.fromJson(value);
        case 'AllOfServerOrderFieldLabelsMemory':
          return new AllOfServerOrderFieldLabelsMemory.fromJson(value);
        case 'AllOfServerOrderFieldLabelsOs':
          return new AllOfServerOrderFieldLabelsOs.fromJson(value);
        case 'AllOfServerOrderFieldLabelsRaid':
          return new AllOfServerOrderFieldLabelsRaid.fromJson(value);
        case 'Backup':
          return new Backup.fromJson(value);
        case 'BackupBillingDetails':
          return new BackupBillingDetails.fromJson(value);
        case 'BackupClientLink':
          return new BackupClientLink.fromJson(value);
        case 'BackupExtraInfoTables':
          return new BackupExtraInfoTables.fromJson(value);
        case 'BackupIPInfo':
          return new BackupIPInfo.fromJson(value);
        case 'BackupIPInfoRow':
          return new BackupIPInfoRow.fromJson(value);
        case 'BackupLoginResponse':
          return new BackupLoginResponse.fromJson(value);
        case 'BackupOrderPostResponse':
          return new BackupOrderPostResponse.fromJson(value);
        case 'BackupOrderPostResponseCjParams':
          return new BackupOrderPostResponseCjParams.fromJson(value);
        case 'BackupOrderPutRequest':
          return new BackupOrderPutRequest.fromJson(value);
        case 'BackupOrderPutResponse':
          return new BackupOrderPutResponse.fromJson(value);
        case 'BackupRow':
          return new BackupRow.fromJson(value);
        case 'BackupServiceExtra':
          return new BackupServiceExtra.fromJson(value);
        case 'BackupServiceInfo':
          return new BackupServiceInfo.fromJson(value);
        case 'BackupServiceMaster':
          return new BackupServiceMaster.fromJson(value);
        case 'BackupsOrder':
          return new BackupsOrder.fromJson(value);
        case 'BackupsOrderPackageCosts':
          return new BackupsOrderPackageCosts.fromJson(value);
        case 'BackupsOrderServiceTypes':
          return new BackupsOrderServiceTypes.fromJson(value);
        case 'BillingAddCcRequest':
          return new BillingAddCcRequest.fromJson(value);
        case 'BillingInvoiceDetail':
          return new BillingInvoiceDetail.fromJson(value);
        case 'BillingInvoiceList':
          return new BillingInvoiceList.fromJson(value);
        case 'BillingPaymentMethodRequest':
          return new BillingPaymentMethodRequest.fromJson(value);
        case 'BillingPrepayRequest':
          return new BillingPrepayRequest.fromJson(value);
        case 'BillingVerifyCcRequest':
          return new BillingVerifyCcRequest.fromJson(value);
        case 'BuyItNowList':
          return new BuyItNowList.fromJson(value);
        case 'BuyItNowRow':
          return new BuyItNowRow.fromJson(value);
        case 'CaptchaResponse':
          return new CaptchaResponse.fromJson(value);
        case 'ChargeInvoiceRows':
          return new ChargeInvoiceRows.fromJson(value);
        case 'ChargeInvoiceRowsInvoices':
          return new ChargeInvoiceRowsInvoices.fromJson(value);
        case 'ChargeInvoiceRowsPaidInvoices':
          return new ChargeInvoiceRowsPaidInvoices.fromJson(value);
        case 'ChargeInvoiceRowsRefundInvoices':
          return new ChargeInvoiceRowsRefundInvoices.fromJson(value);
        case 'CloseTicketResponseSchema':
          return new CloseTicketResponseSchema.fromJson(value);
        case 'CreateFilter':
          return new CreateFilter.fromJson(value);
        case 'CreateFirewallRule':
          return new CreateFirewallRule.fromJson(value);
        case 'CreateGeoFirewallRule':
          return new CreateGeoFirewallRule.fromJson(value);
        case 'Delete Firewall Rule':
          return new Delete Firewall Rule.fromJson(value);
        case 'Delete Geo Firewall Rule':
          return new Delete Geo Firewall Rule.fromJson(value);
        case 'DenyRuleNew':
          return new DenyRuleNew.fromJson(value);
        case 'DenyRuleRecord':
          return new DenyRuleRecord.fromJson(value);
        case 'DnsListItem':
          return new DnsListItem.fromJson(value);
        case 'DnsNewDomain':
          return new DnsNewDomain.fromJson(value);
        case 'DnsNewRecord':
          return new DnsNewRecord.fromJson(value);
        case 'DnsRecord':
          return new DnsRecord.fromJson(value);
        case 'DnsRecordType':
           return new DnsRecordType.fromJson(value);
        case 'DnsUpdateRecord':
          return new DnsUpdateRecord.fromJson(value);
        case 'Domain':
          return new Domain.fromJson(value);
        case 'DomainAdminContact':
          return new DomainAdminContact.fromJson(value);
        case 'DomainAllInfo':
          return new DomainAllInfo.fromJson(value);
        case 'DomainAllInfoAttributes':
          return new DomainAllInfoAttributes.fromJson(value);
        case 'DomainAllInfoAttributesContactSet':
          return new DomainAllInfoAttributesContactSet.fromJson(value);
        case 'DomainBillingDetails':
          return new DomainBillingDetails.fromJson(value);
        case 'DomainBillingExtra':
          return new DomainBillingExtra.fromJson(value);
        case 'DomainClientLink':
          return new DomainClientLink.fromJson(value);
        case 'DomainContactDetails':
          return new DomainContactDetails.fromJson(value);
        case 'DomainDnssecRecords':
          return new DomainDnssecRecords.fromJson(value);
        case 'DomainDnssecRecordsInner':
          return new DomainDnssecRecordsInner.fromJson(value);
        case 'DomainDnssecRequest':
          return new DomainDnssecRequest.fromJson(value);
        case 'DomainLookupResponse':
          return new DomainLookupResponse.fromJson(value);
        case 'DomainNameServer':
          return new DomainNameServer.fromJson(value);
        case 'DomainNameserverGetResponse':
          return new DomainNameserverGetResponse.fromJson(value);
        case 'DomainNameserverGetResponseInner':
          return new DomainNameserverGetResponseInner.fromJson(value);
        case 'DomainNameserverPostRequest':
          return new DomainNameserverPostRequest.fromJson(value);
        case 'DomainNameserverPutRequest':
          return new DomainNameserverPutRequest.fromJson(value);
        case 'DomainOrder':
          return new DomainOrder.fromJson(value);
        case 'DomainOrderRequest':
          return new DomainOrderRequest.fromJson(value);
        case 'DomainOrderResponse':
          return new DomainOrderResponse.fromJson(value);
        case 'DomainOrderResponseAttributes':
          return new DomainOrderResponseAttributes.fromJson(value);
        case 'DomainOrderServices':
          return new DomainOrderServices.fromJson(value);
        case 'DomainOrderServices10001':
          return new DomainOrderServices10001.fromJson(value);
        case 'DomainOwnerContact':
          return new DomainOwnerContact.fromJson(value);
        case 'DomainProvProcessPending':
          return new DomainProvProcessPending.fromJson(value);
        case 'DomainProvProcessPendingAttributes':
          return new DomainProvProcessPendingAttributes.fromJson(value);
        case 'DomainRow':
          return new DomainRow.fromJson(value);
        case 'DomainSearchResponse':
          return new DomainSearchResponse.fromJson(value);
        case 'DomainServiceInfo':
          return new DomainServiceInfo.fromJson(value);
        case 'DomainServiceType':
          return new DomainServiceType.fromJson(value);
        case 'DomainTechContact':
          return new DomainTechContact.fromJson(value);
        case 'DomainWhoisPrivacyRequest':
          return new DomainWhoisPrivacyRequest.fromJson(value);
        case 'EmailAddress':
          return new EmailAddress.fromJson(value);
        case 'EmailAddressName':
          return new EmailAddressName.fromJson(value);
        case 'EndDate':
          return new EndDate.fromJson(value);
        case 'FloatingIpOrderRequest':
          return new FloatingIpOrderRequest.fromJson(value);
        case 'GenericResponse':
          return new GenericResponse.fromJson(value);
        case 'Home':
          return new Home.fromJson(value);
        case 'HomeDetails':
          return new HomeDetails.fromJson(value);
        case 'HomeDetailsModules':
          return new HomeDetailsModules.fromJson(value);
        case 'HomeDetailsModulesBackups':
          return new HomeDetailsModulesBackups.fromJson(value);
        case 'HomeDetailsModulesDomains':
          return new HomeDetailsModulesDomains.fromJson(value);
        case 'HomeDetailsModulesLicenses':
          return new HomeDetailsModulesLicenses.fromJson(value);
        case 'HomeDetailsModulesQuickservers':
          return new HomeDetailsModulesQuickservers.fromJson(value);
        case 'HomeDetailsModulesServers':
          return new HomeDetailsModulesServers.fromJson(value);
        case 'HomeDetailsModulesVps':
          return new HomeDetailsModulesVps.fromJson(value);
        case 'HomeDetailsModulesWebhosting':
          return new HomeDetailsModulesWebhosting.fromJson(value);
        case 'HomeServices':
          return new HomeServices.fromJson(value);
        case 'HomeServicesBackups':
          return new HomeServicesBackups.fromJson(value);
        case 'HomeServicesDomains':
          return new HomeServicesDomains.fromJson(value);
        case 'HomeServicesDomainsLinks':
          return new HomeServicesDomainsLinks.fromJson(value);
        case 'HomeServicesLicenses':
          return new HomeServicesLicenses.fromJson(value);
        case 'HomeServicesLicensesLinks':
          return new HomeServicesLicensesLinks.fromJson(value);
        case 'HomeServicesServers':
          return new HomeServicesServers.fromJson(value);
        case 'HomeServicesServersLinks':
          return new HomeServicesServersLinks.fromJson(value);
        case 'HomeServicesVps':
          return new HomeServicesVps.fromJson(value);
        case 'HomeServicesVpsLinks':
          return new HomeServicesVpsLinks.fromJson(value);
        case 'HomeServicesWebhosting':
          return new HomeServicesWebhosting.fromJson(value);
        case 'HomeServicesWebhostingLinks':
          return new HomeServicesWebhostingLinks.fromJson(value);
        case 'HomeTicketStatus':
          return new HomeTicketStatus.fromJson(value);
        case 'HomeTicketStatusView':
          return new HomeTicketStatusView.fromJson(value);
        case 'HostnameObject':
          return new HostnameObject.fromJson(value);
        case 'IdAlertsBody':
          return new IdAlertsBody.fromJson(value);
        case 'IdAlertsBody1':
          return new IdAlertsBody1.fromJson(value);
        case 'IdBackupsBody':
          return new IdBackupsBody.fromJson(value);
        case 'IdBackupsBody1':
          return new IdBackupsBody1.fromJson(value);
        case 'IdBackupsBody2':
          return new IdBackupsBody2.fromJson(value);
        case 'IdBackupsBody3':
          return new IdBackupsBody3.fromJson(value);
        case 'IdBuyIpBody':
          return new IdBuyIpBody.fromJson(value);
        case 'IdBuyIpBody1':
          return new IdBuyIpBody1.fromJson(value);
        case 'IdMigrationBody':
          return new IdMigrationBody.fromJson(value);
        case 'IdMigrationBody1':
          return new IdMigrationBody1.fromJson(value);
        case 'IdVerifyBody':
          return new IdVerifyBody.fromJson(value);
        case 'IdVerifyBody1':
          return new IdVerifyBody1.fromJson(value);
        case 'InlineResponse200':
          return new InlineResponse200.fromJson(value);
        case 'InlineResponse2001':
          return new InlineResponse2001.fromJson(value);
        case 'InlineResponse20010':
          return new InlineResponse20010.fromJson(value);
        case 'InlineResponse20011':
          return new InlineResponse20011.fromJson(value);
        case 'InlineResponse20012':
          return new InlineResponse20012.fromJson(value);
        case 'InlineResponse20013':
          return new InlineResponse20013.fromJson(value);
        case 'InlineResponse20013BillingDetails':
          return new InlineResponse20013BillingDetails.fromJson(value);
        case 'InlineResponse20013ClientLinks':
          return new InlineResponse20013ClientLinks.fromJson(value);
        case 'InlineResponse20013ExtraInfoTables':
          return new InlineResponse20013ExtraInfoTables.fromJson(value);
        case 'InlineResponse20013ExtraInfoTablesScrubIps':
          return new InlineResponse20013ExtraInfoTablesScrubIps.fromJson(value);
        case 'InlineResponse20013ExtraInfoTablesScrubIpsRows':
          return new InlineResponse20013ExtraInfoTablesScrubIpsRows.fromJson(value);
        case 'InlineResponse20013FilterFirewall':
          return new InlineResponse20013FilterFirewall.fromJson(value);
        case 'InlineResponse20013FilterFirewallFilters':
          return new InlineResponse20013FilterFirewallFilters.fromJson(value);
        case 'InlineResponse20013FilterFirewallRules':
          return new InlineResponse20013FilterFirewallRules.fromJson(value);
        case 'InlineResponse20013ServiceInfo':
          return new InlineResponse20013ServiceInfo.fromJson(value);
        case 'InlineResponse20014':
          return new InlineResponse20014.fromJson(value);
        case 'InlineResponse20015':
          return new InlineResponse20015.fromJson(value);
        case 'InlineResponse20016':
          return new InlineResponse20016.fromJson(value);
        case 'InlineResponse20017':
          return new InlineResponse20017.fromJson(value);
        case 'InlineResponse20018':
          return new InlineResponse20018.fromJson(value);
        case 'InlineResponse20019':
          return new InlineResponse20019.fromJson(value);
        case 'InlineResponse20019Ips':
          return new InlineResponse20019Ips.fromJson(value);
        case 'InlineResponse20019PackageCosts':
          return new InlineResponse20019PackageCosts.fromJson(value);
        case 'InlineResponse20019ServiceTypes':
          return new InlineResponse20019ServiceTypes.fromJson(value);
        case 'InlineResponse2002':
          return new InlineResponse2002.fromJson(value);
        case 'InlineResponse20020':
          return new InlineResponse20020.fromJson(value);
        case 'InlineResponse20021':
          return new InlineResponse20021.fromJson(value);
        case 'InlineResponse20022':
          return new InlineResponse20022.fromJson(value);
        case 'InlineResponse20023':
          return new InlineResponse20023.fromJson(value);
        case 'InlineResponse20024':
          return new InlineResponse20024.fromJson(value);
        case 'InlineResponse20025':
          return new InlineResponse20025.fromJson(value);
        case 'InlineResponse20026':
          return new InlineResponse20026.fromJson(value);
        case 'InlineResponse20027':
          return new InlineResponse20027.fromJson(value);
        case 'InlineResponse20028':
          return new InlineResponse20028.fromJson(value);
        case 'InlineResponse20029':
          return new InlineResponse20029.fromJson(value);
        case 'InlineResponse20029Bandwidth':
          return new InlineResponse20029Bandwidth.fromJson(value);
        case 'InlineResponse20029Cp':
          return new InlineResponse20029Cp.fromJson(value);
        case 'InlineResponse20029Ips':
          return new InlineResponse20029Ips.fromJson(value);
        case 'InlineResponse20029Os':
          return new InlineResponse20029Os.fromJson(value);
        case 'InlineResponse20029Raid':
          return new InlineResponse20029Raid.fromJson(value);
        case 'InlineResponse2003':
          return new InlineResponse2003.fromJson(value);
        case 'InlineResponse2004':
          return new InlineResponse2004.fromJson(value);
        case 'InlineResponse2005':
          return new InlineResponse2005.fromJson(value);
        case 'InlineResponse2006':
          return new InlineResponse2006.fromJson(value);
        case 'InlineResponse2007':
          return new InlineResponse2007.fromJson(value);
        case 'InlineResponse2008':
          return new InlineResponse2008.fromJson(value);
        case 'InlineResponse2009':
          return new InlineResponse2009.fromJson(value);
        case 'InlineResponse201':
          return new InlineResponse201.fromJson(value);
        case 'InlineResponse2011':
          return new InlineResponse2011.fromJson(value);
        case 'InlineResponse2012':
          return new InlineResponse2012.fromJson(value);
        case 'InlineResponse2012OrderDetails':
          return new InlineResponse2012OrderDetails.fromJson(value);
        case 'InlineResponse2012OrderDetailsCjParams':
          return new InlineResponse2012OrderDetailsCjParams.fromJson(value);
        case 'InlineResponse400':
          return new InlineResponse400.fromJson(value);
        case 'InlineResponse4001':
          return new InlineResponse4001.fromJson(value);
        case 'InlineResponse4002':
          return new InlineResponse4002.fromJson(value);
        case 'InlineResponse4003':
          return new InlineResponse4003.fromJson(value);
        case 'InlineResponse4004':
          return new InlineResponse4004.fromJson(value);
        case 'InlineResponse4005':
          return new InlineResponse4005.fromJson(value);
        case 'InlineResponse401':
          return new InlineResponse401.fromJson(value);
        case 'InlineResponse500':
          return new InlineResponse500.fromJson(value);
        case 'InlineResponse5001':
          return new InlineResponse5001.fromJson(value);
        case 'InlineResponse5002':
          return new InlineResponse5002.fromJson(value);
        case 'InlineResponse5003':
          return new InlineResponse5003.fromJson(value);
        case 'InlineResponse5004':
          return new InlineResponse5004.fromJson(value);
        case 'InlineResponse5005':
          return new InlineResponse5005.fromJson(value);
        case 'InlineResponseMap200':
          return new InlineResponseMap200.fromJson(value);
        case 'IpLimitRange':
          return new IpLimitRange.fromJson(value);
        case 'IpObject':
          return new IpObject.fromJson(value);
        case 'License':
          return new License.fromJson(value);
        case 'LicenseBillingDetails':
          return new LicenseBillingDetails.fromJson(value);
        case 'LicenseClientLink':
          return new LicenseClientLink.fromJson(value);
        case 'LicenseExtraInfoTables':
          return new LicenseExtraInfoTables.fromJson(value);
        case 'LicenseIpInfo':
          return new LicenseIpInfo.fromJson(value);
        case 'LicenseIpInfoRow':
          return new LicenseIpInfoRow.fromJson(value);
        case 'LicenseOrderRequest':
          return new LicenseOrderRequest.fromJson(value);
        case 'LicenseRow':
          return new LicenseRow.fromJson(value);
        case 'LicenseServiceInfo':
          return new LicenseServiceInfo.fromJson(value);
        case 'LicenseServiceType':
          return new LicenseServiceType.fromJson(value);
        case 'LicensesOrder':
          return new LicensesOrder.fromJson(value);
        case 'LicensesOrderPackageCosts':
          return new LicensesOrderPackageCosts.fromJson(value);
        case 'LicensesOrderServiceCategories':
          return new LicensesOrderServiceCategories.fromJson(value);
        case 'LicensesOrderServiceCategories509':
          return new LicensesOrderServiceCategories509.fromJson(value);
        case 'LicensesOrderServiceTypes':
          return new LicensesOrderServiceTypes.fromJson(value);
        case 'LicensesOrderServiceTypes11482':
          return new LicensesOrderServiceTypes11482.fromJson(value);
        case 'LoginErrorResponse':
          return new LoginErrorResponse.fromJson(value);
        case 'LoginInfo':
          return new LoginInfo.fromJson(value);
        case 'LoginServiceCounts':
          return new LoginServiceCounts.fromJson(value);
        case 'LoginSubmissionExample':
          return new LoginSubmissionExample.fromJson(value);
        case 'LoginSubmissionExampleGrecaptcharesponse':
          return new LoginSubmissionExampleGrecaptcharesponse.fromJson(value);
        case 'LoginSubmissionExampleGrecaptcharesponseDep':
          return new LoginSubmissionExampleGrecaptcharesponseDep.fromJson(value);
        case 'LoginSuccessResponse':
          return new LoginSuccessResponse.fromJson(value);
        case 'MailAlertRequest':
          return new MailAlertRequest.fromJson(value);
        case 'MailAlertUpdateRequest':
          return new MailAlertUpdateRequest.fromJson(value);
        case 'MailAlertsResponse':
          return new MailAlertsResponse.fromJson(value);
        case 'MailAlertsResponseInner':
          return new MailAlertsResponseInner.fromJson(value);
        case 'MailAttachment':
          return new MailAttachment.fromJson(value);
        case 'MailBillingDetails':
          return new MailBillingDetails.fromJson(value);
        case 'MailBlockClickHouse':
          return new MailBlockClickHouse.fromJson(value);
        case 'MailBlockRspamd':
          return new MailBlockRspamd.fromJson(value);
        case 'MailBlocks':
          return new MailBlocks.fromJson(value);
        case 'MailClientLink':
          return new MailClientLink.fromJson(value);
        case 'MailDelistRequest':
          return new MailDelistRequest.fromJson(value);
        case 'MailDelistResponse':
          return new MailDelistResponse.fromJson(value);
        case 'MailDeliverabilityResponse':
          return new MailDeliverabilityResponse.fromJson(value);
        case 'MailExtraInfoTable':
          return new MailExtraInfoTable.fromJson(value);
        case 'MailExtraInfoTableRow':
          return new MailExtraInfoTableRow.fromJson(value);
        case 'MailLog':
          return new MailLog.fromJson(value);
        case 'MailLogEntry':
          return new MailLogEntry.fromJson(value);
        case 'MailOrder':
          return new MailOrder.fromJson(value);
        case 'MailOrderRequest':
          return new MailOrderRequest.fromJson(value);
        case 'MailRow':
          return new MailRow.fromJson(value);
        case 'MailSchema':
          return new MailSchema.fromJson(value);
        case 'MailSchemaExtraInfoTables':
          return new MailSchemaExtraInfoTables.fromJson(value);
        case 'MailServiceInfo':
          return new MailServiceInfo.fromJson(value);
        case 'MailServiceType':
          return new MailServiceType.fromJson(value);
        case 'MailStatsType':
          return new MailStatsType.fromJson(value);
        case 'MailStatsTypeVolume':
          return new MailStatsTypeVolume.fromJson(value);
        case 'MailStatsTypeVolumeFrom':
          return new MailStatsTypeVolumeFrom.fromJson(value);
        case 'MailStatsTypeVolumeIp':
          return new MailStatsTypeVolumeIp.fromJson(value);
        case 'MailStatsTypeVolumeTo':
          return new MailStatsTypeVolumeTo.fromJson(value);
        case 'MailTutorialsTable':
          return new MailTutorialsTable.fromJson(value);
        case 'MailTutorialsTableRow':
          return new MailTutorialsTableRow.fromJson(value);
        case 'ModuleSettings':
          return new ModuleSettings.fromJson(value);
        case 'Modules':
          return new Modules.fromJson(value);
        case 'MonthlyCounts':
          return new MonthlyCounts.fromJson(value);
        case 'OauthBody':
          return new OauthBody.fromJson(value);
        case 'OauthBody1':
          return new OauthBody1.fromJson(value);
        case 'OauthBody2':
          return new OauthBody2.fromJson(value);
        case 'OauthBody3':
          return new OauthBody3.fromJson(value);
        case 'OneOfAccountInfoMaxMindResponseRiskScore':
          return new OneOfAccountInfoMaxMindResponseRiskScore.fromJson(value);
        case 'OneOfAccountInfoOauthproviders':
          return new OneOfAccountInfoOauthproviders.fromJson(value);
        case 'OneOfBuyItNowRowCpuItems':
          return new OneOfBuyItNowRowCpuItems.fromJson(value);
        case 'OneOfServerOrderPostRequestHd':
          return new OneOfServerOrderPostRequestHd.fromJson(value);
        case 'OneOfVPSTrafficDataDataSectionResponseItems':
          return new OneOfVPSTrafficDataDataSectionResponseItems.fromJson(value);
        case 'OneOfVpsTrafficHistorySectionDataResponseItems':
          return new OneOfVpsTrafficHistorySectionDataResponseItems.fromJson(value);
        case 'OrderBuyNowServerBody':
          return new OrderBuyNowServerBody.fromJson(value);
        case 'PasswordRequest':
          return new PasswordRequest.fromJson(value);
        case 'QsOrderRequest':
          return new QsOrderRequest.fromJson(value);
        case 'QueueResponse':
          return new QueueResponse.fromJson(value);
        case 'Quickserver':
          return new Quickserver.fromJson(value);
        case 'QuickserverAddons':
          return new QuickserverAddons.fromJson(value);
        case 'QuickserverAddonsRow':
          return new QuickserverAddonsRow.fromJson(value);
        case 'QuickserverBillingDetails':
          return new QuickserverBillingDetails.fromJson(value);
        case 'QuickserverClientLink':
          return new QuickserverClientLink.fromJson(value);
        case 'QuickserverExtraInfoTables':
          return new QuickserverExtraInfoTables.fromJson(value);
        case 'QuickserverIpInfo':
          return new QuickserverIpInfo.fromJson(value);
        case 'QuickserverIpTableRow':
          return new QuickserverIpTableRow.fromJson(value);
        case 'QuickserverOrder':
          return new QuickserverOrder.fromJson(value);
        case 'QuickserverOrderDistroSel':
          return new QuickserverOrderDistroSel.fromJson(value);
        case 'QuickserverOrderDistroSelUbuntu':
          return new QuickserverOrderDistroSelUbuntu.fromJson(value);
        case 'QuickserverOrderServerDetails':
          return new QuickserverOrderServerDetails.fromJson(value);
        case 'QuickserverOrderServerDetails381':
          return new QuickserverOrderServerDetails381.fromJson(value);
        case 'QuickserverOrderTemplates':
          return new QuickserverOrderTemplates.fromJson(value);
        case 'QuickserverOrderTemplatesUbuntu64':
          return new QuickserverOrderTemplatesUbuntu64.fromJson(value);
        case 'QuickserverOrderVersion':
          return new QuickserverOrderVersion.fromJson(value);
        case 'QuickserverOrderVersionCentosstream8':
          return new QuickserverOrderVersionCentosstream8.fromJson(value);
        case 'QuickserverRow':
          return new QuickserverRow.fromJson(value);
        case 'QuickserverServiceExtra':
          return new QuickserverServiceExtra.fromJson(value);
        case 'QuickserverServiceInfo':
          return new QuickserverServiceInfo.fromJson(value);
        case 'QuickserverServiceMaster':
          return new QuickserverServiceMaster.fromJson(value);
        case 'ReplyTicketRequest':
          return new ReplyTicketRequest.fromJson(value);
        case 'ReplyTicketResponseSchema':
          return new ReplyTicketResponseSchema.fromJson(value);
        case 'RestoreRequest':
          return new RestoreRequest.fromJson(value);
        case 'ReverseDnsEntries':
          return new ReverseDnsEntries.fromJson(value);
        case 'ScrubIpFilterTypes':
          return new ScrubIpFilterTypes.fromJson(value);
        case 'ScrubIpFilterTypesFilters':
          return new ScrubIpFilterTypesFilters.fromJson(value);
        case 'ScrubIpPlaceOrder':
          return new ScrubIpPlaceOrder.fromJson(value);
        case 'ScrubIpsLogRowSchema':
          return new ScrubIpsLogRowSchema.fromJson(value);
        case 'ScrubIpsRowSchema':
          return new ScrubIpsRowSchema.fromJson(value);
        case 'SearchAutocompleteResponse':
          return new SearchAutocompleteResponse.fromJson(value);
        case 'SendMail':
          return new SendMail.fromJson(value);
        case 'SendMailAdv':
          return new SendMailAdv.fromJson(value);
        case 'Server':
          return new Server.fromJson(value);
        case 'ServerAsset':
          return new ServerAsset.fromJson(value);
        case 'ServerAssets':
          return new ServerAssets.fromJson(value);
        case 'ServerBillingDetails':
          return new ServerBillingDetails.fromJson(value);
        case 'ServerBulkIpmiPowerResponse':
          return new ServerBulkIpmiPowerResponse.fromJson(value);
        case 'ServerBulkIpmiPowerResponseResults':
          return new ServerBulkIpmiPowerResponseResults.fromJson(value);
        case 'ServerClientLink':
          return new ServerClientLink.fromJson(value);
        case 'ServerExtraInfoTables':
          return new ServerExtraInfoTables.fromJson(value);
        case 'ServerIpmiLiveInfo':
          return new ServerIpmiLiveInfo.fromJson(value);
        case 'ServerIpmiLiveRequest':
          return new ServerIpmiLiveRequest.fromJson(value);
        case 'ServerIpmiPowerRequest':
          return new ServerIpmiPowerRequest.fromJson(value);
        case 'ServerLease':
          return new ServerLease.fromJson(value);
        case 'ServerLocation1':
          return new ServerLocation1.fromJson(value);
        case 'ServerLocations':
          return new ServerLocations.fromJson(value);
        case 'ServerNetworkInfo':
          return new ServerNetworkInfo.fromJson(value);
        case 'ServerNetworkInfoAssets':
          return new ServerNetworkInfoAssets.fromJson(value);
        case 'ServerNetworkInfoSwitchports':
          return new ServerNetworkInfoSwitchports.fromJson(value);
        case 'ServerOrder':
          return new ServerOrder.fromJson(value);
        case 'ServerOrderBandwidth':
          return new ServerOrderBandwidth.fromJson(value);
        case 'ServerOrderBandwidthLi':
          return new ServerOrderBandwidthLi.fromJson(value);
        case 'ServerOrderCPU':
          return new ServerOrderCPU.fromJson(value);
        case 'ServerOrderConfigIds':
          return new ServerOrderConfigIds.fromJson(value);
        case 'ServerOrderControlPanel':
          return new ServerOrderControlPanel.fromJson(value);
        case 'ServerOrderCpLi':
          return new ServerOrderCpLi.fromJson(value);
        case 'ServerOrderCpuLi':
          return new ServerOrderCpuLi.fromJson(value);
        case 'ServerOrderFieldLabel':
          return new ServerOrderFieldLabel.fromJson(value);
        case 'ServerOrderFieldLabels':
          return new ServerOrderFieldLabels.fromJson(value);
        case 'ServerOrderFormValues':
          return new ServerOrderFormValues.fromJson(value);
        case 'ServerOrderIP':
          return new ServerOrderIP.fromJson(value);
        case 'ServerOrderIpsLi':
          return new ServerOrderIpsLi.fromJson(value);
        case 'ServerOrderMemory':
          return new ServerOrderMemory.fromJson(value);
        case 'ServerOrderMemoryLi':
          return new ServerOrderMemoryLi.fromJson(value);
        case 'ServerOrderMemoryLi254':
          return new ServerOrderMemoryLi254.fromJson(value);
        case 'ServerOrderOS':
          return new ServerOrderOS.fromJson(value);
        case 'ServerOrderOsLi':
          return new ServerOrderOsLi.fromJson(value);
        case 'ServerOrderPostRequest':
          return new ServerOrderPostRequest.fromJson(value);
        case 'ServerOrderRAID':
          return new ServerOrderRAID.fromJson(value);
        case 'ServerRow':
          return new ServerRow.fromJson(value);
        case 'ServerServiceInfo':
          return new ServerServiceInfo.fromJson(value);
        case 'ServerSwitchport':
          return new ServerSwitchport.fromJson(value);
        case 'ServersBuyNowError':
          return new ServersBuyNowError.fromJson(value);
        case 'ServersBuyNowResponse':
          return new ServersBuyNowResponse.fromJson(value);
        case 'ServersBuyNowResponseOrderDetails':
          return new ServersBuyNowResponseOrderDetails.fromJson(value);
        case 'Service':
          return new Service.fromJson(value);
        case 'ServiceCategories':
          return new ServiceCategories.fromJson(value);
        case 'ServiceCategory':
          return new ServiceCategory.fromJson(value);
        case 'ServiceOrderPostResponse':
          return new ServiceOrderPostResponse.fromJson(value);
        case 'ServiceType':
          return new ServiceType.fromJson(value);
        case 'ServiceTypes':
          return new ServiceTypes.fromJson(value);
        case 'Services':
          return new Services.fromJson(value);
        case 'ServicesInfo':
          return new ServicesInfo.fromJson(value);
        case 'SslOrderRequest':
          return new SslOrderRequest.fromJson(value);
        case 'StartDate':
          return new StartDate.fromJson(value);
        case 'StatusMonthlyBreakdown':
          return new StatusMonthlyBreakdown.fromJson(value);
        case 'SuccessTextResponse':
          return new SuccessTextResponse.fromJson(value);
        case 'TemplateRequest':
          return new TemplateRequest.fromJson(value);
        case 'TextResponse':
          return new TextResponse.fromJson(value);
        case 'TicketCustomFieldDetails':
          return new TicketCustomFieldDetails.fromJson(value);
        case 'TicketDetails':
          return new TicketDetails.fromJson(value);
        case 'TicketNew':
          return new TicketNew.fromJson(value);
        case 'TicketNewResponse':
          return new TicketNewResponse.fromJson(value);
        case 'TicketPostDetails':
          return new TicketPostDetails.fromJson(value);
        case 'TicketPostDetailsInner':
          return new TicketPostDetailsInner.fromJson(value);
        case 'Tickets':
          return new Tickets.fromJson(value);
        case 'TicketsCountArray':
          return new TicketsCountArray.fromJson(value);
        case 'TicketsRow':
          return new TicketsRow.fromJson(value);
        case 'TimezoneUpdate':
          return new TimezoneUpdate.fromJson(value);
        case 'UpdateTicket':
          return new UpdateTicket.fromJson(value);
        case 'UpdateTicketResponseSchema':
          return new UpdateTicketResponseSchema.fromJson(value);
        case 'UrlRequest':
          return new UrlRequest.fromJson(value);
        case 'VPSTrafficDataDataSectionResponse':
          return new VPSTrafficDataDataSectionResponse.fromJson(value);
        case 'ViewTicketResponse':
          return new ViewTicketResponse.fromJson(value);
        case 'Vps':
          return new Vps.fromJson(value);
        case 'VpsBackupRow':
          return new VpsBackupRow.fromJson(value);
        case 'VpsBackupRows':
          return new VpsBackupRows.fromJson(value);
        case 'VpsBillingDetails':
          return new VpsBillingDetails.fromJson(value);
        case 'VpsCPData':
          return new VpsCPData.fromJson(value);
        case 'VpsClientLink':
          return new VpsClientLink.fromJson(value);
        case 'VpsDAData':
          return new VpsDAData.fromJson(value);
        case 'VpsDALicense':
          return new VpsDALicense.fromJson(value);
        case 'VpsExtraInfoTables':
          return new VpsExtraInfoTables.fromJson(value);
        case 'VpsIPInfo':
          return new VpsIPInfo.fromJson(value);
        case 'VpsIPInfoRow':
          return new VpsIPInfoRow.fromJson(value);
        case 'VpsOrder':
          return new VpsOrder.fromJson(value);
        case 'VpsOrderLocationNames':
          return new VpsOrderLocationNames.fromJson(value);
        case 'VpsOrderLocationStock':
          return new VpsOrderLocationStock.fromJson(value);
        case 'VpsOrderLocationStock1':
          return new VpsOrderLocationStock1.fromJson(value);
        case 'VpsOrderOsNames':
          return new VpsOrderOsNames.fromJson(value);
        case 'VpsOrderPackageCosts':
          return new VpsOrderPackageCosts.fromJson(value);
        case 'VpsOrderPlatformNames':
          return new VpsOrderPlatformNames.fromJson(value);
        case 'VpsOrderPlatformPackages':
          return new VpsOrderPlatformPackages.fromJson(value);
        case 'VpsOrderPostRequest':
          return new VpsOrderPostRequest.fromJson(value);
        case 'VpsOrderPutRequest':
          return new VpsOrderPutRequest.fromJson(value);
        case 'VpsOrderPutResponse':
          return new VpsOrderPutResponse.fromJson(value);
        case 'VpsOrderServiceTypes':
          return new VpsOrderServiceTypes.fromJson(value);
        case 'VpsOrderServiceTypes32':
          return new VpsOrderServiceTypes32.fromJson(value);
        case 'VpsOrderTemplates':
          return new VpsOrderTemplates.fromJson(value);
        case 'VpsOrderTemplatesHyperv':
          return new VpsOrderTemplatesHyperv.fromJson(value);
        case 'VpsOrderTemplatesHypervWindows':
          return new VpsOrderTemplatesHypervWindows.fromJson(value);
        case 'VpsPlesk12Data':
          return new VpsPlesk12Data.fromJson(value);
        case 'VpsPleskLicense':
          return new VpsPleskLicense.fromJson(value);
        case 'VpsRow':
          return new VpsRow.fromJson(value);
        case 'VpsServiceAddons':
          return new VpsServiceAddons.fromJson(value);
        case 'VpsServiceExtra':
          return new VpsServiceExtra.fromJson(value);
        case 'VpsServiceInfo':
          return new VpsServiceInfo.fromJson(value);
        case 'VpsServiceMaster':
          return new VpsServiceMaster.fromJson(value);
        case 'VpsSnapshot':
          return new VpsSnapshot.fromJson(value);
        case 'VpsTemplateRow':
          return new VpsTemplateRow.fromJson(value);
        case 'VpsTemplatesList':
          return new VpsTemplatesList.fromJson(value);
        case 'VpsTrafficDataSectionResponse':
          return new VpsTrafficDataSectionResponse.fromJson(value);
        case 'VpsTrafficHistoryResponse':
          return new VpsTrafficHistoryResponse.fromJson(value);
        case 'VpsTrafficHistorySectionDataResponse':
          return new VpsTrafficHistorySectionDataResponse.fromJson(value);
        case 'VpsTrafficHistorySectionResponse':
          return new VpsTrafficHistorySectionResponse.fromJson(value);
        case 'VpsTrafficResponse':
          return new VpsTrafficResponse.fromJson(value);
        case 'VpsTrafficTotalsResposne':
          return new VpsTrafficTotalsResposne.fromJson(value);
        case 'VpsTrafficTotalsSectionResponse':
          return new VpsTrafficTotalsSectionResponse.fromJson(value);
        case 'VpsTrafficUsageAverageResponse':
          return new VpsTrafficUsageAverageResponse.fromJson(value);
        case 'VpsTrafficUsageAverageSectionResponse':
          return new VpsTrafficUsageAverageSectionResponse.fromJson(value);
        case 'VpsTrafficUsageResponse':
          return new VpsTrafficUsageResponse.fromJson(value);
        case 'Website':
          return new Website.fromJson(value);
        case 'WebsiteBackups':
          return new WebsiteBackups.fromJson(value);
        case 'WebsiteBackupsInner':
          return new WebsiteBackupsInner.fromJson(value);
        case 'WebsiteBillingDetails':
          return new WebsiteBillingDetails.fromJson(value);
        case 'WebsiteClientLink':
          return new WebsiteClientLink.fromJson(value);
        case 'WebsiteExtraInfoTables':
          return new WebsiteExtraInfoTables.fromJson(value);
        case 'WebsiteLoginResponse':
          return new WebsiteLoginResponse.fromJson(value);
        case 'WebsiteOrderPostRequest':
          return new WebsiteOrderPostRequest.fromJson(value);
        case 'WebsiteOrderPutRequest':
          return new WebsiteOrderPutRequest.fromJson(value);
        case 'WebsiteRow':
          return new WebsiteRow.fromJson(value);
        case 'WebsiteServiceExtra':
          return new WebsiteServiceExtra.fromJson(value);
        case 'WebsiteServiceInfo':
          return new WebsiteServiceInfo.fromJson(value);
        case 'WebsiteServiceMaster':
          return new WebsiteServiceMaster.fromJson(value);
        case 'WebsiteTable':
          return new WebsiteTable.fromJson(value);
        case 'WebsiteTableRow':
          return new WebsiteTableRow.fromJson(value);
        case 'WebsitesOrder':
          return new WebsitesOrder.fromJson(value);
        case 'WebsitesOrderJsonServiceOffers':
          return new WebsitesOrderJsonServiceOffers.fromJson(value);
        case 'WebsitesOrderJsonServiceOffersItem':
          return new WebsitesOrderJsonServiceOffersItem.fromJson(value);
        case 'WebsitesOrderJsonServices':
          return new WebsitesOrderJsonServices.fromJson(value);
        case 'WebsitesOrderPackages':
          return new WebsitesOrderPackages.fromJson(value);
        case 'WebsitesOrderPackagesInfo':
          return new WebsitesOrderPackagesInfo.fromJson(value);
        case 'WebsitesOrderPackges':
          return new WebsitesOrderPackges.fromJson(value);
        case 'WebsitesOrderServiceOffer':
          return new WebsitesOrderServiceOffer.fromJson(value);
        case 'WebsitesOrderServiceOffers':
          return new WebsitesOrderServiceOffers.fromJson(value);
        case 'WebsitesOrderServiceTypes':
          return new WebsitesOrderServiceTypes.fromJson(value);
        default:
          {
            Match match;
            if (value is List &&
                (match = _RegList.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return value.map((v) => _deserialize(v, newTargetType)).toList();
            } else if (value is Map &&
                (match = _RegMap.firstMatch(targetType)) != null) {
              var newTargetType = match[1];
              return new Map.fromIterables(value.keys,
                  value.values.map((v) => _deserialize(v, newTargetType)));
            }
          }
      }
    } catch (e, stack) {
      throw new ApiException.withInner(500, 'Exception during deserialization.', e, stack);
    }
    throw new ApiException(500, 'Could not find a suitable class for deserialization');
  }

  dynamic deserialize(String jsonVal, String targetType) {
    // Remove all spaces.  Necessary for reg expressions as well.
    targetType = targetType.replaceAll(' ', '');

    if (targetType == 'String') return jsonVal;

    var decodedJson = json.decode(jsonVal);
    return _deserialize(decodedJson, targetType);
  }

  String serialize(Object obj) {
    String serialized = '';
    if (obj == null) {
      serialized = '';
    } else {
      serialized = json.encode(obj);
    }
    return serialized;
  }

  // We don't use a Map<String, String> for queryParams.
  // If collectionFormat is 'multi' a key might appear multiple times.
  Future<Response> invokeAPI(String path,
                             String method,
                             Iterable<QueryParam> queryParams,
                             Object body,
                             Map<String, String> headerParams,
                             Map<String, String> formParams,
                             String contentType,
                             List<String> authNames) async {

    _updateParamsForAuth(authNames, queryParams, headerParams);

    var ps = queryParams.where((p) => p.value != null).map((p) => '${Uri.encodeComponent(p.name)}=${Uri.encodeComponent(p.value)}');
    String queryString = ps.isNotEmpty ?
                         '?' + ps.join('&') :
                         '';

    String url = basePath + path + queryString;

    headerParams.addAll(_defaultHeaderMap);
    headerParams['Content-Type'] = contentType;

    if(body is MultipartRequest) {
      var request = new MultipartRequest(method, Uri.parse(url));
      request.fields.addAll(body.fields);
      request.files.addAll(body.files);
      request.headers.addAll(body.headers);
      request.headers.addAll(headerParams);
      var response = await client.send(request);
      return Response.fromStream(response);
    } else {
      var msgBody = contentType == "application/x-www-form-urlencoded" ? formParams : serialize(body);
      switch(method) {
        case "POST":
          return client.post(url, headers: headerParams, body: msgBody);
        case "PUT":
          return client.put(url, headers: headerParams, body: msgBody);
        case "DELETE":
          return client.delete(url, headers: headerParams);
        case "PATCH":
          return client.patch(url, headers: headerParams, body: msgBody);
        default:
          return client.get(url, headers: headerParams);
      }
    }
  }

  /// Update query and header parameters based on authentication settings.
  /// @param authNames The authentications to apply
  void _updateParamsForAuth(List<String> authNames, List<QueryParam> queryParams, Map<String, String> headerParams) {
    authNames.forEach((authName) {
      Authentication auth = _authentications[authName];
      if (auth == null) throw new ArgumentError("Authentication undefined: " + authName);
      auth.applyToParams(queryParams, headerParams);
    });
  }

  void setAccessToken(String accessToken) {
    _authentications.forEach((key, auth) {
      if (auth is OAuth) {
        auth.setAccessToken(accessToken);
      }
    });
  }
}
