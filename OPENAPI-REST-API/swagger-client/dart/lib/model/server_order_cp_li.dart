part of swagger.api;

class ServerOrderCpLi {
  
  ServerOrderControlPanel n9 = null;

  ServerOrderCpLi();

  @override
  String toString() {
    return 'ServerOrderCpLi[n9=$n9, ]';
  }

  ServerOrderCpLi.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n9 = new ServerOrderControlPanel.fromJson(json['9']);
  }

  Map<String, dynamic> toJson() {
    return {
      '9': n9
     };
  }

  static List<ServerOrderCpLi> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderCpLi>() : json.map((value) => new ServerOrderCpLi.fromJson(value)).toList();
  }

  static Map<String, ServerOrderCpLi> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderCpLi>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderCpLi.fromJson(value));
    }
    return map;
  }
}
