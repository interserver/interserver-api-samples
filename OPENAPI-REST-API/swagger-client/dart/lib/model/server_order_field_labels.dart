part of swagger.api;

class ServerOrderFieldLabels {
  /* Bandwidth field label. */
  AllOfServerOrderFieldLabelsBandwidth bandwidth = null;
/* IPs field label. */
  AllOfServerOrderFieldLabelsIps ips = null;
/* Operating System field label. */
  AllOfServerOrderFieldLabelsOs os = null;
/* Control Panel field label. */
  AllOfServerOrderFieldLabelsCp cp = null;
/* RAID field label. */
  AllOfServerOrderFieldLabelsRaid raid = null;
/* Memory field label. */
  AllOfServerOrderFieldLabelsMemory memory = null;
/* Hard Drives field label */
  AllOfServerOrderFieldLabelsHd hd = null;

  ServerOrderFieldLabels();

  @override
  String toString() {
    return 'ServerOrderFieldLabels[bandwidth=$bandwidth, ips=$ips, os=$os, cp=$cp, raid=$raid, memory=$memory, hd=$hd, ]';
  }

  ServerOrderFieldLabels.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    bandwidth = new AllOfServerOrderFieldLabelsBandwidth.fromJson(json['bandwidth']);
    ips = new AllOfServerOrderFieldLabelsIps.fromJson(json['ips']);
    os = new AllOfServerOrderFieldLabelsOs.fromJson(json['os']);
    cp = new AllOfServerOrderFieldLabelsCp.fromJson(json['cp']);
    raid = new AllOfServerOrderFieldLabelsRaid.fromJson(json['raid']);
    memory = new AllOfServerOrderFieldLabelsMemory.fromJson(json['memory']);
    hd = new AllOfServerOrderFieldLabelsHd.fromJson(json['hd']);
  }

  Map<String, dynamic> toJson() {
    return {
      'bandwidth': bandwidth,
      'ips': ips,
      'os': os,
      'cp': cp,
      'raid': raid,
      'memory': memory,
      'hd': hd
     };
  }

  static List<ServerOrderFieldLabels> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderFieldLabels>() : json.map((value) => new ServerOrderFieldLabels.fromJson(value)).toList();
  }

  static Map<String, ServerOrderFieldLabels> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderFieldLabels>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderFieldLabels.fromJson(value));
    }
    return map;
  }
}
