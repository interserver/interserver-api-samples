part of swagger.api;

class DnsRecord {
  /* The ID of the DNS Record. */
  String id = null;
/* The ID of the Domain this is a record of. */
  String domainId = null;

  String name = null;

  DnsRecordType type = null;
/* The content of the record, such as the IP address or hsotname. */
  String content = null;
/* Time To Live (seconds) */
  String ttl = null;
/* Priority */
  String prio = null;

  String disabled = null;
/* Alternate name to use for sorting */
  String ordername = null;

  String auth = null;

  DnsRecord();

  @override
  String toString() {
    return 'DnsRecord[id=$id, domainId=$domainId, name=$name, type=$type, content=$content, ttl=$ttl, prio=$prio, disabled=$disabled, ordername=$ordername, auth=$auth, ]';
  }

  DnsRecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    domainId = json['domain_id'];
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
      'id': id,
      'domain_id': domainId,
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

  static List<DnsRecord> listFromJson(List<dynamic> json) {
    return json == null ? new List<DnsRecord>() : json.map((value) => new DnsRecord.fromJson(value)).toList();
  }

  static Map<String, DnsRecord> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DnsRecord>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DnsRecord.fromJson(value));
    }
    return map;
  }
}
