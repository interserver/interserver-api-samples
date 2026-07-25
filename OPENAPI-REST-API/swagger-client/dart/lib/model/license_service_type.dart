part of swagger.api;

class LicenseServiceType {
  /* Service ID */
  String servicesId = null;
/* Service name */
  String servicesName = null;
/* Service cost */
  String servicesCost = null;
/* Service category */
  String servicesCategory = null;
/* Buyable status */
  String servicesBuyable = null;
/* Service type */
  String servicesType = null;
/* Service field 1 */
  String servicesField1 = null;
/* Service field 2 */
  String servicesField2 = null;
/* Service module */
  String servicesModule = null;

  LicenseServiceType();

  @override
  String toString() {
    return 'LicenseServiceType[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, ]';
  }

  LicenseServiceType.fromJson(Map<String, dynamic> json) {
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

  static List<LicenseServiceType> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseServiceType>() : json.map((value) => new LicenseServiceType.fromJson(value)).toList();
  }

  static Map<String, LicenseServiceType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseServiceType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseServiceType.fromJson(value));
    }
    return map;
  }
}
