part of swagger.api;

class MailServiceType {
  /* The ID of the service type. */
  String servicesId = null;
/* The name of the service type. */
  String servicesName = null;
/* The cost of the service type. */
  String servicesCost = null;
/* The category of the service type. */
  String servicesCategory = null;
/* Whether the service type is buyable. */
  String servicesBuyable = null;
/* The type of the service type. */
  String servicesType = null;
/* Additional field for the service type. */
  String servicesField1 = null;
/* Additional field for the service type. */
  String servicesField2 = null;
/* The module of the service type. */
  String servicesModule = null;

  MailServiceType();

  @override
  String toString() {
    return 'MailServiceType[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, ]';
  }

  MailServiceType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    servicesId = json['services_id'];
    servicesName = json['services_name'];
    servicesCost = json['services_cost'];
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
      'services_category': servicesCategory,
      'services_buyable': servicesBuyable,
      'services_type': servicesType,
      'services_field1': servicesField1,
      'services_field2': servicesField2,
      'services_module': servicesModule
     };
  }

  static List<MailServiceType> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailServiceType>() : json.map((value) => new MailServiceType.fromJson(value)).toList();
  }

  static Map<String, MailServiceType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailServiceType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailServiceType.fromJson(value));
    }
    return map;
  }
}
