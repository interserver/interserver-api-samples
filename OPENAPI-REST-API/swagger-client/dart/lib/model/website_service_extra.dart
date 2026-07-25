part of swagger.api;

class WebsiteServiceExtra {
  
  WebsiteServiceExtra();

  @override
  String toString() {
    return 'WebsiteServiceExtra[]';
  }

  WebsiteServiceExtra.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<WebsiteServiceExtra> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteServiceExtra>() : json.map((value) => new WebsiteServiceExtra.fromJson(value)).toList();
  }

  static Map<String, WebsiteServiceExtra> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteServiceExtra>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteServiceExtra.fromJson(value));
    }
    return map;
  }
}
