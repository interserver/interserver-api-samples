part of swagger.api;

class ServerNetworkInfoSwitchports {
  
  ServerSwitchport n10414 = null;

  ServerNetworkInfoSwitchports();

  @override
  String toString() {
    return 'ServerNetworkInfoSwitchports[n10414=$n10414, ]';
  }

  ServerNetworkInfoSwitchports.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    n10414 = new ServerSwitchport.fromJson(json['10414']);
  }

  Map<String, dynamic> toJson() {
    return {
      '10414': n10414
     };
  }

  static List<ServerNetworkInfoSwitchports> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerNetworkInfoSwitchports>() : json.map((value) => new ServerNetworkInfoSwitchports.fromJson(value)).toList();
  }

  static Map<String, ServerNetworkInfoSwitchports> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerNetworkInfoSwitchports>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerNetworkInfoSwitchports.fromJson(value));
    }
    return map;
  }
}
