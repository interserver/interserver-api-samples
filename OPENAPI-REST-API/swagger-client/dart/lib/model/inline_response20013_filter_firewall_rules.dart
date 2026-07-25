part of swagger.api;

class InlineResponse20013FilterFirewallRules {
  
  String id = null;

  String sourceIp = null;

  String destinationIp = null;

  String protocolId = null;

  String sourcePort = null;

  String destinationPort = null;

  String xdpAction = null;

  String globalDrop = null;

  InlineResponse20013FilterFirewallRules();

  @override
  String toString() {
    return 'InlineResponse20013FilterFirewallRules[id=$id, sourceIp=$sourceIp, destinationIp=$destinationIp, protocolId=$protocolId, sourcePort=$sourcePort, destinationPort=$destinationPort, xdpAction=$xdpAction, globalDrop=$globalDrop, ]';
  }

  InlineResponse20013FilterFirewallRules.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    id = json['id'];
    sourceIp = json['source_ip'];
    destinationIp = json['destination_ip'];
    protocolId = json['protocol_id'];
    sourcePort = json['source_port'];
    destinationPort = json['destination_port'];
    xdpAction = json['xdp_action'];
    globalDrop = json['global_drop'];
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'source_ip': sourceIp,
      'destination_ip': destinationIp,
      'protocol_id': protocolId,
      'source_port': sourcePort,
      'destination_port': destinationPort,
      'xdp_action': xdpAction,
      'global_drop': globalDrop
     };
  }

  static List<InlineResponse20013FilterFirewallRules> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013FilterFirewallRules>() : json.map((value) => new InlineResponse20013FilterFirewallRules.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013FilterFirewallRules> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013FilterFirewallRules>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013FilterFirewallRules.fromJson(value));
    }
    return map;
  }
}
