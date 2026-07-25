part of swagger.api;

class ServerClientLink {
  
  String label = null;

  String link = null;

  String icon = null;

  String iconText = null;

  String helpText = null;

  ServerClientLink();

  @override
  String toString() {
    return 'ServerClientLink[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, ]';
  }

  ServerClientLink.fromJson(Map<String, dynamic> json) {
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

  static List<ServerClientLink> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerClientLink>() : json.map((value) => new ServerClientLink.fromJson(value)).toList();
  }

  static Map<String, ServerClientLink> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerClientLink>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerClientLink.fromJson(value));
    }
    return map;
  }
}
