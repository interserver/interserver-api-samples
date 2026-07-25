part of swagger.api;

class HomeDetailsModulesVps {
  /* The icon for VPS. */
  String icon = null;
/* Link to view VPS. */
  String viewLink = null;
/* Heading for VPS. */
  String heading = null;
/* Link to order VPS. */
  String buyLink = null;
/* Link to view VPS list. */
  String listLink = null;

  HomeDetailsModulesVps();

  @override
  String toString() {
    return 'HomeDetailsModulesVps[icon=$icon, viewLink=$viewLink, heading=$heading, buyLink=$buyLink, listLink=$listLink, ]';
  }

  HomeDetailsModulesVps.fromJson(Map<String, dynamic> json) {
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

  static List<HomeDetailsModulesVps> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeDetailsModulesVps>() : json.map((value) => new HomeDetailsModulesVps.fromJson(value)).toList();
  }

  static Map<String, HomeDetailsModulesVps> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeDetailsModulesVps>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeDetailsModulesVps.fromJson(value));
    }
    return map;
  }
}
