part of swagger.api;

class MailStatsTypeVolumeTo {
  
  int client@domainCom = null;

  int user@siteNet = null;

  int sales@companyCom = null;

  int client@anothersiteCom = null;

  MailStatsTypeVolumeTo();

  @override
  String toString() {
    return 'MailStatsTypeVolumeTo[client@domainCom=$client@domainCom, user@siteNet=$user@siteNet, sales@companyCom=$sales@companyCom, client@anothersiteCom=$client@anothersiteCom, ]';
  }

  MailStatsTypeVolumeTo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    client@domainCom = json['client@domain.com'];
    user@siteNet = json['user@site.net'];
    sales@companyCom = json['sales@company.com'];
    client@anothersiteCom = json['client@anothersite.com'];
  }

  Map<String, dynamic> toJson() {
    return {
      'client@domain.com': client@domainCom,
      'user@site.net': user@siteNet,
      'sales@company.com': sales@companyCom,
      'client@anothersite.com': client@anothersiteCom
     };
  }

  static List<MailStatsTypeVolumeTo> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailStatsTypeVolumeTo>() : json.map((value) => new MailStatsTypeVolumeTo.fromJson(value)).toList();
  }

  static Map<String, MailStatsTypeVolumeTo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailStatsTypeVolumeTo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailStatsTypeVolumeTo.fromJson(value));
    }
    return map;
  }
}
