part of swagger.api;

class InlineResponse20013ClientLinks {
  
  String label = null;

  String link = null;

  String icon = null;

  String iconText = null;

  String helpText = null;

  String otherAttr = null;

  InlineResponse20013ClientLinks();

  @override
  String toString() {
    return 'InlineResponse20013ClientLinks[label=$label, link=$link, icon=$icon, iconText=$iconText, helpText=$helpText, otherAttr=$otherAttr, ]';
  }

  InlineResponse20013ClientLinks.fromJson(Map<String, dynamic> json) {
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

  static List<InlineResponse20013ClientLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013ClientLinks>() : json.map((value) => new InlineResponse20013ClientLinks.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013ClientLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013ClientLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013ClientLinks.fromJson(value));
    }
    return map;
  }
}
