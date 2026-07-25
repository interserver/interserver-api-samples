part of swagger.api;

class LicenseExtraInfoTables {
  
  LicenseIpInfo ipInfo = null;

  LicenseExtraInfoTables();

  @override
  String toString() {
    return 'LicenseExtraInfoTables[ipInfo=$ipInfo, ]';
  }

  LicenseExtraInfoTables.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ipInfo = new LicenseIpInfo.fromJson(json['ip_info']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ip_info': ipInfo
     };
  }

  static List<LicenseExtraInfoTables> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseExtraInfoTables>() : json.map((value) => new LicenseExtraInfoTables.fromJson(value)).toList();
  }

  static Map<String, LicenseExtraInfoTables> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseExtraInfoTables>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseExtraInfoTables.fromJson(value));
    }
    return map;
  }
}
