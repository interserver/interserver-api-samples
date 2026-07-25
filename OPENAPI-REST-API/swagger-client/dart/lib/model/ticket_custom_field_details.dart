part of swagger.api;

class TicketCustomFieldDetails {
  
  String customer Server Access = null;
  //enum customer Server AccessEnum {  y,  n,  };

  String ip Address = null;

  String root Password = null;

  String sudo User = null;

  int sudo Password = null;

  int port = null;

  TicketCustomFieldDetails();

  @override
  String toString() {
    return 'TicketCustomFieldDetails[customer Server Access=$customer Server Access, ip Address=$ip Address, root Password=$root Password, sudo User=$sudo User, sudo Password=$sudo Password, port=$port, ]';
  }

  TicketCustomFieldDetails.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    customer Server Access = json['Customer Server Access'];
    ip Address = json['Ip Address'];
    root Password = json['Root Password'];
    sudo User = json['Sudo User'];
    sudo Password = json['Sudo Password'];
    port = json['Port'];
  }

  Map<String, dynamic> toJson() {
    return {
      'Customer Server Access': customer Server Access,
      'Ip Address': ip Address,
      'Root Password': root Password,
      'Sudo User': sudo User,
      'Sudo Password': sudo Password,
      'Port': port
     };
  }

  static List<TicketCustomFieldDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<TicketCustomFieldDetails>() : json.map((value) => new TicketCustomFieldDetails.fromJson(value)).toList();
  }

  static Map<String, TicketCustomFieldDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, TicketCustomFieldDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new TicketCustomFieldDetails.fromJson(value));
    }
    return map;
  }
}
