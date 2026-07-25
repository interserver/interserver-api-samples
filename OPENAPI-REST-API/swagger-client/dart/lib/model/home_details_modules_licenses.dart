part of swagger.api;

class HomeDetailsModulesLicenses {
  /* The icon for licenses. */
  String icon = null;
/* Link to view license. */
  String viewLink = null;
/* Heading for licenses. */
  String heading = null;
/* Link to order license. */
  String buyLink = null;
/* Link to view licenses list. */
  String listLink = null;

  HomeDetailsModulesLicenses();

  @override
  String toString() {
    return 'HomeDetailsModulesLicenses[icon=$icon, viewLink=$viewLink, heading=$heading, buyLink=$buyLink, listLink=$listLink, ]';
  }

  HomeDetailsModulesLicenses.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    icon = json['icon'];
    viewLink = json['view_link'];
    heading = json['heading'];
    buyLink = json['buy_link'];
    listLink = json['list_link'];
  }

  Map<String, dynamic> toJson() {
    return {
      'icon': icon,
      'view_link': viewLink,
      'heading': heading,
      'buy_link': buyLink,
      'list_link': listLink
     };
  }

  static List<HomeDetailsModulesLicenses> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeDetailsModulesLicenses>() : json.map((value) => new HomeDetailsModulesLicenses.fromJson(value)).toList();
  }

  static Map<String, HomeDetailsModulesLicenses> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeDetailsModulesLicenses>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeDetailsModulesLicenses.fromJson(value));
    }
    return map;
  }
}
