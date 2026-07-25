part of swagger.api;

class OauthBody1 {
  /* The OAuth provider name (e.g. `Google`). */
  String provider = null;

  OauthBody1();

  @override
  String toString() {
    return 'OauthBody1[provider=$provider, ]';
  }

  OauthBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    provider = json['provider'];
  }

  Map<String, dynamic> toJson() {
    return {
      'provider': provider
     };
  }

  static List<OauthBody1> listFromJson(List<dynamic> json) {
    return json == null ? new List<OauthBody1>() : json.map((value) => new OauthBody1.fromJson(value)).toList();
  }

  static Map<String, OauthBody1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OauthBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OauthBody1.fromJson(value));
    }
    return map;
  }
}
