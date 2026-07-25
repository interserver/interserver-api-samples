part of swagger.api;

class VpsBackupRows {
  
  VpsBackupRows();

  @override
  String toString() {
    return 'VpsBackupRows[]';
  }

  VpsBackupRows.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<VpsBackupRows> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsBackupRows>() : json.map((value) => new VpsBackupRows.fromJson(value)).toList();
  }

  static Map<String, VpsBackupRows> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsBackupRows>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsBackupRows.fromJson(value));
    }
    return map;
  }
}
