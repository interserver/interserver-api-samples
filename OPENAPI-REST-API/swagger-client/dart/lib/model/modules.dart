part of swagger.api;

class Modules {
  
  Modules();

  @override
  String toString() {
    return 'Modules[]';
  }

  Modules.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<Modules> listFromJson(List<dynamic> json) {
    return json == null ? new List<Modules>() : json.map((value) => new Modules.fromJson(value)).toList();
  }

  static Map<String, Modules> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Modules>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Modules.fromJson(value));
    }
    return map;
  }
}
