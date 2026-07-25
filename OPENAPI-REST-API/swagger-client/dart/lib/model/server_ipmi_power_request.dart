part of swagger.api;

class ServerIpmiPowerRequest {
  /* The Asset ID */
  int asset = null;
/* The power action to send to the ipmi controller. */
  String action = null;
  //enum actionEnum {  cycle,  reset,  on,  off,  soft,  };

  ServerIpmiPowerRequest();

  @override
  String toString() {
    return 'ServerIpmiPowerRequest[asset=$asset, action=$action, ]';
  }

  ServerIpmiPowerRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    asset = json['asset'];
    action = json['action'];
  }

  Map<String, dynamic> toJson() {
    return {
      'asset': asset,
      'action': action
     };
  }

  static List<ServerIpmiPowerRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerIpmiPowerRequest>() : json.map((value) => new ServerIpmiPowerRequest.fromJson(value)).toList();
  }

  static Map<String, ServerIpmiPowerRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerIpmiPowerRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerIpmiPowerRequest.fromJson(value));
    }
    return map;
  }
}
