part of swagger.api;

class MailOrderRequest {
  /* Mail plan service type id from getNewMail.serviceTypes (must be buyable). */
  int serviceType = null;
/* Coupon code. */
  String coupon = "";
/* Free-form note saved on the service row (used on addMail). */
  String comment = "";

  MailOrderRequest();

  @override
  String toString() {
    return 'MailOrderRequest[serviceType=$serviceType, coupon=$coupon, comment=$comment, ]';
  }

  MailOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceType = json['serviceType'];
    coupon = json['coupon'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'serviceType': serviceType,
      'coupon': coupon,
      'comment': comment
     };
  }

  static List<MailOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailOrderRequest>() : json.map((value) => new MailOrderRequest.fromJson(value)).toList();
  }

  static Map<String, MailOrderRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailOrderRequest.fromJson(value));
    }
    return map;
  }
}
