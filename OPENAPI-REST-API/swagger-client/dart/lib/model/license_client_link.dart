part of swagger.api;

class LicenseClientLink {
  /* Link label */
  String label = null;
/* Link URL */
  String link = null;
/* Link icon */
  String icon = null;
/* Icon text */
  String iconText = null;
/* Help text */
  String helpText = null;
/* Other attributes */
  String otherAttr = null;

  LicenseClientLink();

  @override
  String toString() {
    return 'LicenseClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, otherAttr=$otherAttr, ]';
  }

  LicenseClientLink.fromJson(Map<String, dynamic> json) {
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

  static List<LicenseClientLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<LicenseClientLink>() : json.map((value) => new LicenseClientLink.fromJson(value)).toList();
  }

  static Map<String, LicenseClientLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, LicenseClientLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new LicenseClientLink.fromJson(value));
    }
    return map;
  }
}
