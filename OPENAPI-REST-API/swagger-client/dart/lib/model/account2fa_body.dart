part of swagger.api;

class Account2faBody {
  /* The 6-digit verification code from your authenticator app. */
  String n2faGoogleCode = null;

  Account2faBody();

  @override
  String toString() {
    return 'Account2faBody[n2faGoogleCode=$n2faGoogleCode, ]';
  }

  Account2faBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n2faGoogleCode = json['2fa_google_code'];
  }

  Map<String, dynamic> toJson() {
    return {
      '2fa_google_code': n2faGoogleCode
     };
  }

  static List<Account2faBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<Account2faBody>() : json.map((value) => new Account2faBody.fromJson(value)).toList();
  }

  static Map<String, Account2faBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Account2faBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Account2faBody.fromJson(value));
    }
    return map;
  }
}
