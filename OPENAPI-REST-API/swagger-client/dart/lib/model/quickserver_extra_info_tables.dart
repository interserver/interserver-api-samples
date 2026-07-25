part of swagger.api;

class QuickserverExtraInfoTables {
  
  QuickserverIpInfo ipInfo = null;

  QuickserverAddons addons = null;

  QuickserverExtraInfoTables();

  @override
  String toString() {
    return 'QuickserverExtraInfoTables[ipInfo=$ipInfo, addons=$addons, ]';
  }

  QuickserverExtraInfoTables.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ipInfo = new QuickserverIpInfo.fromJson(json['ip_info']);
    addons = new QuickserverAddons.fromJson(json['addons']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ip_info': ipInfo,
      'addons': addons
     };
  }

  static List<QuickserverExtraInfoTables> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverExtraInfoTables>() : json.map((value) => new QuickserverExtraInfoTables.fromJson(value)).toList();
  }

  static Map<String, QuickserverExtraInfoTables> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverExtraInfoTables>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverExtraInfoTables.fromJson(value));
    }
    return map;
  }
}
