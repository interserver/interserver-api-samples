part of swagger.api;

class DomainDnssecRequest {
  /* List of DNSSEC algorithm IDs for each record. */
  List<int> algorithm = [];
/* List of digest type IDs for each record. */
  List<int> digestType = [];
/* List of hex digests for each record. */
  List<String> digest = [];
/* List of key tag values corresponding to each record. */
  List<int> keyTag = [];

  DomainDnssecRequest();

  @override
  String toString() {
    return 'DomainDnssecRequest[algorithm=$algorithm, digestType=$digestType, digest=$digest, keyTag=$keyTag, ]';
  }

  DomainDnssecRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    algorithm = (json['algorithm'] as List).map((item) => item as int).toList();
    digestType = (json['digest_type'] as List).map((item) => item as int).toList();
    digest = (json['digest'] as List).map((item) => item as String).toList();
    keyTag = (json['key_tag'] as List).map((item) => item as int).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'algorithm': algorithm,
      'digest_type': digestType,
      'digest': digest,
      'key_tag': keyTag
     };
  }

  static List<DomainDnssecRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainDnssecRequest>() : json.map((value) => new DomainDnssecRequest.fromJson(value)).toList();
  }

  static Map<String, DomainDnssecRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainDnssecRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainDnssecRequest.fromJson(value));
    }
    return map;
  }
}
