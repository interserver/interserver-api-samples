part of swagger.api;

class LicensesOrderServiceTypes11482 {
  /* Service ID */
  String servicesId = null;
/* Service Name */
  String servicesName = null;
/* Service Cost */
  String servicesCost = null;
/* Service Category */
  String servicesCategory = null;
/* Buyable flag for Service */
  String servicesBuyable = null;
/* Service Type */
  String servicesType = null;
/* Field 1 of Service */
  String servicesField1 = null;
/* Field 2 of Service */
  String servicesField2 = null;
/* Module of Service */
  String servicesModule = null;

  LicensesOrderServiceTypes11482();

  @override
  String toString() {
    return 'LicensesOrderServiceTypes11482[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, ]';
  }

  LicensesOrderServiceTypes11482.fromJson(Map<String, dynamic> json) {
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

  static List<LicensesOrderServiceTypes11482> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicensesOrderServiceTypes11482>() : json.map((value) => new LicensesOrderServiceTypes11482.fromJson(value)).toList();
  }

  static Map<String, LicensesOrderServiceTypes11482> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicensesOrderServiceTypes11482>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicensesOrderServiceTypes11482.fromJson(value));
    }
    return map;
  }
}
