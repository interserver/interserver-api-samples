part of swagger.api;

class FloatingIpOrderRequest {
  /* Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable). */
  int serviceType = null;
/* Coupon code. */
  String coupon = "";
/* Free-form note saved on the service row (used on addFloatingIp). */
  String comment = "";

  FloatingIpOrderRequest();

  @override
  String toString() {
    return 'FloatingIpOrderRequest[serviceType=$serviceType, coupon=$coupon, comment=$comment, ]';
  }

  FloatingIpOrderRequest.fromJson(Map<String, dynamic> json) {
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

  static List<FloatingIpOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<FloatingIpOrderRequest>() : json.map((value) => new FloatingIpOrderRequest.fromJson(value)).toList();
  }

  static Map<String, FloatingIpOrderRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, FloatingIpOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new FloatingIpOrderRequest.fromJson(value));
    }
    return map;
  }
}
