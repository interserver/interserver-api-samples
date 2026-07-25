part of swagger.api;

class WebsitesOrderServiceTypes {
  
  WebsitesOrderServiceTypes n11447 = null;

  WebsitesOrderServiceTypes();

  @override
  String toString() {
    return 'WebsitesOrderServiceTypes[n11447=$n11447, ]';
  }

  WebsitesOrderServiceTypes.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n11447 = new WebsitesOrderServiceTypes.fromJson(json['11447']);
  }

  Map<String, dynamic> toJson() {
    return {
      '11447': n11447
     };
  }

  static List<WebsitesOrderServiceTypes> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrderServiceTypes>() : json.map((value) => new WebsitesOrderServiceTypes.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrderServiceTypes> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrderServiceTypes>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrderServiceTypes.fromJson(value));
    }
    return map;
  }
}
