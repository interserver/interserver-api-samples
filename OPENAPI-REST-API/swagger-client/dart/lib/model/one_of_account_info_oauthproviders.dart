part of swagger.api;

class OneOfAccountInfoOauthproviders {
  
  OneOfAccountInfoOauthproviders();

  @override
  String toString() {
    return 'OneOfAccountInfoOauthproviders[]';
  }

  OneOfAccountInfoOauthproviders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<OneOfAccountInfoOauthproviders> listFromJson(List<dynamic> json) {
    return json == null ? new List<OneOfAccountInfoOauthproviders>() : json.map((value) => new OneOfAccountInfoOauthproviders.fromJson(value)).toList();
  }

  static Map<String, OneOfAccountInfoOauthproviders> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OneOfAccountInfoOauthproviders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OneOfAccountInfoOauthproviders.fromJson(value));
    }
    return map;
  }
}
