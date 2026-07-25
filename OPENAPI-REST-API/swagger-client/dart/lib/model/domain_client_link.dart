part of swagger.api;

class DomainClientLink {
  
  String label = null;

  String link = null;

  String icon = null;

  String iconText = null;

  String helpText = null;

  DomainClientLink();

  @override
  String toString() {
    return 'DomainClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, ]';
  }

  DomainClientLink.fromJson(Map<String, dynamic> json) {
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

  static List<DomainClientLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainClientLink>() : json.map((value) => new DomainClientLink.fromJson(value)).toList();
  }

  static Map<String, DomainClientLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainClientLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainClientLink.fromJson(value));
    }
    return map;
  }
}
