import localVarRequest from 'request';

export * from './accountFeatures';
export * from './accountInfo';
export * from './accountInfoCountryCurrencies';
export * from './accountInfoData';
export * from './accountInfoDataCc';
export * from './accountInfoDataCcs';
export * from './accountInfoDataEmailSettings';
export * from './accountInfoDataExtra';
export * from './accountInfoDataFraudrecord';
export * from './accountInfoLimits';
export * from './accountInfoLimitsInner';
export * from './accountInfoMaxMindResponse';
export * from './accountInfoMaxMindResponseRiskScore';
export * from './accountInfoOauthConfig';
export * from './accountInfoOauthConfigProviders';
export * from './accountInfoOauthConfigProvidersValue';
export * from './accountInfoOauthproviders';
export * from './accountInfoPost';
export * from './accountSshKey';
export * from './addServer200Response';
export * from './affiliateBannerRow';
export * from './affiliateDockSetup';
export * from './affiliatePaymentSetup';
export * from './affiliateTrafficRow';
export * from './backup';
export * from './backupBillingDetails';
export * from './backupClientLink';
export * from './backupExtraInfoTables';
export * from './backupIPInfo';
export * from './backupIPInfoRow';
export * from './backupLoginResponse';
export * from './backupOrderPostResponse';
export * from './backupOrderPostResponseCjParams';
export * from './backupOrderPutRequest';
export * from './backupOrderPutResponse';
export * from './backupRow';
export * from './backupServiceInfo';
export * from './backupServiceMaster';
export * from './backupsOrder';
export * from './backupsOrderPackageCosts';
export * from './backupsOrderServiceTypes';
export * from './billingAddCcRequest';
export * from './billingInvoiceDetail';
export * from './billingInvoiceList';
export * from './billingPaymentMethodRequest';
export * from './billingPrepayRequest';
export * from './billingVerifyCcRequest';
export * from './buyItNowList';
export * from './buyItNowRow';
export * from './buyItNowRowCpuInner';
export * from './buyItNowRowCpuInnerOneOf';
export * from './buyItNowServerOrder200Response';
export * from './buyItNowServerOrder200ResponseBandwidthInner';
export * from './buyItNowServerOrder200ResponseCpInner';
export * from './buyItNowServerOrder200ResponseIpsInner';
export * from './buyItNowServerOrder200ResponseOsInner';
export * from './buyItNowServerOrder200ResponseRaidInner';
export * from './cancelBackup200Response';
export * from './cancelDomain200Response';
export * from './cancelScrubIp200Response';
export * from './captchaResponse';
export * from './chargeInvoiceRows';
export * from './chargeInvoiceRowsInvoicesValue';
export * from './chargeInvoiceRowsInvoicesValuePaidInvoicesValue';
export * from './chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue';
export * from './closeTicketResponseSchema';
export * from './createFilter';
export * from './createFilter201Response';
export * from './createFilter400Response';
export * from './createFilter500Response';
export * from './createFirewallRule';
export * from './createGeoFirewallRule';
export * from './createGeoRule400Response';
export * from './createRule201Response';
export * from './createRule400Response';
export * from './createRule500Response';
export * from './deleteFilter200Response';
export * from './deleteFilter400Response';
export * from './deleteFilter500Response';
export * from './deleteFirewallRule';
export * from './deleteGeoFirewallRule';
export * from './deleteMailAlertRequest';
export * from './denyRuleNew';
export * from './denyRuleRecord';
export * from './disableScrub200Response';
export * from './disableScrub400Response';
export * from './disableScrub500Response';
export * from './dnsListItem';
export * from './dnsNewDomain';
export * from './dnsNewRecord';
export * from './dnsRecord';
export * from './dnsRecordType';
export * from './dnsUpdateRecord';
export * from './domain';
export * from './domainAdminContact';
export * from './domainAllInfo';
export * from './domainAllInfoAttributes';
export * from './domainAllInfoAttributesContactSet';
export * from './domainBillingDetails';
export * from './domainBillingExtra';
export * from './domainClientLink';
export * from './domainContactDetails';
export * from './domainDnssecRecords';
export * from './domainDnssecRecordsInner';
export * from './domainDnssecRequest';
export * from './domainLookupResponse';
export * from './domainNameServer';
export * from './domainNameserverGetResponse';
export * from './domainNameserverGetResponseInner';
export * from './domainNameserverPostRequest';
export * from './domainNameserverPutRequest';
export * from './domainOrder';
export * from './domainOrderRequest';
export * from './domainOrderResponse';
export * from './domainOrderResponseAttributes';
export * from './domainOrderServices';
export * from './domainOrderServices10001';
export * from './domainOwnerContact';
export * from './domainProvProcessPending';
export * from './domainProvProcessPendingAttributes';
export * from './domainRow';
export * from './domainSearchResponse';
export * from './domainServiceInfo';
export * from './domainServiceType';
export * from './domainTechContact';
export * from './domainWhoisPrivacyRequest';
export * from './downloadQsBackup200Response';
export * from './downloadQsBackupRequest';
export * from './emailAddress';
export * from './emailAddressName';
export * from './enableScrub200Response';
export * from './enableScrub500Response';
export * from './floatingIpOrderRequest';
export * from './floatingIpsCancel200Response';
export * from './genericResponse';
export * from './getAccountInfo401Response';
export * from './getAccountLocales200ResponseValue';
export * from './getAccountTfaSetup200Response';
export * from './getAffiliateSignups200Response';
export * from './getOauthRedirect200Response';
export * from './getOrderDetail200Response';
export * from './getOrderDetail200ResponseIpsInner';
export * from './getOrderDetail200ResponsePackageCosts';
export * from './getOrderDetail200ResponseServiceTypesInner';
export * from './getScrubIpDetails200Response';
export * from './getScrubIpDetails200ResponseBillingDetails';
export * from './getScrubIpDetails200ResponseClientLinksInner';
export * from './getScrubIpDetails200ResponseExtraInfoTables';
export * from './getScrubIpDetails200ResponseExtraInfoTablesScrubIps';
export * from './getScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner';
export * from './getScrubIpDetails200ResponseFilterFirewall';
export * from './getScrubIpDetails200ResponseFilterFirewallFiltersInner';
export * from './getScrubIpDetails200ResponseFilterFirewallRulesInner';
export * from './getScrubIpDetails200ResponseServiceInfo';
export * from './getWebsiteBuyIp200Response';
export * from './home';
export * from './homeDetails';
export * from './homeDetailsModules';
export * from './homeDetailsModulesBackups';
export * from './homeDetailsModulesDomains';
export * from './homeDetailsModulesLicenses';
export * from './homeDetailsModulesQuickservers';
export * from './homeDetailsModulesServers';
export * from './homeDetailsModulesVps';
export * from './homeDetailsModulesWebhosting';
export * from './homeServices';
export * from './homeServicesBackups';
export * from './homeServicesDomains';
export * from './homeServicesDomainsLinks';
export * from './homeServicesLicenses';
export * from './homeServicesLicensesLinks';
export * from './homeServicesServers';
export * from './homeServicesServersLinks';
export * from './homeServicesVps';
export * from './homeServicesVpsLinks';
export * from './homeServicesWebhosting';
export * from './homeServicesWebhostingLinks';
export * from './homeTicketStatus';
export * from './homeTicketStatusView';
export * from './hostnameObject';
export * from './initiatePayment200Response';
export * from './ipLimitRange';
export * from './ipObject';
export * from './license';
export * from './licenseBillingDetails';
export * from './licenseClientLink';
export * from './licenseExtraInfoTables';
export * from './licenseIpInfo';
export * from './licenseIpInfoRow';
export * from './licenseOrderRequest';
export * from './licenseRow';
export * from './licenseServiceInfo';
export * from './licenseServiceType';
export * from './licensesCancel200Response';
export * from './licensesOrder';
export * from './licensesOrderPackageCosts';
export * from './licensesOrderServiceCategories';
export * from './licensesOrderServiceCategories509';
export * from './licensesOrderServiceTypes';
export * from './licensesOrderServiceTypes11482';
export * from './loginErrorResponse';
export * from './loginInfo';
export * from './loginServiceCounts';
export * from './loginSubmissionExample';
export * from './loginSubmissionExampleGRecaptchaResponse';
export * from './loginSubmissionExampleGRecaptchaResponseDep';
export * from './loginSuccessResponse';
export * from './mailAlertRequest';
export * from './mailAlertUpdateRequest';
export * from './mailAlertsResponse';
export * from './mailAlertsResponseInner';
export * from './mailAttachment';
export * from './mailBillingDetails';
export * from './mailBlockClickHouse';
export * from './mailBlockRspamd';
export * from './mailBlocks';
export * from './mailCancel200Response';
export * from './mailClientLink';
export * from './mailDelistRequest';
export * from './mailDelistResponse';
export * from './mailDeliverabilityResponse';
export * from './mailExtraInfoTable';
export * from './mailExtraInfoTableRow';
export * from './mailLog';
export * from './mailLogEntry';
export * from './mailOrder';
export * from './mailOrderRequest';
export * from './mailRow';
export * from './mailSchema';
export * from './mailSchemaExtraInfoTables';
export * from './mailServiceInfo';
export * from './mailServiceType';
export * from './mailStatsType';
export * from './mailStatsTypeVolume';
export * from './mailStatsTypeVolumeFrom';
export * from './mailStatsTypeVolumeIp';
export * from './mailStatsTypeVolumeTo';
export * from './mailTutorialsTable';
export * from './mailTutorialsTableRow';
export * from './moduleSettings';
export * from './modules';
export * from './monthlyCounts';
export * from './passwordRequest';
export * from './patchBillingCreditCardVerifyRequest';
export * from './patchOauthTwoFactor200Response';
export * from './patchOauthTwoFactorRequest';
export * from './placeBuyNowServerRequest';
export * from './placeScrubOrder201Response';
export * from './placeScrubOrder201ResponseOrderDetails';
export * from './placeScrubOrder201ResponseOrderDetailsCjParams';
export * from './postOauthCallback200Response';
export * from './postOauthCallbackRequest';
export * from './postWebsiteBuyIp200Response';
export * from './postWebsiteBuyIpRequest';
export * from './postWebsiteMigration200Response';
export * from './postWebsiteMigrationRequest';
export * from './putScrubIps200Response';
export * from './qsOrderRequest';
export * from './queueResponse';
export * from './quickserver';
export * from './quickserverAddons';
export * from './quickserverAddonsRow';
export * from './quickserverBillingDetails';
export * from './quickserverClientLink';
export * from './quickserverExtraInfoTables';
export * from './quickserverIpInfo';
export * from './quickserverIpTableRow';
export * from './quickserverOrder';
export * from './quickserverOrderDistroSel';
export * from './quickserverOrderDistroSelUbuntu';
export * from './quickserverOrderServerDetails';
export * from './quickserverOrderServerDetails381';
export * from './quickserverOrderTemplates';
export * from './quickserverOrderTemplatesUbuntu64';
export * from './quickserverOrderVersion';
export * from './quickserverOrderVersionCentosstream8';
export * from './quickserverRow';
export * from './quickserverServiceExtra';
export * from './quickserverServiceInfo';
export * from './quickserverServiceMaster';
export * from './quickserversCancel200Response';
export * from './replyTicketRequest';
export * from './replyTicketResponseSchema';
export * from './restoreRequest';
export * from './reverseDnsEntries';
export * from './scrubIpFilterTypes';
export * from './scrubIpFilterTypesFiltersValue';
export * from './scrubIpPlaceOrder';
export * from './scrubIpsDeleteRule200Response';
export * from './scrubIpsDeleteRule400Response';
export * from './scrubIpsDeleteRule500Response';
export * from './scrubIpsLogRowSchema';
export * from './scrubIpsRowSchema';
export * from './searchAutocompleteResponse';
export * from './sendMail';
export * from './sendMailAdv';
export * from './server';
export * from './serverAsset';
export * from './serverAssets';
export * from './serverBillingDetails';
export * from './serverBulkIpmiPowerResponse';
export * from './serverBulkIpmiPowerResponseResultsInner';
export * from './serverClientLink';
export * from './serverExtraInfoTables';
export * from './serverIpmiLiveInfo';
export * from './serverIpmiLiveRequest';
export * from './serverIpmiPowerRequest';
export * from './serverLease';
export * from './serverLocation1';
export * from './serverLocations';
export * from './serverNetworkInfo';
export * from './serverNetworkInfoAssets';
export * from './serverNetworkInfoSwitchports';
export * from './serverOrder';
export * from './serverOrderBandwidth';
export * from './serverOrderBandwidthLi';
export * from './serverOrderCPU';
export * from './serverOrderConfigIds';
export * from './serverOrderControlPanel';
export * from './serverOrderCpLi';
export * from './serverOrderCpuLi';
export * from './serverOrderFieldLabel';
export * from './serverOrderFieldLabels';
export * from './serverOrderFormValues';
export * from './serverOrderIP';
export * from './serverOrderIpsLi';
export * from './serverOrderMemory';
export * from './serverOrderMemoryLi';
export * from './serverOrderMemoryLi254';
export * from './serverOrderOS';
export * from './serverOrderOsLi';
export * from './serverOrderPostRequest';
export * from './serverOrderPostRequestHd';
export * from './serverOrderRAID';
export * from './serverRow';
export * from './serverServiceInfo';
export * from './serverSwitchport';
export * from './serversBuyNowError';
export * from './serversBuyNowResponse';
export * from './serversBuyNowResponseOrderDetails';
export * from './serversCancel200Response';
export * from './service';
export * from './serviceCategories';
export * from './serviceCategory';
export * from './serviceOrderPostResponse';
export * from './serviceType';
export * from './serviceTypes';
export * from './services';
export * from './servicesInfo';
export * from './sslCancel200Response';
export * from './sslOrderRequest';
export * from './statusMonthlyBreakdown';
export * from './successTextResponse';
export * from './templateRequest';
export * from './textResponse';
export * from './ticketCustomFieldDetails';
export * from './ticketDetails';
export * from './ticketNew';
export * from './ticketNewResponse';
export * from './ticketPostDetails';
export * from './ticketPostDetailsInner';
export * from './tickets';
export * from './ticketsCountArray';
export * from './ticketsRow';
export * from './timezoneUpdate';
export * from './updateAccountTfaRequest';
export * from './updateTicket';
export * from './updateTicketResponseSchema';
export * from './urlRequest';
export * from './vPSCancel200Response';
export * from './vPSTrafficDataDataSectionResponse';
export * from './vPSTrafficDataDataSectionResponseInner';
export * from './viewMailLogStartDateParameter';
export * from './viewTicketResponse';
export * from './vps';
export * from './vpsBackupRow';
export * from './vpsBackupRows';
export * from './vpsBillingDetails';
export * from './vpsCPData';
export * from './vpsClientLink';
export * from './vpsDAData';
export * from './vpsDALicense';
export * from './vpsExtraInfoTables';
export * from './vpsIPInfo';
export * from './vpsIPInfoRow';
export * from './vpsOrder';
export * from './vpsOrderLocationNames';
export * from './vpsOrderLocationStock';
export * from './vpsOrderLocationStock1';
export * from './vpsOrderOsNames';
export * from './vpsOrderPackageCosts';
export * from './vpsOrderPlatformNames';
export * from './vpsOrderPlatformPackages';
export * from './vpsOrderPostRequest';
export * from './vpsOrderPutRequest';
export * from './vpsOrderPutResponse';
export * from './vpsOrderServiceTypes';
export * from './vpsOrderServiceTypes32';
export * from './vpsOrderTemplates';
export * from './vpsOrderTemplatesHyperv';
export * from './vpsOrderTemplatesHypervWindows';
export * from './vpsPlesk12Data';
export * from './vpsPleskLicense';
export * from './vpsRow';
export * from './vpsServiceAddons';
export * from './vpsServiceExtra';
export * from './vpsServiceInfo';
export * from './vpsServiceMaster';
export * from './vpsSnapshot';
export * from './vpsTemplateRow';
export * from './vpsTemplatesList';
export * from './vpsTrafficDataSectionResponse';
export * from './vpsTrafficHistoryResponse';
export * from './vpsTrafficHistorySectionDataResponse';
export * from './vpsTrafficHistorySectionResponse';
export * from './vpsTrafficResponse';
export * from './vpsTrafficTotalsResposne';
export * from './vpsTrafficTotalsSectionResponse';
export * from './vpsTrafficUsageAverageResponse';
export * from './vpsTrafficUsageAverageSectionResponse';
export * from './vpsTrafficUsageResponse';
export * from './webhostingCancel200Response';
export * from './website';
export * from './websiteBackups';
export * from './websiteBackupsInner';
export * from './websiteBillingDetails';
export * from './websiteClientLink';
export * from './websiteExtraInfoTables';
export * from './websiteLoginResponse';
export * from './websiteOrderPostRequest';
export * from './websiteOrderPutRequest';
export * from './websiteRow';
export * from './websiteServiceInfo';
export * from './websiteServiceMaster';
export * from './websiteTable';
export * from './websiteTableRow';
export * from './websitesOrder';
export * from './websitesOrderJsonServiceOffers';
export * from './websitesOrderJsonServiceOffersItem';
export * from './websitesOrderJsonServices';
export * from './websitesOrderPackages';
export * from './websitesOrderPackagesInfo';
export * from './websitesOrderPackges';
export * from './websitesOrderServiceOffer';
export * from './websitesOrderServiceOffers';
export * from './websitesOrderServiceTypes';

