part of swagger.api;

class DomainNameserverPutRequest {
  
  List<String> nameserver = [];

  DomainNameserverPutRequest();

  @override
  String toString() {
    return 'DomainNameserverPutRequest[nameserver=$nameserver, ]';
  }

  DomainNameserverPutRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    nameserver = (json['nameserver'] as List).map((item) => item as String).toList();
  }

  Map<String, dynamic> toJson() {
    return {
      'nameserver': nameserver
     };
  }

  static List<DomainNameserverPutRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainNameserverPutRequest>() : json.map((value) => new DomainNameserverPutRequest.fromJson(value)).toList();
  }

  static Map<String, DomainNameserverPutRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainNameserverPutRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainNameserverPutRequest.fromJson(value));
    }
    return map;
  }
}
