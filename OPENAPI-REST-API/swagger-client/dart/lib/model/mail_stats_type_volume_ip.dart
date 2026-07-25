part of swagger.api;

class MailStatsTypeVolumeIp {
  
  int n1111 = null;

  int n2222 = null;

  int n3333 = null;

  int n4444 = null;

  MailStatsTypeVolumeIp();

  @override
  String toString() {
    return 'MailStatsTypeVolumeIp[n1111=$n1111, n2222=$n2222, n3333=$n3333, n4444=$n4444, ]';
  }

  MailStatsTypeVolumeIp.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n1111 = json['1.1.1.1'];
    n2222 = json['2.2.2.2'];
    n3333 = json['3.3.3.3'];
    n4444 = json['4.4.4.4'];
  }

  Map<String, dynamic> toJson() {
    return {
      '1.1.1.1': n1111,
      '2.2.2.2': n2222,
      '3.3.3.3': n3333,
      '4.4.4.4': n4444
     };
  }

  static List<MailStatsTypeVolumeIp> listFromJson(List<dynamic> json) {
    return json == null ? new List<MailStatsTypeVolumeIp>() : json.map((value) => new MailStatsTypeVolumeIp.fromJson(value)).toList();
  }

  static Map<String, MailStatsTypeVolumeIp> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, MailStatsTypeVolumeIp>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new MailStatsTypeVolumeIp.fromJson(value));
    }
    return map;
  }
}
