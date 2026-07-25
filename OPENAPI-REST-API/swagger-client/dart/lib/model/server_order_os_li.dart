part of swagger.api;

class ServerOrderOsLi {
  
  ServerOrderOS n51 = null;

  ServerOrderOsLi();

  @override
  String toString() {
    return 'ServerOrderOsLi[n51=$n51, ]';
  }

  ServerOrderOsLi.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n51 = new ServerOrderOS.fromJson(json['51']);
  }

  Map<String, dynamic> toJson() {
    return {
      '51': n51
     };
  }

  static List<ServerOrderOsLi> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderOsLi>() : json.map((value) => new ServerOrderOsLi.fromJson(value)).toList();
  }

  static Map<String, ServerOrderOsLi> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderOsLi>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderOsLi.fromJson(value));
    }
    return map;
  }
}