import * as fs from 'fs';

export interface RequestDetailedFile {
    value: Buffer;
    options?: {
        filename?: string;
        contentType?: string;
    }
}

export type RequestFile = string | Buffer | fs.ReadStream | RequestDetailedFile;


import { AccountFeatures } from './accountFeatures';
import { AccountInfo } from './accountInfo';
import { AccountInfoCountryCurrencies } from './accountInfoCountryCurrencies';
import { AccountInfoData } from './accountInfoData';
import { AccountInfoDataCc } from './accountInfoDataCc';
import { AccountInfoDataCcs } from './accountInfoDataCcs';
import { AccountInfoDataEmailSettings } from './accountInfoDataEmailSettings';
import { AccountInfoDataExtra } from './accountInfoDataExtra';
import { AccountInfoDataFraudrecord } from './accountInfoDataFraudrecord';
import { AccountInfoLimits } from './accountInfoLimits';
import { AccountInfoLimitsInner } from './accountInfoLimitsInner';
import { AccountInfoMaxMindResponse } from './accountInfoMaxMindResponse';
import { AccountInfoMaxMindResponseRiskScore } from './accountInfoMaxMindResponseRiskScore';
import { AccountInfoOauthConfig } from './accountInfoOauthConfig';
import { AccountInfoOauthConfigProviders } from './accountInfoOauthConfigProviders';
import { AccountInfoOauthConfigProvidersValue } from './accountInfoOauthConfigProvidersValue';
import { AccountInfoOauthproviders } from './accountInfoOauthproviders';
import { AccountInfoPost } from './accountInfoPost';
import { AccountSshKey } from './accountSshKey';
import { AddServer200Response } from './addServer200Response';
import { AffiliateBannerRow } from './affiliateBannerRow';
import { AffiliateDockSetup } from './affiliateDockSetup';
import { AffiliatePaymentSetup } from './affiliatePaymentSetup';
import { AffiliateTrafficRow } from './affiliateTrafficRow';
import { Backup } from './backup';
import { BackupBillingDetails } from './backupBillingDetails';
import { BackupClientLink } from './backupClientLink';
import { BackupExtraInfoTables } from './backupExtraInfoTables';
import { BackupIPInfo } from './backupIPInfo';
import { BackupIPInfoRow } from './backupIPInfoRow';
import { BackupLoginResponse } from './backupLoginResponse';
import { BackupOrderPostResponse } from './backupOrderPostResponse';
import { BackupOrderPostResponseCjParams } from './backupOrderPostResponseCjParams';
import { BackupOrderPutRequest } from './backupOrderPutRequest';
import { BackupOrderPutResponse } from './backupOrderPutResponse';
import { BackupRow } from './backupRow';
import { BackupServiceInfo } from './backupServiceInfo';
import { BackupServiceMaster } from './backupServiceMaster';
import { BackupsOrder } from './backupsOrder';
import { BackupsOrderPackageCosts } from './backupsOrderPackageCosts';
import { BackupsOrderServiceTypes } from './backupsOrderServiceTypes';
import { BillingAddCcRequest } from './billingAddCcRequest';
import { BillingInvoiceDetail } from './billingInvoiceDetail';
import { BillingInvoiceList } from './billingInvoiceList';
import { BillingPaymentMethodRequest } from './billingPaymentMethodRequest';
import { BillingPrepayRequest } from './billingPrepayRequest';
import { BillingVerifyCcRequest } from './billingVerifyCcRequest';
import { BuyItNowList } from './buyItNowList';
import { BuyItNowRow } from './buyItNowRow';
import { BuyItNowRowCpuInner } from './buyItNowRowCpuInner';
import { BuyItNowRowCpuInnerOneOf } from './buyItNowRowCpuInnerOneOf';
import { BuyItNowServerOrder200Response } from './buyItNowServerOrder200Response';
import { BuyItNowServerOrder200ResponseBandwidthInner } from './buyItNowServerOrder200ResponseBandwidthInner';
import { BuyItNowServerOrder200ResponseCpInner } from './buyItNowServerOrder200ResponseCpInner';
import { BuyItNowServerOrder200ResponseIpsInner } from './buyItNowServerOrder200ResponseIpsInner';
import { BuyItNowServerOrder200ResponseOsInner } from './buyItNowServerOrder200ResponseOsInner';
import { BuyItNowServerOrder200ResponseRaidInner } from './buyItNowServerOrder200ResponseRaidInner';
import { CancelBackup200Response } from './cancelBackup200Response';
import { CancelDomain200Response } from './cancelDomain200Response';
import { CancelScrubIp200Response } from './cancelScrubIp200Response';
import { CaptchaResponse } from './captchaResponse';
import { ChargeInvoiceRows } from './chargeInvoiceRows';
import { ChargeInvoiceRowsInvoicesValue } from './chargeInvoiceRowsInvoicesValue';
import { ChargeInvoiceRowsInvoicesValuePaidInvoicesValue } from './chargeInvoiceRowsInvoicesValuePaidInvoicesValue';
import { ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue } from './chargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue';
import { CloseTicketResponseSchema } from './closeTicketResponseSchema';
import { CreateFilter } from './createFilter';
import { CreateFilter201Response } from './createFilter201Response';
import { CreateFilter400Response } from './createFilter400Response';
import { CreateFilter500Response } from './createFilter500Response';
import { CreateFirewallRule } from './createFirewallRule';
import { CreateGeoFirewallRule } from './createGeoFirewallRule';
import { CreateGeoRule400Response } from './createGeoRule400Response';
import { CreateRule201Response } from './createRule201Response';
import { CreateRule400Response } from './createRule400Response';
import { CreateRule500Response } from './createRule500Response';
import { DeleteFilter200Response } from './deleteFilter200Response';
import { DeleteFilter400Response } from './deleteFilter400Response';
import { DeleteFilter500Response } from './deleteFilter500Response';
import { DeleteFirewallRule } from './deleteFirewallRule';
import { DeleteGeoFirewallRule } from './deleteGeoFirewallRule';
import { DeleteMailAlertRequest } from './deleteMailAlertRequest';
import { DenyRuleNew } from './denyRuleNew';
import { DenyRuleRecord } from './denyRuleRecord';
import { DisableScrub200Response } from './disableScrub200Response';
import { DisableScrub400Response } from './disableScrub400Response';
import { DisableScrub500Response } from './disableScrub500Response';
import { DnsListItem } from './dnsListItem';
import { DnsNewDomain } from './dnsNewDomain';
import { DnsNewRecord } from './dnsNewRecord';
import { DnsRecord } from './dnsRecord';
import { DnsRecordType } from './dnsRecordType';
import { DnsUpdateRecord } from './dnsUpdateRecord';
import { Domain } from './domain';
import { DomainAdminContact } from './domainAdminContact';
import { DomainAllInfo } from './domainAllInfo';
import { DomainAllInfoAttributes } from './domainAllInfoAttributes';
import { DomainAllInfoAttributesContactSet } from './domainAllInfoAttributesContactSet';
import { DomainBillingDetails } from './domainBillingDetails';
import { DomainBillingExtra } from './domainBillingExtra';
import { DomainClientLink } from './domainClientLink';
import { DomainContactDetails } from './domainContactDetails';
import { DomainDnssecRecords } from './domainDnssecRecords';
import { DomainDnssecRecordsInner } from './domainDnssecRecordsInner';
import { DomainDnssecRequest } from './domainDnssecRequest';
import { DomainLookupResponse } from './domainLookupResponse';
import { DomainNameServer } from './domainNameServer';
import { DomainNameserverGetResponse } from './domainNameserverGetResponse';
import { DomainNameserverGetResponseInner } from './domainNameserverGetResponseInner';
import { DomainNameserverPostRequest } from './domainNameserverPostRequest';
import { DomainNameserverPutRequest } from './domainNameserverPutRequest';
import { DomainOrder } from './domainOrder';
import { DomainOrderRequest } from './domainOrderRequest';
import { DomainOrderResponse } from './domainOrderResponse';
import { DomainOrderResponseAttributes } from './domainOrderResponseAttributes';
import { DomainOrderServices } from './domainOrderServices';
import { DomainOrderServices10001 } from './domainOrderServices10001';
import { DomainOwnerContact } from './domainOwnerContact';
import { DomainProvProcessPending } from './domainProvProcessPending';
import { DomainProvProcessPendingAttributes } from './domainProvProcessPendingAttributes';
import { DomainRow } from './domainRow';
import { DomainSearchResponse } from './domainSearchResponse';
import { DomainServiceInfo } from './domainServiceInfo';
import { DomainServiceType } from './domainServiceType';
import { DomainTechContact } from './domainTechContact';
import { DomainWhoisPrivacyRequest } from './domainWhoisPrivacyRequest';
import { DownloadQsBackup200Response } from './downloadQsBackup200Response';
import { DownloadQsBackupRequest } from './downloadQsBackupRequest';
import { EmailAddress } from './emailAddress';
import { EmailAddressName } from './emailAddressName';
import { EnableScrub200Response } from './enableScrub200Response';
import { EnableScrub500Response } from './enableScrub500Response';
import { FloatingIpOrderRequest } from './floatingIpOrderRequest';
import { FloatingIpsCancel200Response } from './floatingIpsCancel200Response';
import { GenericResponse } from './genericResponse';
import { GetAccountInfo401Response } from './getAccountInfo401Response';
import { GetAccountLocales200ResponseValue } from './getAccountLocales200ResponseValue';
import { GetAccountTfaSetup200Response } from './getAccountTfaSetup200Response';
import { GetAffiliateSignups200Response } from './getAffiliateSignups200Response';
import { GetOauthRedirect200Response } from './getOauthRedirect200Response';
import { GetOrderDetail200Response } from './getOrderDetail200Response';
import { GetOrderDetail200ResponseIpsInner } from './getOrderDetail200ResponseIpsInner';
import { GetOrderDetail200ResponsePackageCosts } from './getOrderDetail200ResponsePackageCosts';
import { GetOrderDetail200ResponseServiceTypesInner } from './getOrderDetail200ResponseServiceTypesInner';
import { GetScrubIpDetails200Response } from './getScrubIpDetails200Response';
import { GetScrubIpDetails200ResponseBillingDetails } from './getScrubIpDetails200ResponseBillingDetails';
import { GetScrubIpDetails200ResponseClientLinksInner } from './getScrubIpDetails200ResponseClientLinksInner';
import { GetScrubIpDetails200ResponseExtraInfoTables } from './getScrubIpDetails200ResponseExtraInfoTables';
import { GetScrubIpDetails200ResponseExtraInfoTablesScrubIps } from './getScrubIpDetails200ResponseExtraInfoTablesScrubIps';
import { GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner } from './getScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner';
import { GetScrubIpDetails200ResponseFilterFirewall } from './getScrubIpDetails200ResponseFilterFirewall';
import { GetScrubIpDetails200ResponseFilterFirewallFiltersInner } from './getScrubIpDetails200ResponseFilterFirewallFiltersInner';
import { GetScrubIpDetails200ResponseFilterFirewallRulesInner } from './getScrubIpDetails200ResponseFilterFirewallRulesInner';
import { GetScrubIpDetails200ResponseServiceInfo } from './getScrubIpDetails200ResponseServiceInfo';
import { GetWebsiteBuyIp200Response } from './getWebsiteBuyIp200Response';
import { Home } from './home';
import { HomeDetails } from './homeDetails';
import { HomeDetailsModules } from './homeDetailsModules';
import { HomeDetailsModulesBackups } from './homeDetailsModulesBackups';
import { HomeDetailsModulesDomains } from './homeDetailsModulesDomains';
import { HomeDetailsModulesLicenses } from './homeDetailsModulesLicenses';
import { HomeDetailsModulesQuickservers } from './homeDetailsModulesQuickservers';
import { HomeDetailsModulesServers } from './homeDetailsModulesServers';
import { HomeDetailsModulesVps } from './homeDetailsModulesVps';
import { HomeDetailsModulesWebhosting } from './homeDetailsModulesWebhosting';
import { HomeServices } from './homeServices';
import { HomeServicesBackups } from './homeServicesBackups';
import { HomeServicesDomains } from './homeServicesDomains';
import { HomeServicesDomainsLinks } from './homeServicesDomainsLinks';
import { HomeServicesLicenses } from './homeServicesLicenses';
import { HomeServicesLicensesLinks } from './homeServicesLicensesLinks';
import { HomeServicesServers } from './homeServicesServers';
import { HomeServicesServersLinks } from './homeServicesServersLinks';
import { HomeServicesVps } from './homeServicesVps';
import { HomeServicesVpsLinks } from './homeServicesVpsLinks';
import { HomeServicesWebhosting } from './homeServicesWebhosting';
import { HomeServicesWebhostingLinks } from './homeServicesWebhostingLinks';
import { HomeTicketStatus } from './homeTicketStatus';
import { HomeTicketStatusView } from './homeTicketStatusView';
import { HostnameObject } from './hostnameObject';
import { InitiatePayment200Response } from './initiatePayment200Response';
import { IpLimitRange } from './ipLimitRange';
import { IpObject } from './ipObject';
import { License } from './license';
import { LicenseBillingDetails } from './licenseBillingDetails';
import { LicenseClientLink } from './licenseClientLink';
import { LicenseExtraInfoTables } from './licenseExtraInfoTables';
import { LicenseIpInfo } from './licenseIpInfo';
import { LicenseIpInfoRow } from './licenseIpInfoRow';
import { LicenseOrderRequest } from './licenseOrderRequest';
import { LicenseRow } from './licenseRow';
import { LicenseServiceInfo } from './licenseServiceInfo';
import { LicenseServiceType } from './licenseServiceType';
import { LicensesCancel200Response } from './licensesCancel200Response';
import { LicensesOrder } from './licensesOrder';
import { LicensesOrderPackageCosts } from './licensesOrderPackageCosts';
import { LicensesOrderServiceCategories } from './licensesOrderServiceCategories';
import { LicensesOrderServiceCategories509 } from './licensesOrderServiceCategories509';
import { LicensesOrderServiceTypes } from './licensesOrderServiceTypes';
import { LicensesOrderServiceTypes11482 } from './licensesOrderServiceTypes11482';
import { LoginErrorResponse } from './loginErrorResponse';
import { LoginInfo } from './loginInfo';
import { LoginServiceCounts } from './loginServiceCounts';
import { LoginSubmissionExample } from './loginSubmissionExample';
import { LoginSubmissionExampleGRecaptchaResponse } from './loginSubmissionExampleGRecaptchaResponse';
import { LoginSubmissionExampleGRecaptchaResponseDep } from './loginSubmissionExampleGRecaptchaResponseDep';
import { LoginSuccessResponse } from './loginSuccessResponse';
import { MailAlertRequest } from './mailAlertRequest';
import { MailAlertUpdateRequest } from './mailAlertUpdateRequest';
import { MailAlertsResponse } from './mailAlertsResponse';
import { MailAlertsResponseInner } from './mailAlertsResponseInner';
import { MailAttachment } from './mailAttachment';
import { MailBillingDetails } from './mailBillingDetails';
import { MailBlockClickHouse } from './mailBlockClickHouse';
import { MailBlockRspamd } from './mailBlockRspamd';
import { MailBlocks } from './mailBlocks';
import { MailCancel200Response } from './mailCancel200Response';
import { MailClientLink } from './mailClientLink';
import { MailDelistRequest } from './mailDelistRequest';
import { MailDelistResponse } from './mailDelistResponse';
import { MailDeliverabilityResponse } from './mailDeliverabilityResponse';
import { MailExtraInfoTable } from './mailExtraInfoTable';
import { MailExtraInfoTableRow } from './mailExtraInfoTableRow';
import { MailLog } from './mailLog';
import { MailLogEntry } from './mailLogEntry';
import { MailOrder } from './mailOrder';
import { MailOrderRequest } from './mailOrderRequest';
import { MailRow } from './mailRow';
import { MailSchema } from './mailSchema';
import { MailSchemaExtraInfoTables } from './mailSchemaExtraInfoTables';
import { MailServiceInfo } from './mailServiceInfo';
import { MailServiceType } from './mailServiceType';
import { MailStatsType } from './mailStatsType';
import { MailStatsTypeVolume } from './mailStatsTypeVolume';
import { MailStatsTypeVolumeFrom } from './mailStatsTypeVolumeFrom';
import { MailStatsTypeVolumeIp } from './mailStatsTypeVolumeIp';
import { MailStatsTypeVolumeTo } from './mailStatsTypeVolumeTo';
import { MailTutorialsTable } from './mailTutorialsTable';
import { MailTutorialsTableRow } from './mailTutorialsTableRow';
import { ModuleSettings } from './moduleSettings';
import { Modules } from './modules';
import { MonthlyCounts } from './monthlyCounts';
import { PasswordRequest } from './passwordRequest';
import { PatchBillingCreditCardVerifyRequest } from './patchBillingCreditCardVerifyRequest';
import { PatchOauthTwoFactor200Response } from './patchOauthTwoFactor200Response';
import { PatchOauthTwoFactorRequest } from './patchOauthTwoFactorRequest';
import { PlaceBuyNowServerRequest } from './placeBuyNowServerRequest';
import { PlaceScrubOrder201Response } from './placeScrubOrder201Response';
import { PlaceScrubOrder201ResponseOrderDetails } from './placeScrubOrder201ResponseOrderDetails';
import { PlaceScrubOrder201ResponseOrderDetailsCjParams } from './placeScrubOrder201ResponseOrderDetailsCjParams';
import { PostOauthCallback200Response } from './postOauthCallback200Response';
import { PostOauthCallbackRequest } from './postOauthCallbackRequest';
import { PostWebsiteBuyIp200Response } from './postWebsiteBuyIp200Response';
import { PostWebsiteBuyIpRequest } from './postWebsiteBuyIpRequest';
import { PostWebsiteMigration200Response } from './postWebsiteMigration200Response';
import { PostWebsiteMigrationRequest } from './postWebsiteMigrationRequest';
import { PutScrubIps200Response } from './putScrubIps200Response';
import { QsOrderRequest } from './qsOrderRequest';
import { QueueResponse } from './queueResponse';
import { Quickserver } from './quickserver';
import { QuickserverAddons } from './quickserverAddons';
import { QuickserverAddonsRow } from './quickserverAddonsRow';
import { QuickserverBillingDetails } from './quickserverBillingDetails';
import { QuickserverClientLink } from './quickserverClientLink';
import { QuickserverExtraInfoTables } from './quickserverExtraInfoTables';
import { QuickserverIpInfo } from './quickserverIpInfo';
import { QuickserverIpTableRow } from './quickserverIpTableRow';
import { QuickserverOrder } from './quickserverOrder';
import { QuickserverOrderDistroSel } from './quickserverOrderDistroSel';
import { QuickserverOrderDistroSelUbuntu } from './quickserverOrderDistroSelUbuntu';
import { QuickserverOrderServerDetails } from './quickserverOrderServerDetails';
import { QuickserverOrderServerDetails381 } from './quickserverOrderServerDetails381';
import { QuickserverOrderTemplates } from './quickserverOrderTemplates';
import { QuickserverOrderTemplatesUbuntu64 } from './quickserverOrderTemplatesUbuntu64';
import { QuickserverOrderVersion } from './quickserverOrderVersion';
import { QuickserverOrderVersionCentosstream8 } from './quickserverOrderVersionCentosstream8';
import { QuickserverRow } from './quickserverRow';
import { QuickserverServiceExtra } from './quickserverServiceExtra';
import { QuickserverServiceInfo } from './quickserverServiceInfo';
import { QuickserverServiceMaster } from './quickserverServiceMaster';
import { QuickserversCancel200Response } from './quickserversCancel200Response';
import { ReplyTicketRequest } from './replyTicketRequest';
import { ReplyTicketResponseSchema } from './replyTicketResponseSchema';
import { RestoreRequest } from './restoreRequest';
import { ReverseDnsEntries } from './reverseDnsEntries';
import { ScrubIpFilterTypes } from './scrubIpFilterTypes';
import { ScrubIpFilterTypesFiltersValue } from './scrubIpFilterTypesFiltersValue';
import { ScrubIpPlaceOrder } from './scrubIpPlaceOrder';
import { ScrubIpsDeleteRule200Response } from './scrubIpsDeleteRule200Response';
import { ScrubIpsDeleteRule400Response } from './scrubIpsDeleteRule400Response';
import { ScrubIpsDeleteRule500Response } from './scrubIpsDeleteRule500Response';
import { ScrubIpsLogRowSchema } from './scrubIpsLogRowSchema';
import { ScrubIpsRowSchema } from './scrubIpsRowSchema';
import { SearchAutocompleteResponse } from './searchAutocompleteResponse';
import { SendMail } from './sendMail';
import { SendMailAdv } from './sendMailAdv';
import { Server } from './server';
import { ServerAsset } from './serverAsset';
import { ServerAssets } from './serverAssets';
import { ServerBillingDetails } from './serverBillingDetails';
import { ServerBulkIpmiPowerResponse } from './serverBulkIpmiPowerResponse';
import { ServerBulkIpmiPowerResponseResultsInner } from './serverBulkIpmiPowerResponseResultsInner';
import { ServerClientLink } from './serverClientLink';
import { ServerExtraInfoTables } from './serverExtraInfoTables';
import { ServerIpmiLiveInfo } from './serverIpmiLiveInfo';
import { ServerIpmiLiveRequest } from './serverIpmiLiveRequest';
import { ServerIpmiPowerRequest } from './serverIpmiPowerRequest';
import { ServerLease } from './serverLease';
import { ServerLocation1 } from './serverLocation1';
import { ServerLocations } from './serverLocations';
import { ServerNetworkInfo } from './serverNetworkInfo';
import { ServerNetworkInfoAssets } from './serverNetworkInfoAssets';
import { ServerNetworkInfoSwitchports } from './serverNetworkInfoSwitchports';
import { ServerOrder } from './serverOrder';
import { ServerOrderBandwidth } from './serverOrderBandwidth';
import { ServerOrderBandwidthLi } from './serverOrderBandwidthLi';
import { ServerOrderCPU } from './serverOrderCPU';
import { ServerOrderConfigIds } from './serverOrderConfigIds';
import { ServerOrderControlPanel } from './serverOrderControlPanel';
import { ServerOrderCpLi } from './serverOrderCpLi';
import { ServerOrderCpuLi } from './serverOrderCpuLi';
import { ServerOrderFieldLabel } from './serverOrderFieldLabel';
import { ServerOrderFieldLabels } from './serverOrderFieldLabels';
import { ServerOrderFormValues } from './serverOrderFormValues';
import { ServerOrderIP } from './serverOrderIP';
import { ServerOrderIpsLi } from './serverOrderIpsLi';
import { ServerOrderMemory } from './serverOrderMemory';
import { ServerOrderMemoryLi } from './serverOrderMemoryLi';
import { ServerOrderMemoryLi254 } from './serverOrderMemoryLi254';
import { ServerOrderOS } from './serverOrderOS';
import { ServerOrderOsLi } from './serverOrderOsLi';
import { ServerOrderPostRequest } from './serverOrderPostRequest';
import { ServerOrderPostRequestHd } from './serverOrderPostRequestHd';
import { ServerOrderRAID } from './serverOrderRAID';
import { ServerRow } from './serverRow';
import { ServerServiceInfo } from './serverServiceInfo';
import { ServerSwitchport } from './serverSwitchport';
import { ServersBuyNowError } from './serversBuyNowError';
import { ServersBuyNowResponse } from './serversBuyNowResponse';
import { ServersBuyNowResponseOrderDetails } from './serversBuyNowResponseOrderDetails';
import { ServersCancel200Response } from './serversCancel200Response';
import { Service } from './service';
import { ServiceCategories } from './serviceCategories';
import { ServiceCategory } from './serviceCategory';
import { ServiceOrderPostResponse } from './serviceOrderPostResponse';
import { ServiceType } from './serviceType';
import { ServiceTypes } from './serviceTypes';
import { Services } from './services';
import { ServicesInfo } from './servicesInfo';
import { SslCancel200Response } from './sslCancel200Response';
import { SslOrderRequest } from './sslOrderRequest';
import { StatusMonthlyBreakdown } from './statusMonthlyBreakdown';
import { SuccessTextResponse } from './successTextResponse';
import { TemplateRequest } from './templateRequest';
import { TextResponse } from './textResponse';
import { TicketCustomFieldDetails } from './ticketCustomFieldDetails';
import { TicketDetails } from './ticketDetails';
import { TicketNew } from './ticketNew';
import { TicketNewResponse } from './ticketNewResponse';
import { TicketPostDetails } from './ticketPostDetails';
import { TicketPostDetailsInner } from './ticketPostDetailsInner';
import { Tickets } from './tickets';
import { TicketsCountArray } from './ticketsCountArray';
import { TicketsRow } from './ticketsRow';
import { TimezoneUpdate } from './timezoneUpdate';
import { UpdateAccountTfaRequest } from './updateAccountTfaRequest';
import { UpdateTicket } from './updateTicket';
import { UpdateTicketResponseSchema } from './updateTicketResponseSchema';
import { UrlRequest } from './urlRequest';
import { VPSCancel200Response } from './vPSCancel200Response';
import { VPSTrafficDataDataSectionResponse } from './vPSTrafficDataDataSectionResponse';
import { VPSTrafficDataDataSectionResponseInner } from './vPSTrafficDataDataSectionResponseInner';
import { ViewMailLogStartDateParameter } from './viewMailLogStartDateParameter';
import { ViewTicketResponse } from './viewTicketResponse';
import { Vps } from './vps';
import { VpsBackupRow } from './vpsBackupRow';
import { VpsBackupRows } from './vpsBackupRows';
import { VpsBillingDetails } from './vpsBillingDetails';
import { VpsCPData } from './vpsCPData';
import { VpsClientLink } from './vpsClientLink';
import { VpsDAData } from './vpsDAData';
import { VpsDALicense } from './vpsDALicense';
import { VpsExtraInfoTables } from './vpsExtraInfoTables';
import { VpsIPInfo } from './vpsIPInfo';
import { VpsIPInfoRow } from './vpsIPInfoRow';
import { VpsOrder } from './vpsOrder';
import { VpsOrderLocationNames } from './vpsOrderLocationNames';
import { VpsOrderLocationStock } from './vpsOrderLocationStock';
import { VpsOrderLocationStock1 } from './vpsOrderLocationStock1';
import { VpsOrderOsNames } from './vpsOrderOsNames';
import { VpsOrderPackageCosts } from './vpsOrderPackageCosts';
import { VpsOrderPlatformNames } from './vpsOrderPlatformNames';
import { VpsOrderPlatformPackages } from './vpsOrderPlatformPackages';
import { VpsOrderPostRequest } from './vpsOrderPostRequest';
import { VpsOrderPutRequest } from './vpsOrderPutRequest';
import { VpsOrderPutResponse } from './vpsOrderPutResponse';
import { VpsOrderServiceTypes } from './vpsOrderServiceTypes';
import { VpsOrderServiceTypes32 } from './vpsOrderServiceTypes32';
import { VpsOrderTemplates } from './vpsOrderTemplates';
import { VpsOrderTemplatesHyperv } from './vpsOrderTemplatesHyperv';
import { VpsOrderTemplatesHypervWindows } from './vpsOrderTemplatesHypervWindows';
import { VpsPlesk12Data } from './vpsPlesk12Data';
import { VpsPleskLicense } from './vpsPleskLicense';
import { VpsRow } from './vpsRow';
import { VpsServiceAddons } from './vpsServiceAddons';
import { VpsServiceExtra } from './vpsServiceExtra';
import { VpsServiceInfo } from './vpsServiceInfo';
import { VpsServiceMaster } from './vpsServiceMaster';
import { VpsSnapshot } from './vpsSnapshot';
import { VpsTemplateRow } from './vpsTemplateRow';
import { VpsTemplatesList } from './vpsTemplatesList';
import { VpsTrafficDataSectionResponse } from './vpsTrafficDataSectionResponse';
import { VpsTrafficHistoryResponse } from './vpsTrafficHistoryResponse';
import { VpsTrafficHistorySectionDataResponse } from './vpsTrafficHistorySectionDataResponse';
import { VpsTrafficHistorySectionResponse } from './vpsTrafficHistorySectionResponse';
import { VpsTrafficResponse } from './vpsTrafficResponse';
import { VpsTrafficTotalsResposne } from './vpsTrafficTotalsResposne';
import { VpsTrafficTotalsSectionResponse } from './vpsTrafficTotalsSectionResponse';
import { VpsTrafficUsageAverageResponse } from './vpsTrafficUsageAverageResponse';
import { VpsTrafficUsageAverageSectionResponse } from './vpsTrafficUsageAverageSectionResponse';
import { VpsTrafficUsageResponse } from './vpsTrafficUsageResponse';
import { WebhostingCancel200Response } from './webhostingCancel200Response';
import { Website } from './website';
import { WebsiteBackups } from './websiteBackups';
import { WebsiteBackupsInner } from './websiteBackupsInner';
import { WebsiteBillingDetails } from './websiteBillingDetails';
import { WebsiteClientLink } from './websiteClientLink';
import { WebsiteExtraInfoTables } from './websiteExtraInfoTables';
import { WebsiteLoginResponse } from './websiteLoginResponse';
import { WebsiteOrderPostRequest } from './websiteOrderPostRequest';
import { WebsiteOrderPutRequest } from './websiteOrderPutRequest';
import { WebsiteRow } from './websiteRow';
import { WebsiteServiceInfo } from './websiteServiceInfo';
import { WebsiteServiceMaster } from './websiteServiceMaster';
import { WebsiteTable } from './websiteTable';
import { WebsiteTableRow } from './websiteTableRow';
import { WebsitesOrder } from './websitesOrder';
import { WebsitesOrderJsonServiceOffers } from './websitesOrderJsonServiceOffers';
import { WebsitesOrderJsonServiceOffersItem } from './websitesOrderJsonServiceOffersItem';
import { WebsitesOrderJsonServices } from './websitesOrderJsonServices';
import { WebsitesOrderPackages } from './websitesOrderPackages';
import { WebsitesOrderPackagesInfo } from './websitesOrderPackagesInfo';
import { WebsitesOrderPackges } from './websitesOrderPackges';
import { WebsitesOrderServiceOffer } from './websitesOrderServiceOffer';
import { WebsitesOrderServiceOffers } from './websitesOrderServiceOffers';
import { WebsitesOrderServiceTypes } from './websitesOrderServiceTypes';

