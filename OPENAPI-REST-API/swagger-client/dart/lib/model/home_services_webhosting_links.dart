part of swagger.api;

class HomeServicesWebhostingLinks {
  /* Link to a website. */
  String n376359 = null;
/* Link to a website. */
  String n376473 = null;
/* Link to a website. */
  String n386218 = null;

  HomeServicesWebhostingLinks();

  @override
  String toString() {
    return 'HomeServicesWebhostingLinks[n376359=$n376359, n376473=$n376473, n386218=$n386218, ]';
  }

  HomeServicesWebhostingLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n376359 = json['376359'];
    n376473 = json['376473'];
    n386218 = json['386218'];
  }

  Map<String, dynamic> toJson() {
    return {
      '376359': n376359,
      '376473': n376473,
      '386218': n386218
     };
  }

  static List<HomeServicesWebhostingLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesWebhostingLinks>() : json.map((value) => new HomeServicesWebhostingLinks.fromJson(value)).toList();
  }

  static Map<String, HomeServicesWebhostingLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesWebhostingLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesWebhostingLinks.fromJson(value));
    }
    return map;
  }
}
