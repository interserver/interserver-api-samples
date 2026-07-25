part of swagger.api;

class ServerOrderFieldLabel {
  /* Name of the field label. */
  String name = null;
/* Active status of the field label. */
  int active = null;

  ServerOrderFieldLabel();

  @override
  String toString() {
    return 'ServerOrderFieldLabel[name=$name, active=$active, ]';
  }

  ServerOrderFieldLabel.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    active = json['active'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'active': active
     };
  }

  static List<ServerOrderFieldLabel> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerOrderFieldLabel>() : json.map((value) => new ServerOrderFieldLabel.fromJson(value)).toList();
  }

  static Map<String, ServerOrderFieldLabel> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerOrderFieldLabel>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerOrderFieldLabel.fromJson(value));
    }
    return map;
  }
}
