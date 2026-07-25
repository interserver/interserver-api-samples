part of swagger.api;

class LicenseServiceInfo {
  /* License ID */
  String licenseId = null;
/* License type */
  String licenseType = null;
/* License currency */
  String licenseCurrency = null;
/* License order date */
  DateTime licenseOrderDate = null;
/* Customer ID */
  String licenseCustid = null;
/* License IP */
  String licenseIp = null;
/* License status */
  String licenseStatus = null;
/* License hostname */
  String licenseHostname = null;
/* License key */
  String licenseKey = null;
/* License invoice */
  String licenseInvoice = null;
/* License coupon */
  String licenseCoupon = null;
/* Additional license information */
  String licenseExtra = null;

  LicenseServiceInfo();

  @override
  String toString() {
    return 'LicenseServiceInfo[licenseId=$licenseId, licenseType=$licenseType, licenseCurrency=$licenseCurrency, licenseOrderDate=$licenseOrderDate, licenseCustid=$licenseCustid, licenseIp=$licenseIp, licenseStatus=$licenseStatus, licenseHostname=$licenseHostname, licenseKey=$licenseKey, licenseInvoice=$licenseInvoice, licenseCoupon=$licenseCoupon, licenseExtra=$licenseExtra, ]';
  }

  LicenseServiceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    licenseId = json['license_id'];
    licenseType = json['license_type'];
    licenseCurrency = json['license_currency'];
    licenseOrderDate = json['license_order_date'] == null ? null : DateTime.parse(json['license_order_date']);
    licenseCustid = json['license_custid'];
    licenseIp = json['license_ip'];
    licenseStatus = json['license_status'];
    licenseHostname = json['license_hostname'];
    licenseKey = json['license_key'];
    licenseInvoice = json['license_invoice'];
    licenseCoupon = json['license_coupon'];
    licenseExtra = json['license_extra'];
  }

  Map<String, dynamic> toJson() {
    return {
      'license_id': licenseId,
      'license_type': licenseType,
      'license_currency': licenseCurrency,
      'license_order_date': licenseOrderDate == null ? '' : licenseOrderDate.toUtc().toIso8601String(),
      'license_custid': licenseCustid,
      'license_ip': licenseIp,
      'license_status': licenseStatus,
      'license_hostname': licenseHostname,
      'license_key': licenseKey,
      'license_invoice': licenseInvoice,
      'license_coupon': licenseCoupon,
      'license_extra': licenseExtra
     };
  }

  static List<LicenseServiceInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseServiceInfo>() : json.map((value) => new LicenseServiceInfo.fromJson(value)).toList();
  }

  static Map<String, LicenseServiceInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseServiceInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseServiceInfo.fromJson(value));
    }
    return map;
  }
}
