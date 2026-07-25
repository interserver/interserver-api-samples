part of swagger.api;

class ServerOrderBandwidthLi {
  
  ServerOrderBandwidth n15 = null;

  ServerOrderBandwidthLi();

  @override
  String toString() {
    return 'ServerOrderBandwidthLi[n15=$n15, ]';
  }

  ServerOrderBandwidthLi.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n15 = new ServerOrderBandwidth.fromJson(json['15']);
  }

  Map<String, dynamic> toJson() {
    return {
      '15': n15
     };
  }

  static List<ServerOrderBandwidthLi> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderBandwidthLi>() : json.map((value) => new ServerOrderBandwidthLi.fromJson(value)).toList();
  }

  static Map<String, ServerOrderBandwidthLi> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderBandwidthLi>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderBandwidthLi.fromJson(value));
    }
    return map;
  }
}
