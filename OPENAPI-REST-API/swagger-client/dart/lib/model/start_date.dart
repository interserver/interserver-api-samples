part of swagger.api;

class StartDate {
  
  StartDate();

  @override
  String toString() {
    return 'StartDate[]';
  }

  StartDate.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<StartDate> listFromJson(List<dynamic> json) {
    return json == null ? new List<StartDate>() : json.map((value) => new StartDate.fromJson(value)).toList();
  }

  static Map<String, StartDate> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, StartDate>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new StartDate.fromJson(value));
    }
    return map;
  }
}
