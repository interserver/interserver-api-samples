part of swagger.api;

class VpsClientLink {
  /* Display label for the link. */
  String label = null;
/* URL or route for the action. */
  String link = null;
/* Icon class for the link. */
  String icon = null;
/* Icon text label. */
  String iconText = null;
/* Help tooltip text for the link. */
  String helpText = null;

  VpsClientLink();

  @override
  String toString() {
    return 'VpsClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, ]';
  }

  VpsClientLink.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    label = json['label'];
    link = json['link'];
    icon = json['icon'];
    iconText = json['icon_text'];
    helpText = json['help_text'];
  }

  Map<String, dynamic> toJson() {
    return {
      'label': label,
      'link': link,
      'icon': icon,
      'icon_text': iconText,
      'help_text': helpText
     };
  }

  static List<VpsClientLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsClientLink>() : json.map((value) => new VpsClientLink.fromJson(value)).toList();
  }

  static Map<String, VpsClientLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsClientLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsClientLink.fromJson(value));
    }
    return map;
  }
}
