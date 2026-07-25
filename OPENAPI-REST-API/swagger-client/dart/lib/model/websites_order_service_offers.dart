part of swagger.api;

class WebsitesOrderServiceOffers {
  
  List<WebsitesOrderServiceOffer> n1026 = [];

  WebsitesOrderServiceOffers();

  @override
  String toString() {
    return 'WebsitesOrderServiceOffers[n1026=$n1026, ]';
  }

  WebsitesOrderServiceOffers.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n1026 = WebsitesOrderServiceOffer.listFromJson(json['1026']);
  }

  Map<String, dynamic> toJson() {
    return {
      '1026': n1026
     };
  }

  static List<WebsitesOrderServiceOffers> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrderServiceOffers>() : json.map((value) => new WebsitesOrderServiceOffers.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrderServiceOffers> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrderServiceOffers>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrderServiceOffers.fromJson(value));
    }
    return map;
  }
}
