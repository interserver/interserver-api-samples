part of swagger.api;

class WebsiteServiceInfo {
  /* Website ID */
  String websiteId = null;
/* Website server */
  String websiteServer = null;
/* Website type */
  String websiteType = null;
/* Currency of the website */
  String websiteCurrency = null;
/* Order date of the website */
  String websiteOrderDate = null;
/* Customer ID of the website */
  String websiteCustid = null;
/* IP address of the website */
  String websiteIp = null;
/* Status of the website */
  String websiteStatus = null;
/* Invoice of the website */
  String websiteInvoice = null;
/* Coupon for the website */
  String websiteCoupon = null;
/* Extra information in JSON format for the website */
  String websiteExtra = null;
/* Hostname of the website */
  String websiteHostname = null;
/* Comment for the website */
  String websiteComment = null;
/* Username for the website */
  String websiteUsername = null;
/* Server status of the website */
  String websiteServerStatus = null;

  WebsiteServiceInfo();

  @override
  String toString() {
    return 'WebsiteServiceInfo[websiteId=$websiteId, websiteServer=$websiteServer, websiteType=$websiteType, websiteCurrency=$websiteCurrency, websiteOrderDate=$websiteOrderDate, websiteCustid=$websiteCustid, websiteIp=$websiteIp, websiteStatus=$websiteStatus, websiteInvoice=$websiteInvoice, websiteCoupon=$websiteCoupon, websiteExtra=$websiteExtra, websiteHostname=$websiteHostname, websiteComment=$websiteComment, websiteUsername=$websiteUsername, websiteServerStatus=$websiteServerStatus, ]';
  }

  WebsiteServiceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    websiteId = json['website_id'];
    websiteServer = json['website_server'];
    websiteType = json['website_type'];
    websiteCurrency = json['website_currency'];
    websiteOrderDate = json['website_order_date'];
    websiteCustid = json['website_custid'];
    websiteIp = json['website_ip'];
    websiteStatus = json['website_status'];
    websiteInvoice = json['website_invoice'];
    websiteCoupon = json['website_coupon'];
    websiteExtra = json['website_extra'];
    websiteHostname = json['website_hostname'];
    websiteComment = json['website_comment'];
    websiteUsername = json['website_username'];
    websiteServerStatus = json['website_server_status'];
  }

  Map<String, dynamic> toJson() {
    return {
      'website_id': websiteId,
      'website_server': websiteServer,
      'website_type': websiteType,
      'website_currency': websiteCurrency,
      'website_order_date': websiteOrderDate,
      'website_custid': websiteCustid,
      'website_ip': websiteIp,
      'website_status': websiteStatus,
      'website_invoice': websiteInvoice,
      'website_coupon': websiteCoupon,
      'website_extra': websiteExtra,
      'website_hostname': websiteHostname,
      'website_comment': websiteComment,
      'website_username': websiteUsername,
      'website_server_status': websiteServerStatus
     };
  }

  static List<WebsiteServiceInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteServiceInfo>() : json.map((value) => new WebsiteServiceInfo.fromJson(value)).toList();
  }

  static Map<String, WebsiteServiceInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteServiceInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteServiceInfo.fromJson(value));
    }
    return map;
  }
}
