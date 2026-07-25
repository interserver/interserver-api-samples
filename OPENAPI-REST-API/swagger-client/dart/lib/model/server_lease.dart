part of swagger.api;

class ServerLease {
  /* MAC address associated with the lease. */
  String mac = null;
/* Indicates if the lease is authenticated. */
  bool authenticated = null;
/* Group identifier for the lease. */
  String group = null;

  ServerLease();

  @override
  String toString() {
    return 'ServerLease[mac=$mac, authenticated=$authenticated, group=$group, ]';
  }

  ServerLease.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    mac = json['mac'];
    authenticated = json['authenticated'];
    group = json['group'];
  }

  Map<String, dynamic> toJson() {
    return {
      'mac': mac,
      'authenticated': authenticated,
      'group': group
     };
  }

  static List<ServerLease> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerLease>() : json.map((value) => new ServerLease.fromJson(value)).toList();
  }

  static Map<String, ServerLease> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerLease>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerLease.fromJson(value));
    }
    return map;
  }
}
