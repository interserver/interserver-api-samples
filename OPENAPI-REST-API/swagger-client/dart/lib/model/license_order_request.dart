part of swagger.api;

class LicenseOrderRequest {
  /* License service type id from getNewLicense.serviceTypes (must be buyable). */
  int package = null;
/* IP address the license is bound to. */
  String ip = null;
/* Terms-of-service acceptance. Must be true to place the order. */
  bool tos = null;
/* Billing frequency in months. */
  int frequency = 1;
/* Coupon code. */
  String coupon = "";
/* Free-form note saved on the service row. */
  String comment = "";

  LicenseOrderRequest();

  @override
  String toString() {
    return 'LicenseOrderRequest[package=$package, ip=$ip, tos=$tos, frequency=$frequency, coupon=$coupon, comment=$comment, ]';
  }

  LicenseOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    package = json['package'];
    ip = json['ip'];
    tos = json['tos'];
    frequency = json['frequency'];
    coupon = json['coupon'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'package': package,
      'ip': ip,
      'tos': tos,
      'frequency': frequency,
      'coupon': coupon,
      'comment': comment
     };
  }

  static List<LicenseOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseOrderRequest>() : json.map((value) => new LicenseOrderRequest.fromJson(value)).toList();
  }

  static Map<String, LicenseOrderRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseOrderRequest.fromJson(value));
    }
    return map;
  }
}
