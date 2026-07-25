part of swagger.api;

class InlineResponse20020 {
  
  bool continue_ = null;

  List<String> errors = [];

  int serviceType = null;

  double serviceCost = null;

  double originalCost = null;

  double repeatServiceCost = null;

  InlineResponse20020();

  @override
  String toString() {
    return 'InlineResponse20020[continue_=$continue_, errors=$errors, serviceType=$serviceType, serviceCost=$serviceCost, originalCost=$originalCost, repeatServiceCost=$repeatServiceCost, ]';
  }

  InlineResponse20020.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    continue_ = json['continue'];
    errors = (json['errors'] as List).map((item) => item as String).toList();
    serviceType = json['serviceType'];
    serviceCost = json['serviceCost'];
    originalCost = json['originalCost'];
    repeatServiceCost = json['repeatServiceCost'];
  }

  Map<String, dynamic> toJson() {
    return {
      'continue': continue_,
      'errors': errors,
      'serviceType': serviceType,
      'serviceCost': serviceCost,
      'originalCost': originalCost,
      'repeatServiceCost': repeatServiceCost
     };
  }

  static List<InlineResponse20020> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20020>() : json.map((value) => new InlineResponse20020.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20020> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20020>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20020.fromJson(value));
    }
    return map;
  }
}
