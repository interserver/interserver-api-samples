part of swagger.api;

class DomainDnssecRecords {
  
  DomainDnssecRecords();

  @override
  String toString() {
    return 'DomainDnssecRecords[]';
  }

  DomainDnssecRecords.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<DomainDnssecRecords> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainDnssecRecords>() : json.map((value) => new DomainDnssecRecords.fromJson(value)).toList();
  }

  static Map<String, DomainDnssecRecords> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainDnssecRecords>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainDnssecRecords.fromJson(value));
    }
    return map;
  }
}
