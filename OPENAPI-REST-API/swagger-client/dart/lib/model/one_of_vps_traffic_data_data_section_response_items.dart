part of swagger.api;

class OneOfVPSTrafficDataDataSectionResponseItems {
  
  OneOfVPSTrafficDataDataSectionResponseItems();

  @override
  String toString() {
    return 'OneOfVPSTrafficDataDataSectionResponseItems[]';
  }

  OneOfVPSTrafficDataDataSectionResponseItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfVPSTrafficDataDataSectionResponseItems> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfVPSTrafficDataDataSectionResponseItems>() : json.map((value) => new OneOfVPSTrafficDataDataSectionResponseItems.fromJson(value)).toList();
  }

  static Map<String, OneOfVPSTrafficDataDataSectionResponseItems> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfVPSTrafficDataDataSectionResponseItems>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfVPSTrafficDataDataSectionResponseItems.fromJson(value));
    }
    return map;
  }
}
