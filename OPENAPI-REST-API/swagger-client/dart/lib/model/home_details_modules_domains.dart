part of swagger.api;

class HomeDetailsModulesDomains {
  /* The icon for domains. */
  String icon = null;
/* Link to view domain. */
  String viewLink = null;
/* Heading for domains. */
  String heading = null;
/* Link to order domain. */
  String buyLink = null;
/* Link to view domains list. */
  String listLink = null;

  HomeDetailsModulesDomains();

  @override
  String toString() {
    return 'HomeDetailsModulesDomains[icon=$icon, viewLink=$viewLink, heading=$heading, buyLink=$buyLink, listLink=$listLink, ]';
  }

  HomeDetailsModulesDomains.fromJson(Map<String, dynamic> json) {
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

  static List<HomeDetailsModulesDomains> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeDetailsModulesDomains>() : json.map((value) => new HomeDetailsModulesDomains.fromJson(value)).toList();
  }

  static Map<String, HomeDetailsModulesDomains> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeDetailsModulesDomains>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeDetailsModulesDomains.fromJson(value));
    }
    return map;
  }
}
