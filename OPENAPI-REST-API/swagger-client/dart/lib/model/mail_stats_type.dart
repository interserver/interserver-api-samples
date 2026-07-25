part of swagger.api;

class MailStatsType {
  
  String time = null;
  //enum timeEnum {  all,  billing,  month,  7d,  24h,  today,  1h,  };

  int usage = null;

  String currency = null;

  String currencySymbol = null;

  double cost = null;

  int received = null;

  int sent = null;

  MailStatsTypeVolume volume = null;

  MailStatsType();

  @override
  String toString() {
    return 'MailStatsType[time=$time, usage=$usage, currency=$currency, currencySymbol=$currencySymbol, cost=$cost, received=$received, sent=$sent, volume=$volume, ]';
  }

  MailStatsType.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    time = json['time'];
    usage = json['usage'];
    currency = json['currency'];
    currencySymbol = json['currencySymbol'];
    cost = json['cost'];
    received = json['received'];
    sent = json['sent'];
    volume = new MailStatsTypeVolume.fromJson(json['volume']);
  }

  Map<String, dynamic> toJson() {
    return {
      'time': time,
      'usage': usage,
      'currency': currency,
      'currencySymbol': currencySymbol,
      'cost': cost,
      'received': received,
      'sent': sent,
      'volume': volume
     };
  }

  static List<MailStatsType> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailStatsType>() : json.map((value) => new MailStatsType.fromJson(value)).toList();
  }

  static Map<String, MailStatsType> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailStatsType>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailStatsType.fromJson(value));
    }
    return map;
  }
}
