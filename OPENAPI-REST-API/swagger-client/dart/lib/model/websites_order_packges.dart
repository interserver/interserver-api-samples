part of swagger.api;

class WebsitesOrderPackges {
  
  WebsitesOrderPackagesInfo n11440 = null;

  WebsitesOrderPackges();

  @override
  String toString() {
    return 'WebsitesOrderPackges[n11440=$n11440, ]';
  }

  WebsitesOrderPackges.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n11440 = new WebsitesOrderPackagesInfo.fromJson(json['11440']);
  }

  Map<String, dynamic> toJson() {
    return {
      '11440': n11440
     };
  }

  static List<WebsitesOrderPackges> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrderPackges>() : json.map((value) => new WebsitesOrderPackges.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrderPackges> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrderPackges>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrderPackges.fromJson(value));
    }
    return map;
  }
}
