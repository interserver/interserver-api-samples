part of swagger.api;

class HomeServicesWebhosting {
  
  HomeServicesWebhostingLinks links = null;
/* Number of web hosting services. */
  int count = null;

  HomeServicesWebhosting();

  @override
  String toString() {
    return 'HomeServicesWebhosting[links=$links, count=$count, ]';
  }

  HomeServicesWebhosting.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new HomeServicesWebhostingLinks.fromJson(json['links']);
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'count': count
     };
  }

  static List<HomeServicesWebhosting> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesWebhosting>() : json.map((value) => new HomeServicesWebhosting.fromJson(value)).toList();
  }

  static Map<String, HomeServicesWebhosting> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesWebhosting>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesWebhosting.fromJson(value));
    }
    return map;
  }
}
