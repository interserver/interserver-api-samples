part of swagger.api;

class InlineResponse20013ExtraInfoTables {
  
  InlineResponse20013ExtraInfoTablesScrubIps scrubIps = null;

  InlineResponse20013ExtraInfoTables();

  @override
  String toString() {
    return 'InlineResponse20013ExtraInfoTables[scrubIps=$scrubIps, ]';
  }

  InlineResponse20013ExtraInfoTables.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    scrubIps = new InlineResponse20013ExtraInfoTablesScrubIps.fromJson(json['scrub_ips']);
  }

  Map<String, dynamic> toJson() {
    return {
      'scrub_ips': scrubIps
     };
  }

  static List<InlineResponse20013ExtraInfoTables> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013ExtraInfoTables>() : json.map((value) => new InlineResponse20013ExtraInfoTables.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013ExtraInfoTables> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013ExtraInfoTables>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013ExtraInfoTables.fromJson(value));
    }
    return map;
  }
}
