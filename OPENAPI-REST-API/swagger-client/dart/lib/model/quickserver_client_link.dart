part of swagger.api;

class QuickserverClientLink {
  /* Link label */
  String label = null;
/* Link */
  String link = null;
/* Icon class */
  String icon = null;
/* Icon text */
  String iconText = null;
/* Help text */
  String helpText = null;
/* Other attribute */
  String otherAttr = null;

  QuickserverClientLink();

  @override
  String toString() {
    return 'QuickserverClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, otherAttr=$otherAttr, ]';
  }

  QuickserverClientLink.fromJson(Map<String, dynamic> json) {
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

  static List<QuickserverClientLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverClientLink>() : json.map((value) => new QuickserverClientLink.fromJson(value)).toList();
  }

  static Map<String, QuickserverClientLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverClientLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverClientLink.fromJson(value));
    }
    return map;
  }
}
