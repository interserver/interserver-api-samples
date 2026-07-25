part of swagger.api;

class IdBuyIpBody {
  /* A map of IP addresses to their desired reverse DNS hostnames. */
  Map<String, String> ips = {};

  IdBuyIpBody();

  @override
  String toString() {
    return 'IdBuyIpBody[ips=$ips, ]';
  }

  IdBuyIpBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ips = json['ips'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ips': ips
     };
  }

  static List<IdBuyIpBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdBuyIpBody>() : json.map((value) => new IdBuyIpBody.fromJson(value)).toList();
  }

  static Map<String, IdBuyIpBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdBuyIpBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdBuyIpBody.fromJson(value));
    }
    return map;
  }
}