/* tslint:disable:no-unused-variable */
let primitives = [
                    "string",
                    "boolean",
                    "double",
                    "integer",
                    "long",
                    "float",
                    "number",
                    "any"
                 ];

let enumsMap: {[index: string]: any} = {
        "ChargeInvoiceRowsInvoicesValue.InvoicesPaidEnum": ChargeInvoiceRowsInvoicesValue.InvoicesPaidEnum,
        "CreateFirewallRule.ProtocolIdEnum": CreateFirewallRule.ProtocolIdEnum,
        "CreateFirewallRule.XdpActionEnum": CreateFirewallRule.XdpActionEnum,
        "CreateGeoFirewallRule.XdpActionEnum": CreateGeoFirewallRule.XdpActionEnum,
        "DenyRuleNew.TypeEnum": DenyRuleNew.TypeEnum,
        "DenyRuleRecord.TypeEnum": DenyRuleRecord.TypeEnum,
        "DnsRecordType": DnsRecordType,
        "DomainNameserverGetResponseInner.CanDeleteEnum": DomainNameserverGetResponseInner.CanDeleteEnum,
        "DomainOrderRequest.TypeEnum": DomainOrderRequest.TypeEnum,
        "DomainOrderRequest.WhoisPrivacyEnum": DomainOrderRequest.WhoisPrivacyEnum,
        "GetScrubIpDetails200ResponseServiceInfo.ScrubIpStatusEnum": GetScrubIpDetails200ResponseServiceInfo.ScrubIpStatusEnum,
        "InitiatePayment200Response.TypeEnum": InitiatePayment200Response.TypeEnum,
        "MailStatsType.TimeEnum": MailStatsType.TimeEnum,
        "ServerIpmiPowerRequest.ActionEnum": ServerIpmiPowerRequest.ActionEnum,
        "SslOrderRequest.CsrTypeEnum": SslOrderRequest.CsrTypeEnum,
        "TicketCustomFieldDetails.CustomerServerAccessEnum": TicketCustomFieldDetails.CustomerServerAccessEnum,
        "TicketPostDetailsInner.CreatorEnum": TicketPostDetailsInner.CreatorEnum,
        "UpdateTicket.CustomerServerAccessEnum": UpdateTicket.CustomerServerAccessEnum,
        "VpsOrderPostRequest.VpsPlatformEnum": VpsOrderPostRequest.VpsPlatformEnum,
        "VpsOrderPostRequest.ControlpanelEnum": VpsOrderPostRequest.ControlpanelEnum,
        "VpsOrderPutRequest.VpsPlatformEnum": VpsOrderPutRequest.VpsPlatformEnum,
        "VpsOrderPutRequest.ControlpanelEnum": VpsOrderPutRequest.ControlpanelEnum,
}

