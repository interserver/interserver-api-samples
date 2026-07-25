part of swagger.api;

class IpObject {
  /* IP Address */
  String ip = null;

  IpObject();

  @override
  String toString() {
    return 'IpObject[ip=$ip, ]';
  }

  IpObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ip': ip
     };
  }

  static List<IpObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<IpObject>() : json.map((value) => new IpObject.fromJson(value)).toList();
  }

  static Map<String, IpObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IpObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IpObject.fromJson(value));
    }
    return map;
  }
}
