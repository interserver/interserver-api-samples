part of swagger.api;

class BackupIPInfo {
  /* Title of the IP information table. */
  String title = null;

  List<BackupIPInfoRow> rows = [];

  BackupIPInfo();

  @override
  String toString() {
    return 'BackupIPInfo[title=$title, rows=$rows, ]';
  }

  BackupIPInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    title = json['title'];
    rows = BackupIPInfoRow.listFromJson(json['rows']);
  }

  Map<String, dynamic> toJson() {
    return {
      'title': title,
      'rows': rows
     };
  }

  static List<BackupIPInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupIPInfo>() : json.map((value) => new BackupIPInfo.fromJson(value)).toList();
  }

  static Map<String, BackupIPInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupIPInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupIPInfo.fromJson(value));
    }
    return map;
  }
}
