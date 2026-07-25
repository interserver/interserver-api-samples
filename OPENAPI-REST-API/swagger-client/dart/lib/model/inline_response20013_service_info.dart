part of swagger.api;

class InlineResponse20013ServiceInfo {
  
  String scrubIpId = null;

  String scrubIpType = null;

  String scrubIpCustid = null;

  String scrubIpOrderDate = null;

  String scrubIpIp = null;

  String scrubIpServiceId = null;

  String scrubIpServiceModule = null;

  String scrubIpStatus = null;
  //enum scrubIpStatusEnum {  active,  pending,  canceled,  expired,  };

  String scrubIpInvoice = null;

  String scrubIpCurrency = null;

  String scrubIpCoupon = null;

  String scrubIpComment = null;

  InlineResponse20013ServiceInfo();

  @override
  String toString() {
    return 'InlineResponse20013ServiceInfo[scrubIpId=$scrubIpId, scrubIpType=$scrubIpType, scrubIpCustid=$scrubIpCustid, scrubIpOrderDate=$scrubIpOrderDate, scrubIpIp=$scrubIpIp, scrubIpServiceId=$scrubIpServiceId, scrubIpServiceModule=$scrubIpServiceModule, scrubIpStatus=$scrubIpStatus, scrubIpInvoice=$scrubIpInvoice, scrubIpCurrency=$scrubIpCurrency, scrubIpCoupon=$scrubIpCoupon, scrubIpComment=$scrubIpComment, ]';
  }

  InlineResponse20013ServiceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    scrubIpId = json['scrub_ip_id'];
    scrubIpType = json['scrub_ip_type'];
    scrubIpCustid = json['scrub_ip_custid'];
    scrubIpOrderDate = json['scrub_ip_order_date'];
    scrubIpIp = json['scrub_ip_ip'];
    scrubIpServiceId = json['scrub_ip_service_id'];
    scrubIpServiceModule = json['scrub_ip_service_module'];
    scrubIpStatus = json['scrub_ip_status'];
    scrubIpInvoice = json['scrub_ip_invoice'];
    scrubIpCurrency = json['scrub_ip_currency'];
    scrubIpCoupon = json['scrub_ip_coupon'];
    scrubIpComment = json['scrub_ip_comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'scrub_ip_id': scrubIpId,
      'scrub_ip_type': scrubIpType,
      'scrub_ip_custid': scrubIpCustid,
      'scrub_ip_order_date': scrubIpOrderDate,
      'scrub_ip_ip': scrubIpIp,
      'scrub_ip_service_id': scrubIpServiceId,
      'scrub_ip_service_module': scrubIpServiceModule,
      'scrub_ip_status': scrubIpStatus,
      'scrub_ip_invoice': scrubIpInvoice,
      'scrub_ip_currency': scrubIpCurrency,
      'scrub_ip_coupon': scrubIpCoupon,
      'scrub_ip_comment': scrubIpComment
     };
  }

  static List<InlineResponse20013ServiceInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013ServiceInfo>() : json.map((value) => new InlineResponse20013ServiceInfo.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013ServiceInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013ServiceInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013ServiceInfo.fromJson(value));
    }
    return map;
  }
}
