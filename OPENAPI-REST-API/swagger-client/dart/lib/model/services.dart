part of swagger.api;

class Services {
  
  Services();

  @override
  String toString() {
    return 'Services[]';
  }

  Services.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Services> listFromJson(List<dynamic> json) {
    return json == null ? new List<Services>() : json.map((value) => new Services.fromJson(value)).toList();
  }

  static Map<String, Services> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Services>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Services.fromJson(value));
    }
    return map;
  }
}
