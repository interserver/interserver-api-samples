part of swagger.api;

class DnsUpdateRecord {
  
  String name = null;

  DnsRecordType type = null;

  String content = null;

  String ttl = null;

  String prio = null;

  String disabled = null;

  String ordername = null;

  String auth = null;

  DnsUpdateRecord();

  @override
  String toString() {
    return 'DnsUpdateRecord[name=$name, type=$type, content=$content, ttl=$ttl, prio=$prio, disabled=$disabled, ordername=$ordername, auth=$auth, ]';
  }

  DnsUpdateRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    type = new DnsRecordType.fromJson(json['type']);
    content = json['content'];
    ttl = json['ttl'];
    prio = json['prio'];
    disabled = json['disabled'];
    ordername = json['ordername'];
    auth = json['auth'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'content': content,
      'ttl': ttl,
      'prio': prio,
      'disabled': disabled,
      'ordername': ordername,
      'auth': auth
     };
  }

  static List<DnsUpdateRecord> listFromJson(List<dynamic> json) {
    return json == null ? new List<DnsUpdateRecord>() : json.map((value) => new DnsUpdateRecord.fromJson(value)).toList();
  }

  static Map<String, DnsUpdateRecord> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DnsUpdateRecord>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DnsUpdateRecord.fromJson(value));
    }
    return map;
  }
}
