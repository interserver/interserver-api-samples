part of swagger.api;

class ServerLocations {
  
  ServerLocation1 n1 = null;

  ServerLocations();

  @override
  String toString() {
    return 'ServerLocations[n1=$n1, ]';
  }

  ServerLocations.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n1 = new ServerLocation1.fromJson(json['1']);
  }

  Map<String, dynamic> toJson() {
    return {
      '1': n1
     };
  }

  static List<ServerLocations> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerLocations>() : json.map((value) => new ServerLocations.fromJson(value)).toList();
  }

  static Map<String, ServerLocations> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerLocations>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerLocations.fromJson(value));
    }
    return map;
  }
}
