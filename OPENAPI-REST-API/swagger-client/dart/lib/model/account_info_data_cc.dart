part of swagger.api;

class AccountInfoDataCc {
  
  String cc = null;

  String ccExp = null;

  String name = null;

  String address = null;

  String city = null;

  String state = null;

  String zip = null;

  String country = null;

  String maxmindRiskscore = null;

  AccountInfoMaxMindResponse maxmind = null;

  bool verified = null;

  AccountInfoDataCc();

  @override
  String toString() {
    return 'AccountInfoDataCc[cc=$cc, ccExp=$ccExp, name=$name, address=$address, city=$city, state=$state, zip=$zip, country=$country, maxmindRiskscore=$maxmindRiskscore, maxmind=$maxmind, verified=$verified, ]';
  }

  AccountInfoDataCc.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    cc = json['cc'];
    ccExp = json['cc_exp'];
    name = json['name'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    country = json['country'];
    maxmindRiskscore = json['maxmind_riskscore'];
    maxmind = new AccountInfoMaxMindResponse.fromJson(json['maxmind']);
    verified = json['verified'];
  }

  Map<String, dynamic> toJson() {
    return {
      'cc': cc,
      'cc_exp': ccExp,
      'name': name,
      'address': address,
      'city': city,
      'state': state,
      'zip': zip,
      'country': country,
      'maxmind_riskscore': maxmindRiskscore,
      'maxmind': maxmind,
      'verified': verified
     };
  }

  static List<AccountInfoDataCc> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfoDataCc>() : json.map((value) => new AccountInfoDataCc.fromJson(value)).toList();
  }

  static Map<String, AccountInfoDataCc> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfoDataCc>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfoDataCc.fromJson(value));
    }
    return map;
  }
}
