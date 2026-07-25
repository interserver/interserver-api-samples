part of swagger.api;

class WebsiteClientLink {
  /* Label for the link */
  String label = null;
/* Link URL */
  String link = null;
/* Icon for the link */
  String icon = null;
/* Icon text for the link */
  String iconText = null;
/* Help text for the link */
  String helpText = null;
/* Other attributes for the link */
  String otherAttr = null;

  WebsiteClientLink();

  @override
  String toString() {
    return 'WebsiteClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, otherAttr=$otherAttr, ]';
  }

  WebsiteClientLink.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    link = json['link'];
    icon = json['icon'];
    iconText = json['icon_text'];
    helpText = json['help_text'];
    otherAttr = json['other_attr'];
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'link': link,
      'icon': icon,
      'icon_text': iconText,
      'help_text': helpText,
      'other_attr': otherAttr
     };
  }

  static List<WebsiteClientLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteClientLink>() : json.map((value) => new WebsiteClientLink.fromJson(value)).toList();
  }

  static Map<String, WebsiteClientLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteClientLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteClientLink.fromJson(value));
    }
    return map;
  }
}
