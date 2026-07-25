part of swagger.api;

class DnsNewRecord {
  /* Name part of record */
  String name = null;

  DnsRecordType type = null;
/* Content of record */
  String content = null;
/* Time-to-live */
  int ttl = 86400;
/* Priority */
  int prio = 0;

  DnsNewRecord();

  @override
  String toString() {
    return 'DnsNewRecord[name=$name, type=$type, content=$content, ttl=$ttl, prio=$prio, ]';
  }

  DnsNewRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    type = new DnsRecordType.fromJson(json['type']);
    content = json['content'];
    ttl = json['ttl'];
    prio = json['prio'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'content': content,
      'ttl': ttl,
      'prio': prio
     };
  }

  static List<DnsNewRecord> listFromJson(List<dynamic> json) {
    return json == null ? new List<DnsNewRecord>() : json.map((value) => new DnsNewRecord.fromJson(value)).toList();
  }

  static Map<String, DnsNewRecord> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DnsNewRecord>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DnsNewRecord.fromJson(value));
    }
    return map;
  }
}
