part of swagger.api;

class MailClientLink {
  /* The label of the client link. */
  String label = null;
/* The link URL of the client link. */
  String link = null;
/* The icon class of the client link. */
  String icon = null;
/* The text for the icon of the client link. */
  String iconText = null;
/* Help text for the client link. */
  String helpText = null;
/* Additional attributes for the client link. */
  String otherAttr = null;

  MailClientLink();

  @override
  String toString() {
    return 'MailClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, otherAttr=$otherAttr, ]';
  }

  MailClientLink.fromJson(Map<String, dynamic> json) {
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

  static List<MailClientLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailClientLink>() : json.map((value) => new MailClientLink.fromJson(value)).toList();
  }

  static Map<String, MailClientLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailClientLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailClientLink.fromJson(value));
    }
    return map;
  }
}
