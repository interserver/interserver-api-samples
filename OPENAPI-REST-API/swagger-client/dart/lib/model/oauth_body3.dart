part of swagger.api;

class OauthBody3 {
  /* The account ID returned from the POST callback. */
  int accountId = null;
/* The 6-digit two-factor authentication code. */
  String code = null;

  OauthBody3();

  @override
  String toString() {
    return 'OauthBody3[accountId=$accountId, code=$code, ]';
  }

  OauthBody3.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    accountId = json['account_id'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    return {
      'account_id': accountId,
      'code': code
     };
  }

  static List<OauthBody3> listFromJson(List<dynamic> json) {
    return json == null ? new List<OauthBody3>() : json.map((value) => new OauthBody3.fromJson(value)).toList();
  }

  static Map<String, OauthBody3> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, OauthBody3>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new OauthBody3.fromJson(value));
    }
    return map;
  }
}
