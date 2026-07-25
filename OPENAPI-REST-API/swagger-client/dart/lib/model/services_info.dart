part of swagger.api;

class ServicesInfo {
  
  Modules modules = null;

  Services services = null;

  ServiceTypes serviceTypes = null;

  ServiceCategories serviceCategories = null;

  ServicesInfo();

  @override
  String toString() {
    return 'ServicesInfo[modules=$modules, services=$services, serviceTypes=$serviceTypes, serviceCategories=$serviceCategories, ]';
  }

  ServicesInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modules = new Modules.fromJson(json['modules']);
    services = new Services.fromJson(json['services']);
    serviceTypes = new ServiceTypes.fromJson(json['serviceTypes']);
    serviceCategories = new ServiceCategories.fromJson(json['serviceCategories']);
  }

  Map<String, dynamic> toJson() {
    return {
      'modules': modules,
      'services': services,
      'serviceTypes': serviceTypes,
      'serviceCategories': serviceCategories
     };
  }

  static List<ServicesInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServicesInfo>() : json.map((value) => new ServicesInfo.fromJson(value)).toList();
  }

  static Map<String, ServicesInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServicesInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServicesInfo.fromJson(value));
    }
    return map;
  }
}
