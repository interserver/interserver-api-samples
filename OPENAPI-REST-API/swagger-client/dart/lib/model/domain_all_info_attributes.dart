part of swagger.api;

class DomainAllInfoAttributes {
  
  DomainAllInfoAttributesContactSet contactSet = null;

  String registryCreatedate = null;

  String registryExpiredate = null;

  String tldData = null;

  String letExpire = null;

  String autoRenew = null;

  String sponsoringRsp = null;

  String gdprConsentStatus = null;

  List<DomainNameServer> nameserverList = [];

  String registryUpdatedate = null;

  String affiliateId = null;

  String expiredate = null;

  DomainAllInfoAttributes();

  @override
  String toString() {
    return 'DomainAllInfoAttributes[contactSet=$contactSet, registryCreatedate=$registryCreatedate, registryExpiredate=$registryExpiredate, tldData=$tldData, letExpire=$letExpire, autoRenew=$autoRenew, sponsoringRsp=$sponsoringRsp, gdprConsentStatus=$gdprConsentStatus, nameserverList=$nameserverList, registryUpdatedate=$registryUpdatedate, affiliateId=$affiliateId, expiredate=$expiredate, ]';
  }

  DomainAllInfoAttributes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    contactSet = new DomainAllInfoAttributesContactSet.fromJson(json['contact_set']);
    registryCreatedate = json['registry_createdate'];
    registryExpiredate = json['registry_expiredate'];
    tldData = json['tld_data'];
    letExpire = json['let_expire'];
    autoRenew = json['auto_renew'];
    sponsoringRsp = json['sponsoring_rsp'];
    gdprConsentStatus = json['gdpr_consent_status'];
    nameserverList = DomainNameServer.listFromJson(json['nameserver_list']);
    registryUpdatedate = json['registry_updatedate'];
    affiliateId = json['affiliate_id'];
    expiredate = json['expiredate'];
  }

  Map<String, dynamic> toJson() {
    return {
      'contact_set': contactSet,
      'registry_createdate': registryCreatedate,
      'registry_expiredate': registryExpiredate,
      'tld_data': tldData,
      'let_expire': letExpire,
      'auto_renew': autoRenew,
      'sponsoring_rsp': sponsoringRsp,
      'gdpr_consent_status': gdprConsentStatus,
      'nameserver_list': nameserverList,
      'registry_updatedate': registryUpdatedate,
      'affiliate_id': affiliateId,
      'expiredate': expiredate
     };
  }

  static List<DomainAllInfoAttributes> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainAllInfoAttributes>() : json.map((value) => new DomainAllInfoAttributes.fromJson(value)).toList();
  }

  static Map<String, DomainAllInfoAttributes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainAllInfoAttributes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainAllInfoAttributes.fromJson(value));
    }
    return map;
  }
}
