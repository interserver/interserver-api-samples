part of swagger.api;

class ServerIpmiLiveRequest {
  /* Asset ID */
  int asset = null;
/* Your IP Address you wish to connect to the IPMI system from. */
  String ip = null;

  ServerIpmiLiveRequest();

  @override
  String toString() {
    return 'ServerIpmiLiveRequest[asset=$asset, ip=$ip, ]';
  }

  ServerIpmiLiveRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    asset = json['asset'];
    ip = json['ip'];
  }

  Map<String, dynamic> toJson() {
    return {
      'asset': asset,
      'ip': ip
     };
  }

  static List<ServerIpmiLiveRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerIpmiLiveRequest>() : json.map((value) => new ServerIpmiLiveRequest.fromJson(value)).toList();
  }

  static Map<String, ServerIpmiLiveRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerIpmiLiveRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerIpmiLiveRequest.fromJson(value));
    }
    return map;
  }
}
