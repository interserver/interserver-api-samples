part of swagger.api;

class QuickserverOrderServerDetails {
  
  QuickserverOrderServerDetails381 n381 = null;

  QuickserverOrderServerDetails();

  @override
  String toString() {
    return 'QuickserverOrderServerDetails[n381=$n381, ]';
  }

  QuickserverOrderServerDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n381 = new QuickserverOrderServerDetails381.fromJson(json['381']);
  }

  Map<String, dynamic> toJson() {
    return {
      '381': n381
     };
  }

  static List<QuickserverOrderServerDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<QuickserverOrderServerDetails>() : json.map((value) => new QuickserverOrderServerDetails.fromJson(value)).toList();
  }

  static Map<String, QuickserverOrderServerDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, QuickserverOrderServerDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new QuickserverOrderServerDetails.fromJson(value));
    }
    return map;
  }
}
