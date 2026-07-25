part of swagger.api;

class ServerOrderConfigIds {
  /* Memory configuration ID for the server order. */
  int memory = null;
/* Bandwidth configuration ID for the server order. */
  String bandwidth = null;
/* IPs configuration ID for the server order. */
  String ips = null;
/* Operating System configuration ID for the server order. */
  String os = null;
/* Control Panel configuration ID for the server order. */
  int cp = null;
/* RAID configuration ID for the server order. */
  String raid = null;
/* Hard Drives configuration ID for the server order. */
  String hd = null;

  ServerOrderConfigIds();

  @override
  String toString() {
    return 'ServerOrderConfigIds[memory=$memory, bandwidth=$bandwidth, ips=$ips, os=$os, cp=$cp, raid=$raid, hd=$hd, ]';
  }

  ServerOrderConfigIds.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    memory = json['memory'];
    bandwidth = json['bandwidth'];
    ips = json['ips'];
    os = json['os'];
    cp = json['cp'];
    raid = json['raid'];
    hd = json['hd'];
  }

  Map<String, dynamic> toJson() {
    return {
      'memory': memory,
      'bandwidth': bandwidth,
      'ips': ips,
      'os': os,
      'cp': cp,
      'raid': raid,
      'hd': hd
     };
  }

  static List<ServerOrderConfigIds> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderConfigIds>() : json.map((value) => new ServerOrderConfigIds.fromJson(value)).toList();
  }

  static Map<String, ServerOrderConfigIds> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderConfigIds>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderConfigIds.fromJson(value));
    }
    return map;
  }
}
