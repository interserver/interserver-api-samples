part of swagger.api;

class LicensesOrder {
  
  LicensesOrderServiceCategories serviceCategories = null;

  LicensesOrderPackageCosts packageCosts = null;

  LicensesOrderServiceTypes serviceTypes = null;

  LicensesOrder();

  @override
  String toString() {
    return 'LicensesOrder[serviceCategories=$serviceCategories, packageCosts=$packageCosts, serviceTypes=$serviceTypes, ]';
  }

  LicensesOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceCategories = new LicensesOrderServiceCategories.fromJson(json['serviceCategories']);
    packageCosts = new LicensesOrderPackageCosts.fromJson(json['packageCosts']);
    serviceTypes = new LicensesOrderServiceTypes.fromJson(json['serviceTypes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'serviceCategories': serviceCategories,
      'packageCosts': packageCosts,
      'serviceTypes': serviceTypes
     };
  }

  static List<LicensesOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicensesOrder>() : json.map((value) => new LicensesOrder.fromJson(value)).toList();
  }

  static Map<String, LicensesOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicensesOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicensesOrder.fromJson(value));
    }
    return map;
  }
}
