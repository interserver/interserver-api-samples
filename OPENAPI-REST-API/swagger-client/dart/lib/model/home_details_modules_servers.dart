part of swagger.api;

class HomeDetailsModulesServers {
  /* The icon for dedicated servers. */
  String icon = null;
/* Link to view server. */
  String viewLink = null;
/* Heading for dedicated servers. */
  String heading = null;
/* Link to order server. */
  String buyLink = null;
/* Link to view servers list. */
  String listLink = null;

  HomeDetailsModulesServers();

  @override
  String toString() {
    return 'HomeDetailsModulesServers[icon=$icon, viewLink=$viewLink, heading=$heading, buyLink=$buyLink, listLink=$listLink, ]';
  }

  HomeDetailsModulesServers.fromJson(Map<String, dynamic> json) {
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

  static List<HomeDetailsModulesServers> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeDetailsModulesServers>() : json.map((value) => new HomeDetailsModulesServers.fromJson(value)).toList();
  }

  static Map<String, HomeDetailsModulesServers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeDetailsModulesServers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeDetailsModulesServers.fromJson(value));
    }
    return map;
  }
}
