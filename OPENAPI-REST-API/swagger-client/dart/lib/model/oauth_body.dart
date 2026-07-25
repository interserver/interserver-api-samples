part of swagger.api;

class OauthBody {
  /* The OAuth provider name (e.g. `Google`). */
  String provider = null;

  OauthBody();

  @override
  String toString() {
    return 'OauthBody[provider=$provider, ]';
  }

  OauthBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    provider = json['provider'];
  }

  Map<String, dynamic> toJson() {
    return {
      'provider': provider
     };
  }

  static List<OauthBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<OauthBody>() : json.map((value) => new OauthBody.fromJson(value)).toList();
  }

  static Map<String, OauthBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OauthBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OauthBody.fromJson(value));
    }
    return map;
  }
}
