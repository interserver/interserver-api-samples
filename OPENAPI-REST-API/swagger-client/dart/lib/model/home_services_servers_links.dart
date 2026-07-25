part of swagger.api;

class HomeServicesServersLinks {
  /* Link to a server. */
  String n16058 = null;

  HomeServicesServersLinks();

  @override
  String toString() {
    return 'HomeServicesServersLinks[n16058=$n16058, ]';
  }

  HomeServicesServersLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n16058 = json['16058'];
  }

  Map<String, dynamic> toJson() {
    return {
      '16058': n16058
     };
  }

  static List<HomeServicesServersLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesServersLinks>() : json.map((value) => new HomeServicesServersLinks.fromJson(value)).toList();
  }

  static Map<String, HomeServicesServersLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesServersLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesServersLinks.fromJson(value));
    }
    return map;
  }
}
