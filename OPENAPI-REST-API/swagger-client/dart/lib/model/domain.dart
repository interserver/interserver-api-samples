part of swagger.api;

class Domain {
  
  DomainServiceInfo serviceInfo = null;

  Map<String, DomainServiceType> serviceTypes = {};

  List<DomainClientLink> clientLinks = [];

  DomainBillingDetails billingDetails = null;

  String custCurrency = null;

  String custCurrencySymbol = null;

  DomainBillingExtra serviceExtra = null;

  BackupExtraInfoTables extraInfoTables = null;

  DomainServiceType serviceType = null;

  DomainContactDetails contactDetails = null;

  String pwarning = null;

  String transferInfo = null;

  bool errors = null;

  List<String> domainLogs = [];

  DomainAllInfo allInfo = null;

  String registrarStatus = null;

  String locked = null;

  String whoisPrivacy = null;

  String autoRenew = null;

  Domain();

  @override
  String toString() {
    return 'Domain[serviceInfo=$serviceInfo, serviceTypes=$serviceTypes, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, serviceType=$serviceType, contactDetails=$contactDetails, pwarning=$pwarning, transferInfo=$transferInfo, errors=$errors, domainLogs=$domainLogs, allInfo=$allInfo, registrarStatus=$registrarStatus, locked=$locked, whoisPrivacy=$whoisPrivacy, autoRenew=$autoRenew, ]';
  }

  Domain.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceInfo = new DomainServiceInfo.fromJson(json['serviceInfo']);
    serviceTypes = DomainServiceType.mapFromJson(json['serviceTypes']);
    clientLinks = DomainClientLink.listFromJson(json['client_links']);
    billingDetails = new DomainBillingDetails.fromJson(json['billingDetails']);
    custCurrency = json['custCurrency'];
    custCurrencySymbol = json['custCurrencySymbol'];
    serviceExtra = new DomainBillingExtra.fromJson(json['serviceExtra']);
    extraInfoTables = new BackupExtraInfoTables.fromJson(json['extraInfoTables']);
    serviceType = new DomainServiceType.fromJson(json['serviceType']);
    contactDetails = new DomainContactDetails.fromJson(json['contact_details']);
    pwarning = json['pwarning'];
    transferInfo = json['transfer_info'];
    errors = json['errors'];
    domainLogs = (json['domain_logs'] as List).map((item) => item as String).toList();
    allInfo = new DomainAllInfo.fromJson(json['allInfo']);
    registrarStatus = json['registrarStatus'];
    locked = json['locked'];
    whoisPrivacy = json['whoisPrivacy'];
    autoRenew = json['autoRenew'];
  }

  Map<String, dynamic> toJson() {
    return {
      'serviceInfo': serviceInfo,
      'serviceTypes': serviceTypes,
      'client_links': clientLinks,
      'billingDetails': billingDetails,
      'custCurrency': custCurrency,
      'custCurrencySymbol': custCurrencySymbol,
      'serviceExtra': serviceExtra,
      'extraInfoTables': extraInfoTables,
      'serviceType': serviceType,
      'contact_details': contactDetails,
      'pwarning': pwarning,
      'transfer_info': transferInfo,
      'errors': errors,
      'domain_logs': domainLogs,
      'allInfo': allInfo,
      'registrarStatus': registrarStatus,
      'locked': locked,
      'whoisPrivacy': whoisPrivacy,
      'autoRenew': autoRenew
     };
  }

  static List<Domain> listFromJson(List<dynamic> json) {
    return json == null ? new List<Domain>() : json.map((value) => new Domain.fromJson(value)).toList();
  }

  static Map<String, Domain> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Domain>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Domain.fromJson(value));
    }
    return map;
  }
}
