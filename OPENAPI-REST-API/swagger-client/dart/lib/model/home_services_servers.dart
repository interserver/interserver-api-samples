part of swagger.api;

class HomeServicesServers {
  
  HomeServicesServersLinks links = null;
/* Number of servers. */
  int count = null;

  HomeServicesServers();

  @override
  String toString() {
    return 'HomeServicesServers[links=$links, count=$count, ]';
  }

  HomeServicesServers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new HomeServicesServersLinks.fromJson(json['links']);
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'count': count
     };
  }

  static List<HomeServicesServers> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesServers>() : json.map((value) => new HomeServicesServers.fromJson(value)).toList();
  }

  static Map<String, HomeServicesServers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesServers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesServers.fromJson(value));
    }
    return map;
  }
}
