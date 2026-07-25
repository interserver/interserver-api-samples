part of swagger.api;

class DomainOrderServices {
  
  DomainOrderServices10001 domainOrderServices10001 = null;

  DomainOrderServices();

  @override
  String toString() {
    return 'DomainOrderServices[domainOrderServices10001=$domainOrderServices10001, ]';
  }

  DomainOrderServices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    domainOrderServices10001 = new DomainOrderServices10001.fromJson(json['DomainOrderServices10001']);
  }

  Map<String, dynamic> toJson() {
    return {
      'DomainOrderServices10001': domainOrderServices10001
     };
  }

  static List<DomainOrderServices> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainOrderServices>() : json.map((value) => new DomainOrderServices.fromJson(value)).toList();
  }

  static Map<String, DomainOrderServices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainOrderServices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainOrderServices.fromJson(value));
    }
    return map;
  }
}
