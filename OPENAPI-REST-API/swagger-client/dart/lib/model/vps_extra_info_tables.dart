part of swagger.api;

class VpsExtraInfoTables {
  
  VpsIPInfo ipInfo = null;

  VpsExtraInfoTables();

  @override
  String toString() {
    return 'VpsExtraInfoTables[ipInfo=$ipInfo, ]';
  }

  VpsExtraInfoTables.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ipInfo = new VpsIPInfo.fromJson(json['ip_info']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ip_info': ipInfo
     };
  }

  static List<VpsExtraInfoTables> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsExtraInfoTables>() : json.map((value) => new VpsExtraInfoTables.fromJson(value)).toList();
  }

  static Map<String, VpsExtraInfoTables> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsExtraInfoTables>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsExtraInfoTables.fromJson(value));
    }
    return map;
  }
}
