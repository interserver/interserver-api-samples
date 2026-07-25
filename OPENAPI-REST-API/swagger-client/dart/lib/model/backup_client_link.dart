part of swagger.api;

class BackupClientLink {
  /* Label of the client link. */
  String label = null;
/* Link URL of the client link. */
  String link = null;
/* Icon of the client link. */
  String icon = null;
/* Icon text of the client link. */
  String iconText = null;
/* Help text of the client link. */
  String helpText = null;
/* Other attributes of the client link. */
  String otherAttr = null;

  BackupClientLink();

  @override
  String toString() {
    return 'BackupClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, otherAttr=$otherAttr, ]';
  }

  BackupClientLink.fromJson(Map<String, dynamic> json) {
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

  static List<BackupClientLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupClientLink>() : json.map((value) => new BackupClientLink.fromJson(value)).toList();
  }

  static Map<String, BackupClientLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupClientLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupClientLink.fromJson(value));
    }
    return map;
  }
}
