part of swagger.api;

class AccountInfoLimitsInner {
  
  String start = null;

  String end = null;

  AccountInfoLimitsInner();

  @override
  String toString() {
    return 'AccountInfoLimitsInner[start=$start, end=$end, ]';
  }

  AccountInfoLimitsInner.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    start = json['start'];
    end = json['end'];
  }

  Map<String, dynamic> toJson() {
    return {
      'start': start,
      'end': end
     };
  }

  static List<AccountInfoLimitsInner> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoLimitsInner>() : json.map((value) => new AccountInfoLimitsInner.fromJson(value)).toList();
  }

  static Map<String, AccountInfoLimitsInner> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoLimitsInner>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoLimitsInner.fromJson(value));
    }
    return map;
  }
}
