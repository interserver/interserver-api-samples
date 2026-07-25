part of swagger.api;

class IdBuyIpBody1 {
  /* A map of IP addresses to their desired reverse DNS hostnames. */
  Map<String, String> ips = {};

  IdBuyIpBody1();

  @override
  String toString() {
    return 'IdBuyIpBody1[ips=$ips, ]';
  }

  IdBuyIpBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ips = json['ips'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ips': ips
     };
  }

  static List<IdBuyIpBody1> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdBuyIpBody1>() : json.map((value) => new IdBuyIpBody1.fromJson(value)).toList();
  }

  static Map<String, IdBuyIpBody1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdBuyIpBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdBuyIpBody1.fromJson(value));
    }
    return map;
  }
}
