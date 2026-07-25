part of swagger.api;

class HomeDetailsModulesBackups {
  /* The icon for storages. */
  String icon = null;
/* Link to view backup. */
  String viewLink = null;
/* Heading for storages. */
  String heading = null;
/* Link to order storage. */
  String buyLink = null;
/* Link to view backups list. */
  String listLink = null;

  HomeDetailsModulesBackups();

  @override
  String toString() {
    return 'HomeDetailsModulesBackups[icon=$icon, viewLink=$viewLink, heading=$heading, buyLink=$buyLink, listLink=$listLink, ]';
  }

  HomeDetailsModulesBackups.fromJson(Map<String, dynamic> json) {
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

  static List<HomeDetailsModulesBackups> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeDetailsModulesBackups>() : json.map((value) => new HomeDetailsModulesBackups.fromJson(value)).toList();
  }

  static Map<String, HomeDetailsModulesBackups> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeDetailsModulesBackups>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeDetailsModulesBackups.fromJson(value));
    }
    return map;
  }
}
