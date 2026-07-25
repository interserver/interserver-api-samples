part of swagger.api;

class ServerIpmiLiveInfo {
  
  String text = null;

  String publicIp = null;

  String allowedIp = null;

  String clientUsername = null;

  String clientPassword = null;

  ServerIpmiLiveInfo();

  @override
  String toString() {
    return 'ServerIpmiLiveInfo[text=$text, publicIp=$publicIp, allowedIp=$allowedIp, clientUsername=$clientUsername, clientPassword=$clientPassword, ]';
  }

  ServerIpmiLiveInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    text = json['text'];
    publicIp = json['public_ip'];
    allowedIp = json['allowed_ip'];
    clientUsername = json['client_username'];
    clientPassword = json['client_password'];
  }

  Map<String, dynamic> toJson() {
    return {
      'text': text,
      'public_ip': publicIp,
      'allowed_ip': allowedIp,
      'client_username': clientUsername,
      'client_password': clientPassword
     };
  }

  static List<ServerIpmiLiveInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerIpmiLiveInfo>() : json.map((value) => new ServerIpmiLiveInfo.fromJson(value)).toList();
  }

  static Map<String, ServerIpmiLiveInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerIpmiLiveInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerIpmiLiveInfo.fromJson(value));
    }
    return map;
  }
}
