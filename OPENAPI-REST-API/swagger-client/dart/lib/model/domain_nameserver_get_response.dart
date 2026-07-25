part of swagger.api;

class DomainNameserverGetResponse {
  
  DomainNameserverGetResponse();

  @override
  String toString() {
    return 'DomainNameserverGetResponse[]';
  }

  DomainNameserverGetResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<DomainNameserverGetResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainNameserverGetResponse>() : json.map((value) => new DomainNameserverGetResponse.fromJson(value)).toList();
  }

  static Map<String, DomainNameserverGetResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainNameserverGetResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainNameserverGetResponse.fromJson(value));
    }
    return map;
  }
}