let typeMap: {[index: string]: any} = {
    "AccountFeatures": AccountFeatures,
    "AccountInfo": AccountInfo,
    "AccountInfoCountryCurrencies": AccountInfoCountryCurrencies,
    "AccountInfoData": AccountInfoData,
    "AccountInfoDataCc": AccountInfoDataCc,
    "AccountInfoDataCcs": AccountInfoDataCcs,
    "AccountInfoDataEmailSettings": AccountInfoDataEmailSettings,
    "AccountInfoDataExtra": AccountInfoDataExtra,
    "AccountInfoDataFraudrecord": AccountInfoDataFraudrecord,
    "AccountInfoLimits": AccountInfoLimits,
    "AccountInfoLimitsInner": AccountInfoLimitsInner,
    "AccountInfoMaxMindResponse": AccountInfoMaxMindResponse,
    "AccountInfoMaxMindResponseRiskScore": AccountInfoMaxMindResponseRiskScore,
    "AccountInfoOauthConfig": AccountInfoOauthConfig,
    "AccountInfoOauthConfigProviders": AccountInfoOauthConfigProviders,
    "AccountInfoOauthConfigProvidersValue": AccountInfoOauthConfigProvidersValue,
    "AccountInfoOauthproviders": AccountInfoOauthproviders,
    "AccountInfoPost": AccountInfoPost,
    "AccountSshKey": AccountSshKey,
    "AddServer200Response": AddServer200Response,
    "AffiliateBannerRow": AffiliateBannerRow,
    "AffiliateDockSetup": AffiliateDockSetup,
    "AffiliatePaymentSetup": AffiliatePaymentSetup,
    "AffiliateTrafficRow": AffiliateTrafficRow,
    "Backup": Backup,
    "BackupBillingDetails": BackupBillingDetails,
    "BackupClientLink": BackupClientLink,
    "BackupExtraInfoTables": BackupExtraInfoTables,
    "BackupIPInfo": BackupIPInfo,
    "BackupIPInfoRow": BackupIPInfoRow,
    "BackupLoginResponse": BackupLoginResponse,
    "BackupOrderPostResponse": BackupOrderPostResponse,
    "BackupOrderPostResponseCjParams": BackupOrderPostResponseCjParams,
    "BackupOrderPutRequest": BackupOrderPutRequest,
    "BackupOrderPutResponse": BackupOrderPutResponse,
    "BackupRow": BackupRow,
    "BackupServiceInfo": BackupServiceInfo,
    "BackupServiceMaster": BackupServiceMaster,
    "BackupsOrder": BackupsOrder,
    "BackupsOrderPackageCosts": BackupsOrderPackageCosts,
    "BackupsOrderServiceTypes": BackupsOrderServiceTypes,
    "BillingAddCcRequest": BillingAddCcRequest,
    "BillingInvoiceDetail": BillingInvoiceDetail,
    "BillingInvoiceList": BillingInvoiceList,
    "BillingPaymentMethodRequest": BillingPaymentMethodRequest,
    "BillingPrepayRequest": BillingPrepayRequest,
    "BillingVerifyCcRequest": BillingVerifyCcRequest,
    "BuyItNowList": BuyItNowList,
    "BuyItNowRow": BuyItNowRow,
    "BuyItNowRowCpuInner": BuyItNowRowCpuInner,
    "BuyItNowRowCpuInnerOneOf": BuyItNowRowCpuInnerOneOf,
    "BuyItNowServerOrder200Response": BuyItNowServerOrder200Response,
    "BuyItNowServerOrder200ResponseBandwidthInner": BuyItNowServerOrder200ResponseBandwidthInner,
    "BuyItNowServerOrder200ResponseCpInner": BuyItNowServerOrder200ResponseCpInner,
    "BuyItNowServerOrder200ResponseIpsInner": BuyItNowServerOrder200ResponseIpsInner,
    "BuyItNowServerOrder200ResponseOsInner": BuyItNowServerOrder200ResponseOsInner,
    "BuyItNowServerOrder200ResponseRaidInner": BuyItNowServerOrder200ResponseRaidInner,
    "CancelBackup200Response": CancelBackup200Response,
    "CancelDomain200Response": CancelDomain200Response,
    "CancelScrubIp200Response": CancelScrubIp200Response,
    "CaptchaResponse": CaptchaResponse,
    "ChargeInvoiceRows": ChargeInvoiceRows,
    "ChargeInvoiceRowsInvoicesValue": ChargeInvoiceRowsInvoicesValue,
    "ChargeInvoiceRowsInvoicesValuePaidInvoicesValue": ChargeInvoiceRowsInvoicesValuePaidInvoicesValue,
    "ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue": ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue,
    "CloseTicketResponseSchema": CloseTicketResponseSchema,
    "CreateFilter": CreateFilter,
    "CreateFilter201Response": CreateFilter201Response,
    "CreateFilter400Response": CreateFilter400Response,
    "CreateFilter500Response": CreateFilter500Response,
    "CreateFirewallRule": CreateFirewallRule,
    "CreateGeoFirewallRule": CreateGeoFirewallRule,
    "CreateGeoRule400Response": CreateGeoRule400Response,
    "CreateRule201Response": CreateRule201Response,
    "CreateRule400Response": CreateRule400Response,
    "CreateRule500Response": CreateRule500Response,
    "DeleteFilter200Response": DeleteFilter200Response,
    "DeleteFilter400Response": DeleteFilter400Response,
    "DeleteFilter500Response": DeleteFilter500Response,
    "DeleteFirewallRule": DeleteFirewallRule,
    "DeleteGeoFirewallRule": DeleteGeoFirewallRule,
    "DeleteMailAlertRequest": DeleteMailAlertRequest,
    "DenyRuleNew": DenyRuleNew,
    "DenyRuleRecord": DenyRuleRecord,
    "DisableScrub200Response": DisableScrub200Response,
    "DisableScrub400Response": DisableScrub400Response,
    "DisableScrub500Response": DisableScrub500Response,
    "DnsListItem": DnsListItem,
    "DnsNewDomain": DnsNewDomain,
    "DnsNewRecord": DnsNewRecord,
    "DnsRecord": DnsRecord,
    "DnsUpdateRecord": DnsUpdateRecord,
    "Domain": Domain,
    "DomainAdminContact": DomainAdminContact,
    "DomainAllInfo": DomainAllInfo,
    "DomainAllInfoAttributes": DomainAllInfoAttributes,
    "DomainAllInfoAttributesContactSet": DomainAllInfoAttributesContactSet,
    "DomainBillingDetails": DomainBillingDetails,
    "DomainBillingExtra": DomainBillingExtra,
    "DomainClientLink": DomainClientLink,
    "DomainContactDetails": DomainContactDetails,
    "DomainDnssecRecords": DomainDnssecRecords,
    "DomainDnssecRecordsInner": DomainDnssecRecordsInner,
    "DomainDnssecRequest": DomainDnssecRequest,
    "DomainLookupResponse": DomainLookupResponse,
    "DomainNameServer": DomainNameServer,
    "DomainNameserverGetResponse": DomainNameserverGetResponse,
    "DomainNameserverGetResponseInner": DomainNameserverGetResponseInner,
    "DomainNameserverPostRequest": DomainNameserverPostRequest,
    "DomainNameserverPutRequest": DomainNameserverPutRequest,
    "DomainOrder": DomainOrder,
    "DomainOrderRequest": DomainOrderRequest,
    "DomainOrderResponse": DomainOrderResponse,
    "DomainOrderResponseAttributes": DomainOrderResponseAttributes,
    "DomainOrderServices": DomainOrderServices,
    "DomainOrderServices10001": DomainOrderServices10001,
    "DomainOwnerContact": DomainOwnerContact,
    "DomainProvProcessPending": DomainProvProcessPending,
    "DomainProvProcessPendingAttributes": DomainProvProcessPendingAttributes,
    "DomainRow": DomainRow,
    "DomainSearchResponse": DomainSearchResponse,
    "DomainServiceInfo": DomainServiceInfo,
    "DomainServiceType": DomainServiceType,
    "DomainTechContact": DomainTechContact,
    "DomainWhoisPrivacyRequest": DomainWhoisPrivacyRequest,
    "DownloadQsBackup200Response": DownloadQsBackup200Response,
    "DownloadQsBackupRequest": DownloadQsBackupRequest,
    "EmailAddress": EmailAddress,
    "EmailAddressName": EmailAddressName,
    "EnableScrub200Response": EnableScrub200Response,
    "EnableScrub500Response": EnableScrub500Response,
    "FloatingIpOrderRequest": FloatingIpOrderRequest,
    "FloatingIpsCancel200Response": FloatingIpsCancel200Response,
    "GenericResponse": GenericResponse,
    "GetAccountInfo401Response": GetAccountInfo401Response,
    "GetAccountLocales200ResponseValue": GetAccountLocales200ResponseValue,
    "GetAccountTfaSetup200Response": GetAccountTfaSetup200Response,
    "GetAffiliateSignups200Response": GetAffiliateSignups200Response,
    "GetOauthRedirect200Response": GetOauthRedirect200Response,
    "GetOrderDetail200Response": GetOrderDetail200Response,
    "GetOrderDetail200ResponseIpsInner": GetOrderDetail200ResponseIpsInner,
    "GetOrderDetail200ResponsePackageCosts": GetOrderDetail200ResponsePackageCosts,
    "GetOrderDetail200ResponseServiceTypesInner": GetOrderDetail200ResponseServiceTypesInner,
    "GetScrubIpDetails200Response": GetScrubIpDetails200Response,
    "GetScrubIpDetails200ResponseBillingDetails": GetScrubIpDetails200ResponseBillingDetails,
    "GetScrubIpDetails200ResponseClientLinksInner": GetScrubIpDetails200ResponseClientLinksInner,
    "GetScrubIpDetails200ResponseExtraInfoTables": GetScrubIpDetails200ResponseExtraInfoTables,
    "GetScrubIpDetails200ResponseExtraInfoTablesScrubIps": GetScrubIpDetails200ResponseExtraInfoTablesScrubIps,
    "GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner": GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner,
    "GetScrubIpDetails200ResponseFilterFirewall": GetScrubIpDetails200ResponseFilterFirewall,
    "GetScrubIpDetails200ResponseFilterFirewallFiltersInner": GetScrubIpDetails200ResponseFilterFirewallFiltersInner,
    "GetScrubIpDetails200ResponseFilterFirewallRulesInner": GetScrubIpDetails200ResponseFilterFirewallRulesInner,
    "GetScrubIpDetails200ResponseServiceInfo": GetScrubIpDetails200ResponseServiceInfo,
    "GetWebsiteBuyIp200Response": GetWebsiteBuyIp200Response,
    "Home": Home,
    "HomeDetails": HomeDetails,
    "HomeDetailsModules": HomeDetailsModules,
    "HomeDetailsModulesBackups": HomeDetailsModulesBackups,
    "HomeDetailsModulesDomains": HomeDetailsModulesDomains,
    "HomeDetailsModulesLicenses": HomeDetailsModulesLicenses,
    "HomeDetailsModulesQuickservers": HomeDetailsModulesQuickservers,
    "HomeDetailsModulesServers": HomeDetailsModulesServers,
    "HomeDetailsModulesVps": HomeDetailsModulesVps,
    "HomeDetailsModulesWebhosting": HomeDetailsModulesWebhosting,
    "HomeServices": HomeServices,
    "HomeServicesBackups": HomeServicesBackups,
    "HomeServicesDomains": HomeServicesDomains,
    "HomeServicesDomainsLinks": HomeServicesDomainsLinks,
    "HomeServicesLicenses": HomeServicesLicenses,
    "HomeServicesLicensesLinks": HomeServicesLicensesLinks,
    "HomeServicesServers": HomeServicesServers,
    "HomeServicesServersLinks": HomeServicesServersLinks,
    "HomeServicesVps": HomeServicesVps,
    "HomeServicesVpsLinks": HomeServicesVpsLinks,
    "HomeServicesWebhosting": HomeServicesWebhosting,
    "HomeServicesWebhostingLinks": HomeServicesWebhostingLinks,
    "HomeTicketStatus": HomeTicketStatus,
    "HomeTicketStatusView": HomeTicketStatusView,
    "HostnameObject": HostnameObject,
    "InitiatePayment200Response": InitiatePayment200Response,
    "IpLimitRange": IpLimitRange,
    "IpObject": IpObject,
    "License": License,
    "LicenseBillingDetails": LicenseBillingDetails,
    "LicenseClientLink": LicenseClientLink,
    "LicenseExtraInfoTables": LicenseExtraInfoTables,
    "LicenseIpInfo": LicenseIpInfo,
    "LicenseIpInfoRow": LicenseIpInfoRow,
    "LicenseOrderRequest": LicenseOrderRequest,
    "LicenseRow": LicenseRow,
    "LicenseServiceInfo": LicenseServiceInfo,
    "LicenseServiceType": LicenseServiceType,
    "LicensesCancel200Response": LicensesCancel200Response,
    "LicensesOrder": LicensesOrder,
    "LicensesOrderPackageCosts": LicensesOrderPackageCosts,
    "LicensesOrderServiceCategories": LicensesOrderServiceCategories,
    "LicensesOrderServiceCategories509": LicensesOrderServiceCategories509,
    "LicensesOrderServiceTypes": LicensesOrderServiceTypes,
    "LicensesOrderServiceTypes11482": LicensesOrderServiceTypes11482,
    "LoginErrorResponse": LoginErrorResponse,
    "LoginInfo": LoginInfo,
    "LoginServiceCounts": LoginServiceCounts,
    "LoginSubmissionExample": LoginSubmissionExample,
    "LoginSubmissionExampleGRecaptchaResponse": LoginSubmissionExampleGRecaptchaResponse,
    "LoginSubmissionExampleGRecaptchaResponseDep": LoginSubmissionExampleGRecaptchaResponseDep,
    "LoginSuccessResponse": LoginSuccessResponse,
    "MailAlertRequest": MailAlertRequest,
    "MailAlertUpdateRequest": MailAlertUpdateRequest,
    "MailAlertsResponse": MailAlertsResponse,
    "MailAlertsResponseInner": MailAlertsResponseInner,
    "MailAttachment": MailAttachment,
    "MailBillingDetails": MailBillingDetails,
    "MailBlockClickHouse": MailBlockClickHouse,
    "MailBlockRspamd": MailBlockRspamd,
    "MailBlocks": MailBlocks,
    "MailCancel200Response": MailCancel200Response,
    "MailClientLink": MailClientLink,
    "MailDelistRequest": MailDelistRequest,
    "MailDelistResponse": MailDelistResponse,
    "MailDeliverabilityResponse": MailDeliverabilityResponse,
    "MailExtraInfoTable": MailExtraInfoTable,
    "MailExtraInfoTableRow": MailExtraInfoTableRow,
    "MailLog": MailLog,
    "MailLogEntry": MailLogEntry,
    "MailOrder": MailOrder,
    "MailOrderRequest": MailOrderRequest,
    "MailRow": MailRow,
    "MailSchema": MailSchema,
    "MailSchemaExtraInfoTables": MailSchemaExtraInfoTables,
    "MailServiceInfo": MailServiceInfo,
    "MailServiceType": MailServiceType,
    "MailStatsType": MailStatsType,
    "MailStatsTypeVolume": MailStatsTypeVolume,
    "MailStatsTypeVolumeFrom": MailStatsTypeVolumeFrom,
    "MailStatsTypeVolumeIp": MailStatsTypeVolumeIp,
    "MailStatsTypeVolumeTo": MailStatsTypeVolumeTo,
    "MailTutorialsTable": MailTutorialsTable,
    "MailTutorialsTableRow": MailTutorialsTableRow,
    "ModuleSettings": ModuleSettings,
    "Modules": Modules,
    "MonthlyCounts": MonthlyCounts,
    "PasswordRequest": PasswordRequest,
    "PatchBillingCreditCardVerifyRequest": PatchBillingCreditCardVerifyRequest,
    "PatchOauthTwoFactor200Response": PatchOauthTwoFactor200Response,
    "PatchOauthTwoFactorRequest": PatchOauthTwoFactorRequest,
    "PlaceBuyNowServerRequest": PlaceBuyNowServerRequest,
    "PlaceScrubOrder201Response": PlaceScrubOrder201Response,
    "PlaceScrubOrder201ResponseOrderDetails": PlaceScrubOrder201ResponseOrderDetails,
    "PlaceScrubOrder201ResponseOrderDetailsCjParams": PlaceScrubOrder201ResponseOrderDetailsCjParams,
    "PostOauthCallback200Response": PostOauthCallback200Response,
    "PostOauthCallbackRequest": PostOauthCallbackRequest,
    "PostWebsiteBuyIp200Response": PostWebsiteBuyIp200Response,
    "PostWebsiteBuyIpRequest": PostWebsiteBuyIpRequest,
    "PostWebsiteMigration200Response": PostWebsiteMigration200Response,
    "PostWebsiteMigrationRequest": PostWebsiteMigrationRequest,
    "PutScrubIps200Response": PutScrubIps200Response,
    "QsOrderRequest": QsOrderRequest,
    "QueueResponse": QueueResponse,
    "Quickserver": Quickserver,
    "QuickserverAddons": QuickserverAddons,
    "QuickserverAddonsRow": QuickserverAddonsRow,
    "QuickserverBillingDetails": QuickserverBillingDetails,
    "QuickserverClientLink": QuickserverClientLink,
    "QuickserverExtraInfoTables": QuickserverExtraInfoTables,
    "QuickserverIpInfo": QuickserverIpInfo,
    "QuickserverIpTableRow": QuickserverIpTableRow,
    "QuickserverOrder": QuickserverOrder,
    "QuickserverOrderDistroSel": QuickserverOrderDistroSel,
    "QuickserverOrderDistroSelUbuntu": QuickserverOrderDistroSelUbuntu,
    "QuickserverOrderServerDetails": QuickserverOrderServerDetails,
    "QuickserverOrderServerDetails381": QuickserverOrderServerDetails381,
    "QuickserverOrderTemplates": QuickserverOrderTemplates,
    "QuickserverOrderTemplatesUbuntu64": QuickserverOrderTemplatesUbuntu64,
    "QuickserverOrderVersion": QuickserverOrderVersion,
    "QuickserverOrderVersionCentosstream8": QuickserverOrderVersionCentosstream8,
    "QuickserverRow": QuickserverRow,
    "QuickserverServiceExtra": QuickserverServiceExtra,
    "QuickserverServiceInfo": QuickserverServiceInfo,
    "QuickserverServiceMaster": QuickserverServiceMaster,
    "QuickserversCancel200Response": QuickserversCancel200Response,
    "ReplyTicketRequest": ReplyTicketRequest,
    "ReplyTicketResponseSchema": ReplyTicketResponseSchema,
    "RestoreRequest": RestoreRequest,
    "ReverseDnsEntries": ReverseDnsEntries,
    "ScrubIpFilterTypes": ScrubIpFilterTypes,
    "ScrubIpFilterTypesFiltersValue": ScrubIpFilterTypesFiltersValue,
    "ScrubIpPlaceOrder": ScrubIpPlaceOrder,
    "ScrubIpsDeleteRule200Response": ScrubIpsDeleteRule200Response,
    "ScrubIpsDeleteRule400Response": ScrubIpsDeleteRule400Response,
    "ScrubIpsDeleteRule500Response": ScrubIpsDeleteRule500Response,
    "ScrubIpsLogRowSchema": ScrubIpsLogRowSchema,
    "ScrubIpsRowSchema": ScrubIpsRowSchema,
    "SearchAutocompleteResponse": SearchAutocompleteResponse,
    "SendMail": SendMail,
    "SendMailAdv": SendMailAdv,
    "Server": Server,
    "ServerAsset": ServerAsset,
    "ServerAssets": ServerAssets,
    "ServerBillingDetails": ServerBillingDetails,
    "ServerBulkIpmiPowerResponse": ServerBulkIpmiPowerResponse,
    "ServerBulkIpmiPowerResponseResultsInner": ServerBulkIpmiPowerResponseResultsInner,
    "ServerClientLink": ServerClientLink,
    "ServerExtraInfoTables": ServerExtraInfoTables,
    "ServerIpmiLiveInfo": ServerIpmiLiveInfo,
    "ServerIpmiLiveRequest": ServerIpmiLiveRequest,
    "ServerIpmiPowerRequest": ServerIpmiPowerRequest,
    "ServerLease": ServerLease,
    "ServerLocation1": ServerLocation1,
    "ServerLocations": ServerLocations,
    "ServerNetworkInfo": ServerNetworkInfo,
    "ServerNetworkInfoAssets": ServerNetworkInfoAssets,
    "ServerNetworkInfoSwitchports": ServerNetworkInfoSwitchports,
    "ServerOrder": ServerOrder,
    "ServerOrderBandwidth": ServerOrderBandwidth,
    "ServerOrderBandwidthLi": ServerOrderBandwidthLi,
    "ServerOrderCPU": ServerOrderCPU,
    "ServerOrderConfigIds": ServerOrderConfigIds,
    "ServerOrderControlPanel": ServerOrderControlPanel,
    "ServerOrderCpLi": ServerOrderCpLi,
    "ServerOrderCpuLi": ServerOrderCpuLi,
    "ServerOrderFieldLabel": ServerOrderFieldLabel,
    "ServerOrderFieldLabels": ServerOrderFieldLabels,
    "ServerOrderFormValues": ServerOrderFormValues,
    "ServerOrderIP": ServerOrderIP,
    "ServerOrderIpsLi": ServerOrderIpsLi,
    "ServerOrderMemory": ServerOrderMemory,
    "ServerOrderMemoryLi": ServerOrderMemoryLi,
    "ServerOrderMemoryLi254": ServerOrderMemoryLi254,
    "ServerOrderOS": ServerOrderOS,
    "ServerOrderOsLi": ServerOrderOsLi,
    "ServerOrderPostRequest": ServerOrderPostRequest,
    "ServerOrderPostRequestHd": ServerOrderPostRequestHd,
    "ServerOrderRAID": ServerOrderRAID,
    "ServerRow": ServerRow,
    "ServerServiceInfo": ServerServiceInfo,
    "ServerSwitchport": ServerSwitchport,
    "ServersBuyNowError": ServersBuyNowError,
    "ServersBuyNowResponse": ServersBuyNowResponse,
    "ServersBuyNowResponseOrderDetails": ServersBuyNowResponseOrderDetails,
    "ServersCancel200Response": ServersCancel200Response,
    "Service": Service,
    "ServiceCategories": ServiceCategories,
    "ServiceCategory": ServiceCategory,
    "ServiceOrderPostResponse": ServiceOrderPostResponse,
    "ServiceType": ServiceType,
    "ServiceTypes": ServiceTypes,
    "Services": Services,
    "ServicesInfo": ServicesInfo,
    "SslCancel200Response": SslCancel200Response,
    "SslOrderRequest": SslOrderRequest,
    "StatusMonthlyBreakdown": StatusMonthlyBreakdown,
    "SuccessTextResponse": SuccessTextResponse,
    "TemplateRequest": TemplateRequest,
    "TextResponse": TextResponse,
    "TicketCustomFieldDetails": TicketCustomFieldDetails,
    "TicketDetails": TicketDetails,
    "TicketNew": TicketNew,
    "TicketNewResponse": TicketNewResponse,
    "TicketPostDetails": TicketPostDetails,
    "TicketPostDetailsInner": TicketPostDetailsInner,
    "Tickets": Tickets,
    "TicketsCountArray": TicketsCountArray,
    "TicketsRow": TicketsRow,
    "TimezoneUpdate": TimezoneUpdate,
    "UpdateAccountTfaRequest": UpdateAccountTfaRequest,
    "UpdateTicket": UpdateTicket,
    "UpdateTicketResponseSchema": UpdateTicketResponseSchema,
    "UrlRequest": UrlRequest,
    "VPSCancel200Response": VPSCancel200Response,
    "VPSTrafficDataDataSectionResponse": VPSTrafficDataDataSectionResponse,
    "VPSTrafficDataDataSectionResponseInner": VPSTrafficDataDataSectionResponseInner,
    "ViewMailLogStartDateParameter": ViewMailLogStartDateParameter,
    "ViewTicketResponse": ViewTicketResponse,
    "Vps": Vps,
    "VpsBackupRow": VpsBackupRow,
    "VpsBackupRows": VpsBackupRows,
    "VpsBillingDetails": VpsBillingDetails,
    "VpsCPData": VpsCPData,
    "VpsClientLink": VpsClientLink,
    "VpsDAData": VpsDAData,
    "VpsDALicense": VpsDALicense,
    "VpsExtraInfoTables": VpsExtraInfoTables,
    "VpsIPInfo": VpsIPInfo,
    "VpsIPInfoRow": VpsIPInfoRow,
    "VpsOrder": VpsOrder,
    "VpsOrderLocationNames": VpsOrderLocationNames,
    "VpsOrderLocationStock": VpsOrderLocationStock,
    "VpsOrderLocationStock1": VpsOrderLocationStock1,
    "VpsOrderOsNames": VpsOrderOsNames,
    "VpsOrderPackageCosts": VpsOrderPackageCosts,
    "VpsOrderPlatformNames": VpsOrderPlatformNames,
    "VpsOrderPlatformPackages": VpsOrderPlatformPackages,
    "VpsOrderPostRequest": VpsOrderPostRequest,
    "VpsOrderPutRequest": VpsOrderPutRequest,
    "VpsOrderPutResponse": VpsOrderPutResponse,
    "VpsOrderServiceTypes": VpsOrderServiceTypes,
    "VpsOrderServiceTypes32": VpsOrderServiceTypes32,
    "VpsOrderTemplates": VpsOrderTemplates,
    "VpsOrderTemplatesHyperv": VpsOrderTemplatesHyperv,
    "VpsOrderTemplatesHypervWindows": VpsOrderTemplatesHypervWindows,
    "VpsPlesk12Data": VpsPlesk12Data,
    "VpsPleskLicense": VpsPleskLicense,
    "VpsRow": VpsRow,
    "VpsServiceAddons": VpsServiceAddons,
    "VpsServiceExtra": VpsServiceExtra,
    "VpsServiceInfo": VpsServiceInfo,
    "VpsServiceMaster": VpsServiceMaster,
    "VpsSnapshot": VpsSnapshot,
    "VpsTemplateRow": VpsTemplateRow,
    "VpsTemplatesList": VpsTemplatesList,
    "VpsTrafficDataSectionResponse": VpsTrafficDataSectionResponse,
    "VpsTrafficHistoryResponse": VpsTrafficHistoryResponse,
    "VpsTrafficHistorySectionDataResponse": VpsTrafficHistorySectionDataResponse,
    "VpsTrafficHistorySectionResponse": VpsTrafficHistorySectionResponse,
    "VpsTrafficResponse": VpsTrafficResponse,
    "VpsTrafficTotalsResposne": VpsTrafficTotalsResposne,
    "VpsTrafficTotalsSectionResponse": VpsTrafficTotalsSectionResponse,
    "VpsTrafficUsageAverageResponse": VpsTrafficUsageAverageResponse,
    "VpsTrafficUsageAverageSectionResponse": VpsTrafficUsageAverageSectionResponse,
    "VpsTrafficUsageResponse": VpsTrafficUsageResponse,
    "WebhostingCancel200Response": WebhostingCancel200Response,
    "Website": Website,
    "WebsiteBackups": WebsiteBackups,
    "WebsiteBackupsInner": WebsiteBackupsInner,
    "WebsiteBillingDetails": WebsiteBillingDetails,
    "WebsiteClientLink": WebsiteClientLink,
    "WebsiteExtraInfoTables": WebsiteExtraInfoTables,
    "WebsiteLoginResponse": WebsiteLoginResponse,
    "WebsiteOrderPostRequest": WebsiteOrderPostRequest,
    "WebsiteOrderPutRequest": WebsiteOrderPutRequest,
    "WebsiteRow": WebsiteRow,
    "WebsiteServiceInfo": WebsiteServiceInfo,
    "WebsiteServiceMaster": WebsiteServiceMaster,
    "WebsiteTable": WebsiteTable,
    "WebsiteTableRow": WebsiteTableRow,
    "WebsitesOrder": WebsitesOrder,
    "WebsitesOrderJsonServiceOffers": WebsitesOrderJsonServiceOffers,
    "WebsitesOrderJsonServiceOffersItem": WebsitesOrderJsonServiceOffersItem,
    "WebsitesOrderJsonServices": WebsitesOrderJsonServices,
    "WebsitesOrderPackages": WebsitesOrderPackages,
    "WebsitesOrderPackagesInfo": WebsitesOrderPackagesInfo,
    "WebsitesOrderPackges": WebsitesOrderPackges,
    "WebsitesOrderServiceOffer": WebsitesOrderServiceOffer,
    "WebsitesOrderServiceOffers": WebsitesOrderServiceOffers,
    "WebsitesOrderServiceTypes": WebsitesOrderServiceTypes,
}

