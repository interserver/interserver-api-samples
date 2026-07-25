part of swagger.api;

class HomeDetails {
  
  HomeDetailsModules modules = null;

  HomeDetails();

  @override
  String toString() {
    return 'HomeDetails[modules=$modules, ]';
  }

  HomeDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    modules = new HomeDetailsModules.fromJson(json['modules']);
  }

  Map<String, dynamic> toJson() {
    return {
      'modules': modules
     };
  }

  static List<HomeDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<HomeDetails>() : json.map((value) => new HomeDetails.fromJson(value)).toList();
  }

  static Map<String, HomeDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HomeDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HomeDetails.fromJson(value));
    }
    return map;
  }
}
