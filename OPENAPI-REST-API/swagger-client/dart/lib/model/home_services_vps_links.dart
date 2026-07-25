part of swagger.api;

class HomeServicesVpsLinks {
  /* Link to a VPS. */
  String n465503 = null;
/* Link to a VPS. */
  String n2500081 = null;
/* Link to a VPS. */
  String n2578866 = null;

  HomeServicesVpsLinks();

  @override
  String toString() {
    return 'HomeServicesVpsLinks[n465503=$n465503, n2500081=$n2500081, n2578866=$n2578866, ]';
  }

  HomeServicesVpsLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n465503 = json['465503'];
    n2500081 = json['2500081'];
    n2578866 = json['2578866'];
  }

  Map<String, dynamic> toJson() {
    return {
      '465503': n465503,
      '2500081': n2500081,
      '2578866': n2578866
     };
  }

  static List<HomeServicesVpsLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesVpsLinks>() : json.map((value) => new HomeServicesVpsLinks.fromJson(value)).toList();
  }

  static Map<String, HomeServicesVpsLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesVpsLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesVpsLinks.fromJson(value));
    }
    return map;
  }
}
