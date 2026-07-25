part of swagger.api;

class InlineResponse20019ServiceTypes {
  
  int servicesId = null;

  String servicesName = null;

  int servicesCost = null;

  String servicesField1 = null;

  String servicesField2 = null;

  String servicesModule = null;

  InlineResponse20019ServiceTypes();

  @override
  String toString() {
    return 'InlineResponse20019ServiceTypes[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, ]';
  }

  InlineResponse20019ServiceTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    servicesId = json['services_id'];
    servicesName = json['services_name'];
    servicesCost = json['services_cost'];
    servicesField1 = json['services_field1'];
    servicesField2 = json['services_field2'];
    servicesModule = json['services_module'];
  }

  Map<String, dynamic> toJson() {
    return {
      'services_id': servicesId,
      'services_name': servicesName,
      'services_cost': servicesCost,
      'services_field1': servicesField1,
      'services_field2': servicesField2,
      'services_module': servicesModule
     };
  }

  static List<InlineResponse20019ServiceTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20019ServiceTypes>() : json.map((value) => new InlineResponse20019ServiceTypes.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20019ServiceTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20019ServiceTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20019ServiceTypes.fromJson(value));
    }
    return map;
  }
}
