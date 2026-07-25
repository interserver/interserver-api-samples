part of swagger.api;

class HomeServicesDomainsLinks {
  /* Link to a domain. */
  String n376114 = null;
/* Link to a domain. */
  String n376503 = null;
/* Link to a domain. */
  String n592337 = null;

  HomeServicesDomainsLinks();

  @override
  String toString() {
    return 'HomeServicesDomainsLinks[n376114=$n376114, n376503=$n376503, n592337=$n592337, ]';
  }

  HomeServicesDomainsLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n376114 = json['376114'];
    n376503 = json['376503'];
    n592337 = json['592337'];
  }

  Map<String, dynamic> toJson() {
    return {
      '376114': n376114,
      '376503': n376503,
      '592337': n592337
     };
  }

  static List<HomeServicesDomainsLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesDomainsLinks>() : json.map((value) => new HomeServicesDomainsLinks.fromJson(value)).toList();
  }

  static Map<String, HomeServicesDomainsLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesDomainsLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesDomainsLinks.fromJson(value));
    }
    return map;
  }
}
