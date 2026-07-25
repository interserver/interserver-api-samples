part of swagger.api;

class ServerOrderMemoryLi254 {
  
  ServerOrderMemory n65 = null;

  ServerOrderMemoryLi254();

  @override
  String toString() {
    return 'ServerOrderMemoryLi254[n65=$n65, ]';
  }

  ServerOrderMemoryLi254.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n65 = new ServerOrderMemory.fromJson(json['65']);
  }

  Map<String, dynamic> toJson() {
    return {
      '65': n65
     };
  }

  static List<ServerOrderMemoryLi254> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderMemoryLi254>() : json.map((value) => new ServerOrderMemoryLi254.fromJson(value)).toList();
  }

  static Map<String, ServerOrderMemoryLi254> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderMemoryLi254>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderMemoryLi254.fromJson(value));
    }
    return map;
  }
}
