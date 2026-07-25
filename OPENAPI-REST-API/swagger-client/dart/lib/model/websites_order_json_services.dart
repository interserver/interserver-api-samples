part of swagger.api;

class WebsitesOrderJsonServices {
  /* JSON services description */
  String n11447 = null;

  WebsitesOrderJsonServices();

  @override
  String toString() {
    return 'WebsitesOrderJsonServices[n11447=$n11447, ]';
  }

  WebsitesOrderJsonServices.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n11447 = json['11447'];
  }

  Map<String, dynamic> toJson() {
    return {
      '11447': n11447
     };
  }

  static List<WebsitesOrderJsonServices> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrderJsonServices>() : json.map((value) => new WebsitesOrderJsonServices.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrderJsonServices> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrderJsonServices>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrderJsonServices.fromJson(value));
    }
    return map;
  }
}
