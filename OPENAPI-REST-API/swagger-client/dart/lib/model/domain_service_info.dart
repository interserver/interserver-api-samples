part of swagger.api;

class DomainServiceInfo {
  
  String domainId = null;

  String domainHostname = null;

  String domainUsername = null;

  String domainPassword = null;

  String domainType = null;

  String domainCurrency = null;

  String domainExpireDate = null;

  String domainOrderDate = null;

  String domainCustid = null;

  String domainStatus = null;

  String domainInvoice = null;

  String domainCoupon = null;

  DomainServiceInfo();

  @override
  String toString() {
    return 'DomainServiceInfo[domainId=$domainId, domainHostname=$domainHostname, domainUsername=$domainUsername, domainPassword=$domainPassword, domainType=$domainType, domainCurrency=$domainCurrency, domainExpireDate=$domainExpireDate, domainOrderDate=$domainOrderDate, domainCustid=$domainCustid, domainStatus=$domainStatus, domainInvoice=$domainInvoice, domainCoupon=$domainCoupon, ]';
  }

  DomainServiceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domainId = json['domain_id'];
    domainHostname = json['domain_hostname'];
    domainUsername = json['domain_username'];
    domainPassword = json['domain_password'];
    domainType = json['domain_type'];
    domainCurrency = json['domain_currency'];
    domainExpireDate = json['domain_expire_date'];
    domainOrderDate = json['domain_order_date'];
    domainCustid = json['domain_custid'];
    domainStatus = json['domain_status'];
    domainInvoice = json['domain_invoice'];
    domainCoupon = json['domain_coupon'];
  }

  Map<String, dynamic> toJson() {
    return {
      'domain_id': domainId,
      'domain_hostname': domainHostname,
      'domain_username': domainUsername,
      'domain_password': domainPassword,
      'domain_type': domainType,
      'domain_currency': domainCurrency,
      'domain_expire_date': domainExpireDate,
      'domain_order_date': domainOrderDate,
      'domain_custid': domainCustid,
      'domain_status': domainStatus,
      'domain_invoice': domainInvoice,
      'domain_coupon': domainCoupon
     };
  }

  static List<DomainServiceInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainServiceInfo>() : json.map((value) => new DomainServiceInfo.fromJson(value)).toList();
  }

  static Map<String, DomainServiceInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainServiceInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainServiceInfo.fromJson(value));
    }
    return map;
  }
}
