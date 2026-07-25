part of swagger.api;

class MailStatsTypeVolumeFrom {
  
  int billing@somedomainCom = null;

  int sales@somedomainCom = null;

  MailStatsTypeVolumeFrom();

  @override
  String toString() {
    return 'MailStatsTypeVolumeFrom[billing@somedomainCom=$billing@somedomainCom, sales@somedomainCom=$sales@somedomainCom, ]';
  }

  MailStatsTypeVolumeFrom.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    billing@somedomainCom = json['billing@somedomain.com'];
    sales@somedomainCom = json['sales@somedomain.com'];
  }

  Map<String, dynamic> toJson() {
    return {
      'billing@somedomain.com': billing@somedomainCom,
      'sales@somedomain.com': sales@somedomainCom
     };
  }

  static List<MailStatsTypeVolumeFrom> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailStatsTypeVolumeFrom>() : json.map((value) => new MailStatsTypeVolumeFrom.fromJson(value)).toList();
  }

  static Map<String, MailStatsTypeVolumeFrom> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailStatsTypeVolumeFrom>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailStatsTypeVolumeFrom.fromJson(value));
    }
    return map;
  }
}
