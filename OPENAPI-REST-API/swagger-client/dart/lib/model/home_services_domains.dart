part of swagger.api;

class HomeServicesDomains {
  
  HomeServicesDomainsLinks links = null;
/* Number of domains. */
  int count = null;

  HomeServicesDomains();

  @override
  String toString() {
    return 'HomeServicesDomains[links=$links, count=$count, ]';
  }

  HomeServicesDomains.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new HomeServicesDomainsLinks.fromJson(json['links']);
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'count': count
     };
  }

  static List<HomeServicesDomains> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesDomains>() : json.map((value) => new HomeServicesDomains.fromJson(value)).toList();
  }

  static Map<String, HomeServicesDomains> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesDomains>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesDomains.fromJson(value));
    }
    return map;
  }
}
