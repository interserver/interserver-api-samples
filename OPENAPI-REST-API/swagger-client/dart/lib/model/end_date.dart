part of swagger.api;

class EndDate {
  
  EndDate();

  @override
  String toString() {
    return 'EndDate[]';
  }

  EndDate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<EndDate> listFromJson(List<dynamic> json) {
    return json == null ? new List<EndDate>() : json.map((value) => new EndDate.fromJson(value)).toList();
  }

  static Map<String, EndDate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, EndDate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new EndDate.fromJson(value));
    }
    return map;
  }
}
