part of swagger.api;

class WebsiteBackups {
  
  WebsiteBackups();

  @override
  String toString() {
    return 'WebsiteBackups[]';
  }

  WebsiteBackups.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<WebsiteBackups> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteBackups>() : json.map((value) => new WebsiteBackups.fromJson(value)).toList();
  }

  static Map<String, WebsiteBackups> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteBackups>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteBackups.fromJson(value));
    }
    return map;
  }
}
