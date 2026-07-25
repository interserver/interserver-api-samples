part of swagger.api;

class ServiceTypes {
  
  ServiceTypes();

  @override
  String toString() {
    return 'ServiceTypes[]';
  }

  ServiceTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ServiceTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServiceTypes>() : json.map((value) => new ServiceTypes.fromJson(value)).toList();
  }

  static Map<String, ServiceTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServiceTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServiceTypes.fromJson(value));
    }
    return map;
  }
}
