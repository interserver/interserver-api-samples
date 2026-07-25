part of swagger.api;

class InlineResponse20019 {
  
  InlineResponse20019PackageCosts packageCosts = null;

  List<InlineResponse20019ServiceTypes> serviceTypes = [];

  List<InlineResponse20019Ips> ips = [];

  InlineResponse20019();

  @override
  String toString() {
    return 'InlineResponse20019[packageCosts=$packageCosts, serviceTypes=$serviceTypes, ips=$ips, ]';
  }

  InlineResponse20019.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    packageCosts = new InlineResponse20019PackageCosts.fromJson(json['packageCosts']);
    serviceTypes = InlineResponse20019ServiceTypes.listFromJson(json['serviceTypes']);
    ips = InlineResponse20019Ips.listFromJson(json['ips']);
  }

  Map<String, dynamic> toJson() {
    return {
      'packageCosts': packageCosts,
      'serviceTypes': serviceTypes,
      'ips': ips
     };
  }

  static List<InlineResponse20019> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20019>() : json.map((value) => new InlineResponse20019.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20019> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20019>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20019.fromJson(value));
    }
    return map;
  }
}
