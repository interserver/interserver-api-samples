part of swagger.api;

class HomeDetailsModulesQuickservers {
  /* The icon for quick servers. */
  String icon = null;
/* Link to view quick servers. */
  String viewLink = null;
/* Heading for quick servers. */
  String heading = null;
/* Link to order quick server. */
  String buyLink = null;
/* Link to view quick servers list. */
  String listLink = null;

  HomeDetailsModulesQuickservers();

  @override
  String toString() {
    return 'HomeDetailsModulesQuickservers[icon=$icon, viewLink=$viewLink, heading=$heading, buyLink=$buyLink, listLink=$listLink, ]';
  }

  HomeDetailsModulesQuickservers.fromJson(Map<String, dynamic> json) {
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

  static List<HomeDetailsModulesQuickservers> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeDetailsModulesQuickservers>() : json.map((value) => new HomeDetailsModulesQuickservers.fromJson(value)).toList();
  }

  static Map<String, HomeDetailsModulesQuickservers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeDetailsModulesQuickservers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeDetailsModulesQuickservers.fromJson(value));
    }
    return map;
  }
}
