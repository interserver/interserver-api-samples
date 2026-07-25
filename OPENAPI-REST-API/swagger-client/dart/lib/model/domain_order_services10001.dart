part of swagger.api;

class DomainOrderServices10001 {
  /* Service ID */
  String servicesId = null;
/* Service Name */
  String servicesName = null;
/* Service Cost */
  String servicesCost = null;
/* Currency of Service Cost */
  String servicesCurrency = null;
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
/* Hidden flag for Service */
  String servicesHidden = null;

  DomainOrderServices10001();

  @override
  String toString() {
    return 'DomainOrderServices10001[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCurrency=$servicesCurrency, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, servicesHidden=$servicesHidden, ]';
  }

  DomainOrderServices10001.fromJson(Map<String, dynamic> json) {
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
    servicesHidden = json['services_hidden'];
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
      'services_module': servicesModule,
      'services_hidden': servicesHidden
     };
  }

  static List<DomainOrderServices10001> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainOrderServices10001>() : json.map((value) => new DomainOrderServices10001.fromJson(value)).toList();
  }

  static Map<String, DomainOrderServices10001> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainOrderServices10001>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainOrderServices10001.fromJson(value));
    }
    return map;
  }
}
