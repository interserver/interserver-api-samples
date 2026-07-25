part of swagger.api;

class WebsitesOrderJsonServiceOffers {
  /* Array of service offers */
  List<WebsitesOrderJsonServiceOffersItem> n1026 = [];

  WebsitesOrderJsonServiceOffers();

  @override
  String toString() {
    return 'WebsitesOrderJsonServiceOffers[n1026=$n1026, ]';
  }

  WebsitesOrderJsonServiceOffers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n1026 = WebsitesOrderJsonServiceOffersItem.listFromJson(json['1026']);
  }

  Map<String, dynamic> toJson() {
    return {
      '1026': n1026
     };
  }

  static List<WebsitesOrderJsonServiceOffers> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrderJsonServiceOffers>() : json.map((value) => new WebsitesOrderJsonServiceOffers.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrderJsonServiceOffers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrderJsonServiceOffers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrderJsonServiceOffers.fromJson(value));
    }
    return map;
  }
}
