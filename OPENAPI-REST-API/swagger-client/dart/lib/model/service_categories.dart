part of swagger.api;

class ServiceCategories {
  
  ServiceCategories();

  @override
  String toString() {
    return 'ServiceCategories[]';
  }

  ServiceCategories.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<ServiceCategories> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServiceCategories>() : json.map((value) => new ServiceCategories.fromJson(value)).toList();
  }

  static Map<String, ServiceCategories> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServiceCategories>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServiceCategories.fromJson(value));
    }
    return map;
  }
}
