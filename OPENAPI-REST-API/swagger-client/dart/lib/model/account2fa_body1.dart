part of swagger.api;

class Account2faBody1 {
  /* The 6-digit verification code from your authenticator app. */
  String n2faGoogleCode = null;

  Account2faBody1();

  @override
  String toString() {
    return 'Account2faBody1[n2faGoogleCode=$n2faGoogleCode, ]';
  }

  Account2faBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n2faGoogleCode = json['2fa_google_code'];
  }

  Map<String, dynamic> toJson() {
    return {
      '2fa_google_code': n2faGoogleCode
     };
  }

  static List<Account2faBody1> listFromJson(List<dynamic> json) {
    return json == null ? new List<Account2faBody1>() : json.map((value) => new Account2faBody1.fromJson(value)).toList();
  }

  static Map<String, Account2faBody1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, Account2faBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new Account2faBody1.fromJson(value));
    }
    return map;
  }
}
