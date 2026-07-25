part of swagger.api;

class UpdateTicket {
  
  String ip = null;

  String ipAddress = null;

  String customerServerAccess = null;
  //enum customerServerAccessEnum {  y,  n,  };

  String rootPassword = null;

  String sudoUsername = null;

  String sudoPassword = null;

  int port = null;

  UpdateTicket();

  @override
  String toString() {
    return 'UpdateTicket[ip=$ip, ipAddress=$ipAddress, customerServerAccess=$customerServerAccess, rootPassword=$rootPassword, sudoUsername=$sudoUsername, sudoPassword=$sudoPassword, port=$port, ]';
  }

  UpdateTicket.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ip = json['ip'];
    ipAddress = json['ip_address'];
    customerServerAccess = json['customer_server_access'];
    rootPassword = json['root_password'];
    sudoUsername = json['sudo_username'];
    sudoPassword = json['sudo_password'];
    port = json['port'];
  }

  Map<String, dynamic> toJson() {
    return {
      'ip': ip,
      'ip_address': ipAddress,
      'customer_server_access': customerServerAccess,
      'root_password': rootPassword,
      'sudo_username': sudoUsername,
      'sudo_password': sudoPassword,
      'port': port
     };
  }

  static List<UpdateTicket> listFromJson(List<dynamic> json) {
    return json == null ? new List<UpdateTicket>() : json.map((value) => new UpdateTicket.fromJson(value)).toList();
  }

  static Map<String, UpdateTicket> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, UpdateTicket>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new UpdateTicket.fromJson(value));
    }
    return map;
  }
}
