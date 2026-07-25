part of swagger.api;

class ServiceType {
  
  int stId = null;

  String stName = null;

  int stCategory = null;

  String stModule = null;

  ServiceType();

  @override
  String toString() {
    return 'ServiceType[stId=$stId, stName=$stName, stCategory=$stCategory, stModule=$stModule, ]';
  }

  ServiceType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    stId = json['st_id'];
    stName = json['st_name'];
    stCategory = json['st_category'];
    stModule = json['st_module'];
  }

  Map<String, dynamic> toJson() {
    return {
      'st_id': stId,
      'st_name': stName,
      'st_category': stCategory,
      'st_module': stModule
     };
  }

  static List<ServiceType> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServiceType>() : json.map((value) => new ServiceType.fromJson(value)).toList();
  }

  static Map<String, ServiceType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServiceType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServiceType.fromJson(value));
    }
    return map;
  }
}
