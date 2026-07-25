part of swagger.api;

class BackupExtraInfoTables {
  
  BackupIPInfo ipInfo = null;

  BackupExtraInfoTables();

  @override
  String toString() {
    return 'BackupExtraInfoTables[ipInfo=$ipInfo, ]';
  }

  BackupExtraInfoTables.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ipInfo = new BackupIPInfo.fromJson(json['ip_info']);
  }

  Map<String, dynamic> toJson() {
    return {
      'ip_info': ipInfo
     };
  }

  static List<BackupExtraInfoTables> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupExtraInfoTables>() : json.map((value) => new BackupExtraInfoTables.fromJson(value)).toList();
  }

  static Map<String, BackupExtraInfoTables> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupExtraInfoTables>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupExtraInfoTables.fromJson(value));
    }
    return map;
  }
}
