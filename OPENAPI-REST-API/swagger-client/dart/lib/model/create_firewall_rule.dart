part of swagger.api;

class CreateFirewallRule {
  
  int destinationPort = 80;
/* Source IP address to match. Use '0.0.0.0' to match any source. */
  String sourceIp = "0.0.0.0";

  int sourcePort = 0;
/* 1 = TCP, 2 = UDP */
  int protocolId = null;
  //enum protocolIdEnum {  1,  2,  };
/* 1 = Block,  0 = Whitelist */
  int xdpAction = null;
  //enum xdpActionEnum {  0,  1,  };

  CreateFirewallRule();

  @override
  String toString() {
    return 'CreateFirewallRule[destinationPort=$destinationPort, sourceIp=$sourceIp, sourcePort=$sourcePort, protocolId=$protocolId, xdpAction=$xdpAction, ]';
  }

  CreateFirewallRule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    destinationPort = json['destination_port'];
    sourceIp = json['source_ip'];
    sourcePort = json['source_port'];
    protocolId = json['protocol_id'];
    xdpAction = json['xdp_action'];
  }

  Map<String, dynamic> toJson() {
    return {
      'destination_port': destinationPort,
      'source_ip': sourceIp,
      'source_port': sourcePort,
      'protocol_id': protocolId,
      'xdp_action': xdpAction
     };
  }

  static List<CreateFirewallRule> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateFirewallRule>() : json.map((value) => new CreateFirewallRule.fromJson(value)).toList();
  }

  static Map<String, CreateFirewallRule> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateFirewallRule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateFirewallRule.fromJson(value));
    }
    return map;
  }
}
