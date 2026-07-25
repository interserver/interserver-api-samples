part of swagger.api;

class Service {
  
  int servicesId = null;

  String servicesName = null;

  double servicesCost = null;

  String servicesCurrency = null;

  int servicesCategory = null;

  bool servicesBuyable = null;

  int servicesType = null;

  String servicesField1 = null;

  String servicesField2 = null;

  String servicesModule = null;

  Service();

  @override
  String toString() {
    return 'Service[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCurrency=$servicesCurrency, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, ]';
  }

  Service.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    servicesId = json['services_id'];
    servicesName = json['services_name'];
    servicesCost = json['services_cost'];
    servicesCurrency = json['services_currency'];
    servicesCategory = json['services_category'];
    servicesBuyable = json['services_buyable'];
    servicesType = json['services_type'];
    servicesField1 = json['services_field1'];
    servicesField2 = json['services_field2'];
    servicesModule = json['services_module'];
  }

  Map<String, dynamic> toJson() {
    return {
      'services_id': servicesId,
      'services_name': servicesName,
      'services_cost': servicesCost,
      'services_currency': servicesCurrency,
      'services_category': servicesCategory,
      'services_buyable': servicesBuyable,
      'services_type': servicesType,
      'services_field1': servicesField1,
      'services_field2': servicesField2,
      'services_module': servicesModule
     };
  }

  static List<Service> listFromJson(List<dynamic> json) {
    return json == null ? new List<Service>() : json.map((value) => new Service.fromJson(value)).toList();
  }

  static Map<String, Service> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Service>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Service.fromJson(value));
    }
    return map;
  }
}
