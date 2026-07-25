part of swagger.api;

class IdBackupsBody1 {
  /* The backup filename to download. */
  String file = null;

  IdBackupsBody1();

  @override
  String toString() {
    return 'IdBackupsBody1[file=$file, ]';
  }

  IdBackupsBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'file': file
     };
  }

  static List<IdBackupsBody1> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdBackupsBody1>() : json.map((value) => new IdBackupsBody1.fromJson(value)).toList();
  }

  static Map<String, IdBackupsBody1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdBackupsBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdBackupsBody1.fromJson(value));
    }
    return map;
  }
}
