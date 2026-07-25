part of swagger.api;

class ServerOrderFormValues {
  /* Memory value for the server order. */
  int memory = null;
/* Bandwidth value for the server order. */
  String bandwidth = null;
/* IPs value for the server order. */
  String ips = null;
/* Operating System value for the server order. */
  String os = null;
/* Control Panel value for the server order. */
  int cp = null;
/* RAID value for the server order. */
  String raid = null;
/* Hard Drives value for the server order. */
  String hd = null;

  ServerOrderFormValues();

  @override
  String toString() {
    return 'ServerOrderFormValues[memory=$memory, bandwidth=$bandwidth, ips=$ips, os=$os, cp=$cp, raid=$raid, hd=$hd, ]';
  }

  ServerOrderFormValues.fromJson(Map<String, dynamic> json) {
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

  static List<ServerOrderFormValues> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderFormValues>() : json.map((value) => new ServerOrderFormValues.fromJson(value)).toList();
  }

  static Map<String, ServerOrderFormValues> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderFormValues>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderFormValues.fromJson(value));
    }
    return map;
  }
}
