part of swagger.api;

class OneOfVpsTrafficHistorySectionDataResponseItems {
  
  OneOfVpsTrafficHistorySectionDataResponseItems();

  @override
  String toString() {
    return 'OneOfVpsTrafficHistorySectionDataResponseItems[]';
  }

  OneOfVpsTrafficHistorySectionDataResponseItems.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfVpsTrafficHistorySectionDataResponseItems> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfVpsTrafficHistorySectionDataResponseItems>() : json.map((value) => new OneOfVpsTrafficHistorySectionDataResponseItems.fromJson(value)).toList();
  }

  static Map<String, OneOfVpsTrafficHistorySectionDataResponseItems> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfVpsTrafficHistorySectionDataResponseItems>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfVpsTrafficHistorySectionDataResponseItems.fromJson(value));
    }
    return map;
  }
}
