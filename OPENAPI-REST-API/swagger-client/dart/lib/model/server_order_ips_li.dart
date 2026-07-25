part of swagger.api;

class ServerOrderIpsLi {
  
  ServerOrderIP n9 = null;

  ServerOrderIpsLi();

  @override
  String toString() {
    return 'ServerOrderIpsLi[n9=$n9, ]';
  }

  ServerOrderIpsLi.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n9 = new ServerOrderIP.fromJson(json['9']);
  }

  Map<String, dynamic> toJson() {
    return {
      '9': n9
     };
  }

  static List<ServerOrderIpsLi> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderIpsLi>() : json.map((value) => new ServerOrderIpsLi.fromJson(value)).toList();
  }

  static Map<String, ServerOrderIpsLi> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderIpsLi>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderIpsLi.fromJson(value));
    }
    return map;
  }
}
