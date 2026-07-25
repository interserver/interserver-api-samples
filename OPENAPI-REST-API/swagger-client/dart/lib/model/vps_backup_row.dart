part of swagger.api;

class VpsBackupRow {
  /* Backup Type */
  String type = null;
/* The service id such as vps  id. */
  int service = null;
/* The name of the backup. */
  String name = null;
/* Size of the file in bytes */
  int size = null;
/* The creation date of the backup in a unix timestamp. */
  int date = null;

  VpsBackupRow();

  @override
  String toString() {
    return 'VpsBackupRow[type=$type, service=$service, name=$name, size=$size, date=$date, ]';
  }

  VpsBackupRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    type = json['type'];
    service = json['service'];
    name = json['name'];
    size = json['size'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    return {
      'type': type,
      'service': service,
      'name': name,
      'size': size,
      'date': date
     };
  }

  static List<VpsBackupRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsBackupRow>() : json.map((value) => new VpsBackupRow.fromJson(value)).toList();
  }

  static Map<String, VpsBackupRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsBackupRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsBackupRow.fromJson(value));
    }
    return map;
  }
}