// Check if a string starts with another string without using es6 features
function startsWith(str: string, match: string): boolean {
    return str.substring(0, match.length) === match;
}

// Check if a string ends with another string without using es6 features
function endsWith(str: string, match: string): boolean {
    return str.length >= match.length && str.substring(str.length - match.length) === match;
}

const nullableSuffix = " | null";
const optionalSuffix = " | undefined";
const arrayPrefix = "Array<";
const arraySuffix = ">";
const mapPrefix = "{ [key: string]: ";
const mapSuffix = "; }";

export class ObjectSerializer {
    public static findCorrectType(data: any, expectedType: string) {
        if (data == undefined) {
            return expectedType;
        } else if (primitives.indexOf(expectedType.toLowerCase()) !== -1) {
            return expectedType;
        } else if (expectedType === "Date") {
            return expectedType;
        } else {
            if (enumsMap[expectedType]) {
                return expectedType;
            }

            if (!typeMap[expectedType]) {
                return expectedType; // w/e we don't know the type
            }

            // Check the discriminator
            let discriminatorProperty = typeMap[expectedType].discriminator;
            if (discriminatorProperty == null) {
                return expectedType; // the type does not have a discriminator. use it.
            } else {
                if (data[discriminatorProperty]) {
                    var discriminatorType = data[discriminatorProperty];
                    if(typeMap[discriminatorType]){
                        return discriminatorType; // use the type given in the discriminator
                    } else {
                        return expectedType; // discriminator did not map to a type
                    }
                } else {
                    return expectedType; // discriminator was not present (or an empty string)
                }
            }
        }
    }

