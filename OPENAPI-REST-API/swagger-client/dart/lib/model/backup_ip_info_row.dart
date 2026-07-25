part of swagger.api;

class BackupIPInfoRow {
  /* Description of the IP information. */
  String desc = null;
/* Value of the IP information. */
  String value = null;

  BackupIPInfoRow();

  @override
  String toString() {
    return 'BackupIPInfoRow[desc=$desc, value=$value, ]';
  }

  BackupIPInfoRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    desc = json['desc'];
    value = json['value'];
  }

  Map<String, dynamic> toJson() {
    return {
      'desc': desc,
      'value': value
     };
  }

  static List<BackupIPInfoRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupIPInfoRow>() : json.map((value) => new BackupIPInfoRow.fromJson(value)).toList();
  }

  static Map<String, BackupIPInfoRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupIPInfoRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupIPInfoRow.fromJson(value));
    }
    return map;
  }
}
