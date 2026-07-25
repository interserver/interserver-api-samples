part of swagger.api;

class HostnameObject {
  
  String hostname = null;

  HostnameObject();

  @override
  String toString() {
    return 'HostnameObject[hostname=$hostname, ]';
  }

  HostnameObject.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hostname = json['hostname'];
  }

  Map<String, dynamic> toJson() {
    return {
      'hostname': hostname
     };
  }

  static List<HostnameObject> listFromJson(List<dynamic> json) {
    return json == null ? new List<HostnameObject>() : json.map((value) => new HostnameObject.fromJson(value)).toList();
  }

  static Map<String, HostnameObject> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, HostnameObject>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new HostnameObject.fromJson(value));
    }
    return map;
  }
}