    public static serialize(data: any, type: string): any {
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (endsWith(type, nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.serialize(data, subType);
        } else if (endsWith(type, optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.serialize(data, subType);
        } else if (startsWith(type, arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.serialize(datum, subType));
            }
            return transformedData;
        } else if (startsWith(type, mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.serialize(
                    data[key],
                    subType,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            return data.toISOString();
        } else {
            if (enumsMap[type]) {
                return data;
            }
            if (!typeMap[type]) { // in case we dont know the type
                return data;
            }

            // Get the actual type of this object
            type = this.findCorrectType(data, type);

            // get the map for the correct type.
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            let instance: {[index: string]: any} = {};
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.baseName] = ObjectSerializer.serialize(data[attributeType.name], attributeType.type);
            }
            return instance;
        }
    }

    public static deserialize(data: any, type: string): any {
        // polymorphism may change the actual type.
        type = ObjectSerializer.findCorrectType(data, type);
        if (data == undefined) {
            return data;
        } else if (primitives.indexOf(type.toLowerCase()) !== -1) {
            return data;
        } else if (endsWith(type, nullableSuffix)) {
            let subType: string = type.slice(0, -nullableSuffix.length); // Type | null => Type
            return ObjectSerializer.deserialize(data, subType);
        } else if (endsWith(type, optionalSuffix)) {
            let subType: string = type.slice(0, -optionalSuffix.length); // Type | undefined => Type
            return ObjectSerializer.deserialize(data, subType);
        } else if (startsWith(type, arrayPrefix)) {
            let subType: string = type.slice(arrayPrefix.length, -arraySuffix.length); // Array<Type> => Type
            let transformedData: any[] = [];
            for (let index = 0; index < data.length; index++) {
                let datum = data[index];
                transformedData.push(ObjectSerializer.deserialize(datum, subType));
            }
            return transformedData;
        } else if (startsWith(type, mapPrefix)) {
            let subType: string = type.slice(mapPrefix.length, -mapSuffix.length); // { [key: string]: Type; } => Type
            let transformedData: { [key: string]: any } = {};
            for (let key in data) {
                transformedData[key] = ObjectSerializer.deserialize(
                    data[key],
                    subType,
                );
            }
            return transformedData;
        } else if (type === "Date") {
            return new Date(data);
        } else {
            if (enumsMap[type]) {// is Enum
                return data;
            }

            if (!typeMap[type]) { // dont know the type
                return data;
            }
            let instance = new typeMap[type]();
            let attributeTypes = typeMap[type].getAttributeTypeMap();
            for (let index = 0; index < attributeTypes.length; index++) {
                let attributeType = attributeTypes[index];
                instance[attributeType.name] = ObjectSerializer.deserialize(data[attributeType.baseName], attributeType.type);
            }
            return instance;
        }
    }
}

export interface Authentication {
    /**
    * Apply authentication settings to header and query params.
    */
    applyToRequest(requestOptions: localVarRequest.Options): Promise<void> | void;
}

export class HttpBasicAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        requestOptions.auth = {
            username: this.username, password: this.password
        }
    }
}

