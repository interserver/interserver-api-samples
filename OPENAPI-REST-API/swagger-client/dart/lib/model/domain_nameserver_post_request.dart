part of swagger.api;

class DomainNameserverPostRequest {
  
  String name = null;

  String ipAddress = null;

  DomainNameserverPostRequest();

  @override
  String toString() {
    return 'DomainNameserverPostRequest[name=$name, ipAddress=$ipAddress, ]';
  }

  DomainNameserverPostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    ipAddress = json['ipAddress'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'ipAddress': ipAddress
     };
  }

  static List<DomainNameserverPostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainNameserverPostRequest>() : json.map((value) => new DomainNameserverPostRequest.fromJson(value)).toList();
  }

  static Map<String, DomainNameserverPostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainNameserverPostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainNameserverPostRequest.fromJson(value));
    }
    return map;
  }
}
