part of swagger.api;

class InlineResponse20019PackageCosts {
  
  double packageId = null;

  double packageCost = null;

  String currency = null;

  String currencySymbol = null;

  InlineResponse20019PackageCosts();

  @override
  String toString() {
    return 'InlineResponse20019PackageCosts[packageId=$packageId, packageCost=$packageCost, currency=$currency, currencySymbol=$currencySymbol, ]';
  }

  InlineResponse20019PackageCosts.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    packageId = json['package_id'];
    packageCost = json['package_cost'];
    currency = json['currency'];
    currencySymbol = json['currencySymbol'];
  }

  Map<String, dynamic> toJson() {
    return {
      'package_id': packageId,
      'package_cost': packageCost,
      'currency': currency,
      'currencySymbol': currencySymbol
     };
  }

  static List<InlineResponse20019PackageCosts> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20019PackageCosts>() : json.map((value) => new InlineResponse20019PackageCosts.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20019PackageCosts> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20019PackageCosts>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20019PackageCosts.fromJson(value));
    }
    return map;
  }
}
