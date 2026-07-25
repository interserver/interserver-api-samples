part of swagger.api;

class InlineResponse20029 {
  
  List<InlineResponse20029Bandwidth> bandwidth = [];

  List<InlineResponse20029Ips> ips = [];

  List<InlineResponse20029Os> os = [];

  List<InlineResponse20029Cp> cp = [];

  List<InlineResponse20029Raid> raid = [];

  InlineResponse20029();

  @override
  String toString() {
    return 'InlineResponse20029[bandwidth=$bandwidth, ips=$ips, os=$os, cp=$cp, raid=$raid, ]';
  }

  InlineResponse20029.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bandwidth = InlineResponse20029Bandwidth.listFromJson(json['bandwidth']);
    ips = InlineResponse20029Ips.listFromJson(json['ips']);
    os = InlineResponse20029Os.listFromJson(json['os']);
    cp = InlineResponse20029Cp.listFromJson(json['cp']);
    raid = InlineResponse20029Raid.listFromJson(json['raid']);
  }

  Map<String, dynamic> toJson() {
    return {
      'bandwidth': bandwidth,
      'ips': ips,
      'os': os,
      'cp': cp,
      'raid': raid
     };
  }

  static List<InlineResponse20029> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20029>() : json.map((value) => new InlineResponse20029.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20029> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20029>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20029.fromJson(value));
    }
    return map;
  }
}
