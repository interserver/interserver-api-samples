part of swagger.api;

class VpsOrderServiceTypes32 {
  
  String servicesId = null;

  String servicesName = null;

  String servicesCost = null;

  String servicesCategory = null;

  String servicesBuyable = null;

  String servicesType = null;

  String servicesField1 = null;

  String servicesField2 = null;

  String servicesModule = null;

  VpsOrderServiceTypes32();

  @override
  String toString() {
    return 'VpsOrderServiceTypes32[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, ]';
  }

  VpsOrderServiceTypes32.fromJson(Map<String, dynamic> json) {
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

  static List<VpsOrderServiceTypes32> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrderServiceTypes32>() : json.map((value) => new VpsOrderServiceTypes32.fromJson(value)).toList();
  }

  static Map<String, VpsOrderServiceTypes32> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrderServiceTypes32>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrderServiceTypes32.fromJson(value));
    }
    return map;
  }
}
