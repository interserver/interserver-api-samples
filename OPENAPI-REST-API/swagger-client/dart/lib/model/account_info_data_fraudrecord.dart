part of swagger.api;

class AccountInfoDataFraudrecord {
  
  String score = null;

  String count = null;

  String reliability = null;

  String code = null;

  AccountInfoDataFraudrecord();

  @override
  String toString() {
    return 'AccountInfoDataFraudrecord[score=$score, count=$count, reliability=$reliability, code=$code, ]';
  }

  AccountInfoDataFraudrecord.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    score = json['score'];
    count = json['count'];
    reliability = json['reliability'];
    code = json['code'];
  }

  Map<String, dynamic> toJson() {
    return {
      'score': score,
      'count': count,
      'reliability': reliability,
      'code': code
     };
  }

  static List<AccountInfoDataFraudrecord> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoDataFraudrecord>() : json.map((value) => new AccountInfoDataFraudrecord.fromJson(value)).toList();
  }

  static Map<String, AccountInfoDataFraudrecord> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoDataFraudrecord>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoDataFraudrecord.fromJson(value));
    }
    return map;
  }
}
