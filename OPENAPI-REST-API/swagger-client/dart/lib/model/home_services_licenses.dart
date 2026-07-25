part of swagger.api;

class HomeServicesLicenses {
  
  HomeServicesLicensesLinks links = null;
/* Number of licenses. */
  int count = null;

  HomeServicesLicenses();

  @override
  String toString() {
    return 'HomeServicesLicenses[links=$links, count=$count, ]';
  }

  HomeServicesLicenses.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    links = new HomeServicesLicensesLinks.fromJson(json['links']);
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    return {
      'links': links,
      'count': count
     };
  }

  static List<HomeServicesLicenses> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesLicenses>() : json.map((value) => new HomeServicesLicenses.fromJson(value)).toList();
  }

  static Map<String, HomeServicesLicenses> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesLicenses>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesLicenses.fromJson(value));
    }
    return map;
  }
}
