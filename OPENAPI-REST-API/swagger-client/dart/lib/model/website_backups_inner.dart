part of swagger.api;

class WebsiteBackupsInner {
  
  String name = null;

  int size = null;

  WebsiteBackupsInner();

  @override
  String toString() {
    return 'WebsiteBackupsInner[name=$name, size=$size, ]';
  }

  WebsiteBackupsInner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'size': size
     };
  }

  static List<WebsiteBackupsInner> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteBackupsInner>() : json.map((value) => new WebsiteBackupsInner.fromJson(value)).toList();
  }

  static Map<String, WebsiteBackupsInner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteBackupsInner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteBackupsInner.fromJson(value));
    }
    return map;
  }
}
