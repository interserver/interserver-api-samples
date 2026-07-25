part of swagger.api;

class AccountFeatures {
  
  int disableReset = null;

  int disableReinstall = null;

  AccountFeatures();

  @override
  String toString() {
    return 'AccountFeatures[disableReset=$disableReset, disableReinstall=$disableReinstall, ]';
  }

  AccountFeatures.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    disableReset = json['disable_reset'];
    disableReinstall = json['disable_reinstall'];
  }

  Map<String, dynamic> toJson() {
    return {
      'disable_reset': disableReset,
      'disable_reinstall': disableReinstall
     };
  }

  static List<AccountFeatures> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountFeatures>() : json.map((value) => new AccountFeatures.fromJson(value)).toList();
  }

  static Map<String, AccountFeatures> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountFeatures>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountFeatures.fromJson(value));
    }
    return map;
  }
}
