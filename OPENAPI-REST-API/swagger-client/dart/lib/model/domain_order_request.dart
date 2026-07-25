part of swagger.api;

class DomainOrderRequest {
  
  DomainOrderRequest();

  @override
  String toString() {
    return 'DomainOrderRequest[]';
  }

  DomainOrderRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<DomainOrderRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainOrderRequest>() : json.map((value) => new DomainOrderRequest.fromJson(value)).toList();
  }

  static Map<String, DomainOrderRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainOrderRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainOrderRequest.fromJson(value));
    }
    return map;
  }
}
