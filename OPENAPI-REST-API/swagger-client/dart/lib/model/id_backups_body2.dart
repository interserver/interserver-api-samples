part of swagger.api;

class IdBackupsBody2 {
  /* The backup filename to download. */
  String file = null;

  IdBackupsBody2();

  @override
  String toString() {
    return 'IdBackupsBody2[file=$file, ]';
  }

  IdBackupsBody2.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'file': file
     };
  }

  static List<IdBackupsBody2> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdBackupsBody2>() : json.map((value) => new IdBackupsBody2.fromJson(value)).toList();
  }

  static Map<String, IdBackupsBody2> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdBackupsBody2>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdBackupsBody2.fromJson(value));
    }
    return map;
  }
}
