part of swagger.api;

class VpsSnapshot {
  /* Snapshot name. */
  String name = null;
/* Disk space used by this snapshot in bytes. */
  int used = null;
/* Unix timestamp of when the snapshot was created. */
  int date = null;

  VpsSnapshot();

  @override
  String toString() {
    return 'VpsSnapshot[name=$name, used=$used, date=$date, ]';
  }

  VpsSnapshot.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    used = json['used'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'used': used,
      'date': date
     };
  }

  static List<VpsSnapshot> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsSnapshot>() : json.map((value) => new VpsSnapshot.fromJson(value)).toList();
  }

  static Map<String, VpsSnapshot> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsSnapshot>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsSnapshot.fromJson(value));
    }
    return map;
  }
}
