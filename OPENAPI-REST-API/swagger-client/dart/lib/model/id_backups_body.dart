part of swagger.api;

class IdBackupsBody {
  /* The backup filename to download. */
  String file = null;

  IdBackupsBody();

  @override
  String toString() {
    return 'IdBackupsBody[file=$file, ]';
  }

  IdBackupsBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    file = json['file'];
  }

  Map<String, dynamic> toJson() {
    return {
      'file': file
     };
  }

  static List<IdBackupsBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdBackupsBody>() : json.map((value) => new IdBackupsBody.fromJson(value)).toList();
  }

  static Map<String, IdBackupsBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdBackupsBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdBackupsBody.fromJson(value));
    }
    return map;
  }
}
