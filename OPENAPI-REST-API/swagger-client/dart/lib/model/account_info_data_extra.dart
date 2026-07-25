part of swagger.api;

class AccountInfoDataExtra {
  
  String privateWhois = null;

  AccountInfoDataExtra();

  @override
  String toString() {
    return 'AccountInfoDataExtra[privateWhois=$privateWhois, ]';
  }

  AccountInfoDataExtra.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    privateWhois = json['private_whois'];
  }

  Map<String, dynamic> toJson() {
    return {
      'private_whois': privateWhois
     };
  }

  static List<AccountInfoDataExtra> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoDataExtra>() : json.map((value) => new AccountInfoDataExtra.fromJson(value)).toList();
  }

  static Map<String, AccountInfoDataExtra> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoDataExtra>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoDataExtra.fromJson(value));
    }
    return map;
  }
}
