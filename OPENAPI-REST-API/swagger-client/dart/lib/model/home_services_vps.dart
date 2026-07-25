part of swagger.api;

class HomeServicesVps {
  
  HomeServicesVpsLinks links = null;
/* Number of VPS services. */
  int count = null;

  HomeServicesVps();

  @override
  String toString() {
    return 'HomeServicesVps[links=$links, count=$count, ]';
  }

  HomeServicesVps.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new HomeServicesVpsLinks.fromJson(json['links']);
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'count': count
     };
  }

  static List<HomeServicesVps> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesVps>() : json.map((value) => new HomeServicesVps.fromJson(value)).toList();
  }

  static Map<String, HomeServicesVps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesVps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesVps.fromJson(value));
    }
    return map;
  }
}
