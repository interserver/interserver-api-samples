part of swagger.api;

class ScrubIpFilterTypes {
  
  bool success = null;

  Map<String, ScrubIpFilterTypesFilters> filters = {};

  ScrubIpFilterTypes();

  @override
  String toString() {
    return 'ScrubIpFilterTypes[success=$success, filters=$filters, ]';
  }

  ScrubIpFilterTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    success = json['success'];
    filters = ScrubIpFilterTypesFilters.mapFromJson(json['filters']);
  }

  Map<String, dynamic> toJson() {
    return {
      'success': success,
      'filters': filters
     };
  }

  static List<ScrubIpFilterTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<ScrubIpFilterTypes>() : json.map((value) => new ScrubIpFilterTypes.fromJson(value)).toList();
  }

  static Map<String, ScrubIpFilterTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ScrubIpFilterTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ScrubIpFilterTypes.fromJson(value));
    }
    return map;
  }
}
