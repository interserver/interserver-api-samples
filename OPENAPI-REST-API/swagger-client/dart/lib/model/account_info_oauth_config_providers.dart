part of swagger.api;

class AccountInfoOauthConfigProviders {
  
  AccountInfoOauthConfigProviders();

  @override
  String toString() {
    return 'AccountInfoOauthConfigProviders[]';
  }

  AccountInfoOauthConfigProviders.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AccountInfoOauthConfigProviders> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoOauthConfigProviders>() : json.map((value) => new AccountInfoOauthConfigProviders.fromJson(value)).toList();
  }

  static Map<String, AccountInfoOauthConfigProviders> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoOauthConfigProviders>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoOauthConfigProviders.fromJson(value));
    }
    return map;
  }
}
