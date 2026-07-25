part of swagger.api;

class AccountInfoLimits {
  
  AccountInfoLimits();

  @override
  String toString() {
    return 'AccountInfoLimits[]';
  }

  AccountInfoLimits.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
  }

  Map<String, dynamic> toJson() {
    return {
     };
  }

  static List<AccountInfoLimits> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoLimits>() : json.map((value) => new AccountInfoLimits.fromJson(value)).toList();
  }

  static Map<String, AccountInfoLimits> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoLimits>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoLimits.fromJson(value));
    }
    return map;
  }
}
