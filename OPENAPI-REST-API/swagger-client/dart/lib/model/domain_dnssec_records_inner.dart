part of swagger.api;

class DomainDnssecRecordsInner {
  
  String algorithm = null;

  String digestType = null;

  String digest = null;

  String keyTag = null;

  DomainDnssecRecordsInner();

  @override
  String toString() {
    return 'DomainDnssecRecordsInner[algorithm=$algorithm, digestType=$digestType, digest=$digest, keyTag=$keyTag, ]';
  }

  DomainDnssecRecordsInner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    algorithm = json['algorithm'];
    digestType = json['digest_type'];
    digest = json['digest'];
    keyTag = json['key_tag'];
  }

  Map<String, dynamic> toJson() {
    return {
      'algorithm': algorithm,
      'digest_type': digestType,
      'digest': digest,
      'key_tag': keyTag
     };
  }

  static List<DomainDnssecRecordsInner> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainDnssecRecordsInner>() : json.map((value) => new DomainDnssecRecordsInner.fromJson(value)).toList();
  }

  static Map<String, DomainDnssecRecordsInner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainDnssecRecordsInner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainDnssecRecordsInner.fromJson(value));
    }
    return map;
  }
}
