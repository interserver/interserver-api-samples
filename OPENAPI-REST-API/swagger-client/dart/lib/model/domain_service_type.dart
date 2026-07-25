part of swagger.api;

class DomainServiceType {
  /* Service type ID. */
  String servicesId = null;
/* Service type name (e.g., .com Registration). */
  String servicesName = null;
/* Service cost per billing period. */
  String servicesCost = null;
/* Service category ID. */
  String servicesCategory = null;
/* Whether this service type is available for purchase. */
  String servicesBuyable = null;
/* Internal service type identifier. */
  String servicesType = null;
/* TLD or first configurable field for the service type. */
  String servicesField1 = null;
/* Second configurable field for the service type. */
  String servicesField2 = null;
/* Backend module handling this service type. */
  String servicesModule = null;

  DomainServiceType();

  @override
  String toString() {
    return 'DomainServiceType[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, ]';
  }

  DomainServiceType.fromJson(Map<String, dynamic> json) {
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

  static List<DomainServiceType> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainServiceType>() : json.map((value) => new DomainServiceType.fromJson(value)).toList();
  }

  static Map<String, DomainServiceType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainServiceType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainServiceType.fromJson(value));
    }
    return map;
  }
}
