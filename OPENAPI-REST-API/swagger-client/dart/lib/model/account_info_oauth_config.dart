part of swagger.api;

class AccountInfoOauthConfig {
  
  String callback = null;

  AccountInfoOauthConfigProviders providers = null;

  AccountInfoOauthConfig();

  @override
  String toString() {
    return 'AccountInfoOauthConfig[callback=$callback, providers=$providers, ]';
  }

  AccountInfoOauthConfig.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    callback = json['callback'];
    providers = new AccountInfoOauthConfigProviders.fromJson(json['providers']);
  }

  Map<String, dynamic> toJson() {
    return {
      'callback': callback,
      'providers': providers
     };
  }

  static List<AccountInfoOauthConfig> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoOauthConfig>() : json.map((value) => new AccountInfoOauthConfig.fromJson(value)).toList();
  }

  static Map<String, AccountInfoOauthConfig> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoOauthConfig>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoOauthConfig.fromJson(value));
    }
    return map;
  }
}