export class HttpBearerAuth implements Authentication {
    public accessToken: string | (() => string) = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            const accessToken = typeof this.accessToken === 'function'
                            ? this.accessToken()
                            : this.accessToken;
            requestOptions.headers["Authorization"] = "Bearer " + accessToken;
        }
    }
}

export class ApiKeyAuth implements Authentication {
    public apiKey: string = '';

    constructor(private location: string, private paramName: string) {
    }

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (this.location == "query") {
            (<any>requestOptions.qs)[this.paramName] = this.apiKey;
        } else if (this.location == "header" && requestOptions && requestOptions.headers) {
            requestOptions.headers[this.paramName] = this.apiKey;
        } else if (this.location == 'cookie' && requestOptions && requestOptions.headers) {
            if (requestOptions.headers['Cookie']) {
                requestOptions.headers['Cookie'] += '; ' + this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
            else {
                requestOptions.headers['Cookie'] = this.paramName + '=' + encodeURIComponent(this.apiKey);
            }
        }
    }
}

export class OAuth implements Authentication {
    public accessToken: string = '';

    applyToRequest(requestOptions: localVarRequest.Options): void {
        if (requestOptions && requestOptions.headers) {
            requestOptions.headers["Authorization"] = "Bearer " + this.accessToken;
        }
    }
}

export class VoidAuth implements Authentication {
    public username: string = '';
    public password: string = '';

    applyToRequest(_: localVarRequest.Options): void {
        // Do nothing
    }
}

export type Interceptor = (requestOptions: localVarRequest.Options) => (Promise<void> | void);
