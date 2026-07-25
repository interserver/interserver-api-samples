part of swagger.api;

class HomeServicesLicensesLinks {
  /* Link to a license. */
  String n386522 = null;

  HomeServicesLicensesLinks();

  @override
  String toString() {
    return 'HomeServicesLicensesLinks[n386522=$n386522, ]';
  }

  HomeServicesLicensesLinks.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n386522 = json['386522'];
  }

  Map<String, dynamic> toJson() {
    return {
      '386522': n386522
     };
  }

  static List<HomeServicesLicensesLinks> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeServicesLicensesLinks>() : json.map((value) => new HomeServicesLicensesLinks.fromJson(value)).toList();
  }

  static Map<String, HomeServicesLicensesLinks> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeServicesLicensesLinks>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeServicesLicensesLinks.fromJson(value));
    }
    return map;
  }
}
