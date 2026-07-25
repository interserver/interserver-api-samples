part of swagger.api;

class ServerOrderMemoryLi {
  
  ServerOrderMemoryLi254 n254 = null;

  ServerOrderMemoryLi();

  @override
  String toString() {
    return 'ServerOrderMemoryLi[n254=$n254, ]';
  }

  ServerOrderMemoryLi.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n254 = new ServerOrderMemoryLi254.fromJson(json['254']);
  }

  Map<String, dynamic> toJson() {
    return {
      '254': n254
     };
  }

  static List<ServerOrderMemoryLi> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderMemoryLi>() : json.map((value) => new ServerOrderMemoryLi.fromJson(value)).toList();
  }

  static Map<String, ServerOrderMemoryLi> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderMemoryLi>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderMemoryLi.fromJson(value));
    }
    return map;
  }
}
