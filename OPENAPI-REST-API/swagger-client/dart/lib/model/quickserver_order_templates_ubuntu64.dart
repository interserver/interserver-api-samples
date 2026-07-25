part of swagger.api;

class QuickserverOrderTemplatesUbuntu64 {
  
  QuickserverOrderTemplatesUbuntu64();

  @override
  String toString() {
    return 'QuickserverOrderTemplatesUbuntu64[]';
  }

  QuickserverOrderTemplatesUbuntu64.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<QuickserverOrderTemplatesUbuntu64> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverOrderTemplatesUbuntu64>() : json.map((value) => new QuickserverOrderTemplatesUbuntu64.fromJson(value)).toList();
  }

  static Map<String, QuickserverOrderTemplatesUbuntu64> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverOrderTemplatesUbuntu64>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverOrderTemplatesUbuntu64.fromJson(value));
    }
    return map;
  }
}
