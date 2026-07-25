part of swagger.api;

class ReverseDnsEntries {
  /* The IPs you have access to and their current reverse dns mapping. */
  Map ips = {};

  ReverseDnsEntries();

  @override
  String toString() {
    return 'ReverseDnsEntries[ips=$ips, ]';
  }

  ReverseDnsEntries.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ips = Object.mapFromJson(json['ips']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ips': ips
     };
  }

  static List<ReverseDnsEntries> listFromJson(List<dynamic> json) {
    return json == null ? new List<ReverseDnsEntries>() : json.map((value) => new ReverseDnsEntries.fromJson(value)).toList();
  }

  static Map<String, ReverseDnsEntries> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ReverseDnsEntries>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ReverseDnsEntries.fromJson(value));
    }
    return map;
  }
}
