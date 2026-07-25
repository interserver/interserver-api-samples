part of swagger.api;

class HomeDetailsModulesWebhosting {
  /* The icon for web hosting. */
  String icon = null;
/* Link to view website. */
  String viewLink = null;
/* Heading for web hosting. */
  String heading = null;
/* Link to order website. */
  String buyLink = null;
/* Link to view websites list. */
  String listLink = null;

  HomeDetailsModulesWebhosting();

  @override
  String toString() {
    return 'HomeDetailsModulesWebhosting[icon=$icon, viewLink=$viewLink, heading=$heading, buyLink=$buyLink, listLink=$listLink, ]';
  }

  HomeDetailsModulesWebhosting.fromJson(Map<String, dynamic> json) {
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

  static List<HomeDetailsModulesWebhosting> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeDetailsModulesWebhosting>() : json.map((value) => new HomeDetailsModulesWebhosting.fromJson(value)).toList();
  }

  static Map<String, HomeDetailsModulesWebhosting> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeDetailsModulesWebhosting>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeDetailsModulesWebhosting.fromJson(value));
    }
    return map;
  }
}
