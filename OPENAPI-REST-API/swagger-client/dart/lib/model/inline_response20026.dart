part of swagger.api;

class InlineResponse20026 {
  /* A map of IP addresses to their current reverse DNS hostnames. */
  Map<String, String> ips = {};

  InlineResponse20026();

  @override
  String toString() {
    return 'InlineResponse20026[ips=$ips, ]';
  }

  InlineResponse20026.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ips = json['ips'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ips': ips
     };
  }

  static List<InlineResponse20026> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20026>() : json.map((value) => new InlineResponse20026.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20026> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20026>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20026.fromJson(value));
    }
    return map;
  }
}
