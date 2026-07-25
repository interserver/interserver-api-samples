part of swagger.api;

class HomeServicesBackups {
  /* List of backup links. */
  List<String> links = [];
/* Number of backups. */
  int count = null;

  HomeServicesBackups();

  @override
  String toString() {
    return 'HomeServicesBackups[links=$links, count=$count, ]';
  }

  HomeServicesBackups.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = (json['links'] as List).map((item) => item as String).toList();
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'count': count
     };
  }

  static List<HomeServicesBackups> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesBackups>() : json.map((value) => new HomeServicesBackups.fromJson(value)).toList();
  }

  static Map<String, HomeServicesBackups> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesBackups>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesBackups.fromJson(value));
    }
    return map;
  }
}
