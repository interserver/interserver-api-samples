part of swagger.api;

class IdBackupsBody3 {
  /* The backup filename to download. */
  String file = null;

  IdBackupsBody3();

  @override
  String toString() {
    return 'IdBackupsBody3[file=$file, ]';
  }

  IdBackupsBody3.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'file': file
     };
  }

  static List<IdBackupsBody3> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdBackupsBody3>() : json.map((value) => new IdBackupsBody3.fromJson(value)).toList();
  }

  static Map<String, IdBackupsBody3> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdBackupsBody3>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdBackupsBody3.fromJson(value));
    }
    return map;
  }
}
