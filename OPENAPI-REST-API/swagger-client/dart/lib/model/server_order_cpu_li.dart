part of swagger.api;

class ServerOrderCpuLi {
  
  ServerOrderCPU n254 = null;

  ServerOrderCpuLi();

  @override
  String toString() {
    return 'ServerOrderCpuLi[n254=$n254, ]';
  }

  ServerOrderCpuLi.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n254 = new ServerOrderCPU.fromJson(json['254']);
  }

  Map<String, dynamic> toJson() {
    return {
      '254': n254
     };
  }

  static List<ServerOrderCpuLi> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderCpuLi>() : json.map((value) => new ServerOrderCpuLi.fromJson(value)).toList();
  }

  static Map<String, ServerOrderCpuLi> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderCpuLi>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderCpuLi.fromJson(value));
    }
    return map;
  }
}
