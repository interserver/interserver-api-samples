part of swagger.api;

class ServerOrderPostRequest {
  /* CPU configuration id from config_li.cpu_li. Constrains valid hd/memory options. */
  int cpu = null;
/* Hard-drive configuration id(s) from config_li.hd_li[cpu]. Accepts a single id or an array of ids. */
  OneOfServerOrderPostRequestHd hd = null;
/* Memory configuration id from config_li.memory_li[cpu]. */
  int memory = null;
/* Bandwidth configuration id from config_li.bandwidth_li. */
  int bandwidth = null;
/* IP block configuration id from config_li.ips_li. */
  int ips = null;
/* Operating System configuration id from config_li.os_li. */
  int os = null;
/* Control Panel configuration id from config_li.cp_li. */
  int cp = null;
/* RAID configuration id from config_li.raid_li. */
  int raid = null;
/* Region id from the regions list. */
  int region = null;
/* Server hostname. Must pass valid_hostname(). */
  String servername = null;
/* Root password for the server. */
  String rootpass = null;
/* Terms-of-service acceptance. Must be true to place the order. */
  bool tos = null;
/* Optional free-form order comment. */
  String comment = "";

  ServerOrderPostRequest();

  @override
  String toString() {
    return 'ServerOrderPostRequest[cpu=$cpu, hd=$hd, memory=$memory, bandwidth=$bandwidth, ips=$ips, os=$os, cp=$cp, raid=$raid, region=$region, servername=$servername, rootpass=$rootpass, tos=$tos, comment=$comment, ]';
  }

  ServerOrderPostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    cpu = json['cpu'];
    hd = new OneOfServerOrderPostRequestHd.fromJson(json['hd']);
    memory = json['memory'];
    bandwidth = json['bandwidth'];
    ips = json['ips'];
    os = json['os'];
    cp = json['cp'];
    raid = json['raid'];
    region = json['region'];
    servername = json['servername'];
    rootpass = json['rootpass'];
    tos = json['tos'];
    comment = json['comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'cpu': cpu,
      'hd': hd,
      'memory': memory,
      'bandwidth': bandwidth,
      'ips': ips,
      'os': os,
      'cp': cp,
      'raid': raid,
      'region': region,
      'servername': servername,
      'rootpass': rootpass,
      'tos': tos,
      'comment': comment
     };
  }

  static List<ServerOrderPostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderPostRequest>() : json.map((value) => new ServerOrderPostRequest.fromJson(value)).toList();
  }

  static Map<String, ServerOrderPostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderPostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderPostRequest.fromJson(value));
    }
    return map;
  }
}
