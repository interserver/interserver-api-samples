part of swagger.api;

class AccountInfoCountryCurrencies {
  
  AccountInfoCountryCurrencies();

  @override
  String toString() {
    return 'AccountInfoCountryCurrencies[]';
  }

  AccountInfoCountryCurrencies.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AccountInfoCountryCurrencies> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoCountryCurrencies>() : json.map((value) => new AccountInfoCountryCurrencies.fromJson(value)).toList();
  }

  static Map<String, AccountInfoCountryCurrencies> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoCountryCurrencies>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoCountryCurrencies.fromJson(value));
    }
    return map;
  }
}
