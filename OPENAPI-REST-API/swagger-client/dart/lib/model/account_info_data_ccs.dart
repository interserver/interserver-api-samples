part of swagger.api;

class AccountInfoDataCcs {
  
  AccountInfoDataCcs();

  @override
  String toString() {
    return 'AccountInfoDataCcs[]';
  }

  AccountInfoDataCcs.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AccountInfoDataCcs> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoDataCcs>() : json.map((value) => new AccountInfoDataCcs.fromJson(value)).toList();
  }

  static Map<String, AccountInfoDataCcs> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoDataCcs>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoDataCcs.fromJson(value));
    }
    return map;
  }
}
