part of swagger.api;

class BackupsOrder {
  
  BackupsOrderPackageCosts packageCosts = null;

  BackupsOrderServiceTypes serviceTypes = null;

  BackupsOrder();

  @override
  String toString() {
    return 'BackupsOrder[packageCosts=$packageCosts, serviceTypes=$serviceTypes, ]';
  }

  BackupsOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    packageCosts = new BackupsOrderPackageCosts.fromJson(json['packageCosts']);
    serviceTypes = new BackupsOrderServiceTypes.fromJson(json['serviceTypes']);
  }

  Map<String, dynamic> toJson() {
    return {
      'packageCosts': packageCosts,
      'serviceTypes': serviceTypes
     };
  }

  static List<BackupsOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupsOrder>() : json.map((value) => new BackupsOrder.fromJson(value)).toList();
  }

  static Map<String, BackupsOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupsOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupsOrder.fromJson(value));
    }
    return map;
  }
}
