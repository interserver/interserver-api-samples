part of swagger.api;

class ScrubIpPlaceOrder {
  
  int serviceType = null;

  String ip = null;

  ScrubIpPlaceOrder();

  @override
  String toString() {
    return 'ScrubIpPlaceOrder[serviceType=$serviceType, ip=$ip, ]';
  }

  ScrubIpPlaceOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceType = json['service_type'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    return {
      'service_type': serviceType,
      'ip': ip
     };
  }

  static List<ScrubIpPlaceOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScrubIpPlaceOrder>() : json.map((value) => new ScrubIpPlaceOrder.fromJson(value)).toList();
  }

  static Map<String, ScrubIpPlaceOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScrubIpPlaceOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScrubIpPlaceOrder.fromJson(value));
    }
    return map;
  }
}
