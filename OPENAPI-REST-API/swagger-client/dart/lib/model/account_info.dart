part of swagger.api;

class AccountInfo {
  
  String custid = null;

  String ima = null;

  AccountInfoData data = null;

  String ip = null;

  OneOfAccountInfoOauthproviders oauthproviders = null;

  AccountInfoOauthConfig oauthconfig = null;

  List<String> oauthadapters = [];

  AccountInfoLimits limits = null;

  String language = null;

  AccountInfoCountryCurrencies countryCurrencies = null;

  bool enableLocales = null;

  bool enableCurrencies = null;

  String gravatar = null;

  AccountInfo();

  @override
  String toString() {
    return 'AccountInfo[custid=$custid, ima=$ima, data=$data, ip=$ip, oauthproviders=$oauthproviders, oauthconfig=$oauthconfig, oauthadapters=$oauthadapters, limits=$limits, language=$language, countryCurrencies=$countryCurrencies, enableLocales=$enableLocales, enableCurrencies=$enableCurrencies, gravatar=$gravatar, ]';
  }

  AccountInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    custid = json['custid'];
    ima = json['ima'];
    data = new AccountInfoData.fromJson(json['data']);
    ip = json['ip'];
    oauthproviders = new OneOfAccountInfoOauthproviders.fromJson(json['oauthproviders']);
    oauthconfig = new AccountInfoOauthConfig.fromJson(json['oauthconfig']);
    oauthadapters = (json['oauthadapters'] as List).map((item) => item as String).toList();
    limits = new AccountInfoLimits.fromJson(json['limits']);
    language = json['language'];
    countryCurrencies = new AccountInfoCountryCurrencies.fromJson(json['countryCurrencies']);
    enableLocales = json['enableLocales'];
    enableCurrencies = json['enableCurrencies'];
    gravatar = json['gravatar'];
  }

  Map<String, dynamic> toJson() {
    return {
      'custid': custid,
      'ima': ima,
      'data': data,
      'ip': ip,
      'oauthproviders': oauthproviders,
      'oauthconfig': oauthconfig,
      'oauthadapters': oauthadapters,
      'limits': limits,
      'language': language,
      'countryCurrencies': countryCurrencies,
      'enableLocales': enableLocales,
      'enableCurrencies': enableCurrencies,
      'gravatar': gravatar
     };
  }

  static List<AccountInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<AccountInfo>() : json.map((value) => new AccountInfo.fromJson(value)).toList();
  }

  static Map<String, AccountInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AccountInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AccountInfo.fromJson(value));
    }
    return map;
  }
}
