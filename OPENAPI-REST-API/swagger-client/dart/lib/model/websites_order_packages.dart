part of swagger.api;

class WebsitesOrderPackages {
  /* Package description */
  String n11447 = null;

  WebsitesOrderPackages();

  @override
  String toString() {
    return 'WebsitesOrderPackages[n11447=$n11447, ]';
  }

  WebsitesOrderPackages.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n11447 = json['11447'];
  }

  Map<String, dynamic> toJson() {
    return {
      '11447': n11447
     };
  }

  static List<WebsitesOrderPackages> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrderPackages>() : json.map((value) => new WebsitesOrderPackages.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrderPackages> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrderPackages>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrderPackages.fromJson(value));
    }
    return map;
  }
}
