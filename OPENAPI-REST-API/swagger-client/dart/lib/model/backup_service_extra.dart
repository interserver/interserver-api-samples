part of swagger.api;

class BackupServiceExtra {
  
  BackupServiceExtra();

  @override
  String toString() {
    return 'BackupServiceExtra[]';
  }

  BackupServiceExtra.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<BackupServiceExtra> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupServiceExtra>() : json.map((value) => new BackupServiceExtra.fromJson(value)).toList();
  }

  static Map<String, BackupServiceExtra> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupServiceExtra>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupServiceExtra.fromJson(value));
    }
    return map;
  }
}
