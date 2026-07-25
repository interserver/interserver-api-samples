part of swagger.api;

class ServerSwitchport {
  /* Unique identifier for the switchport. */
  int switchportId = null;
/* Unique identifier for the switch associated with the switchport. */
  String switchId = null;
/* Name of the switch associated with the switchport. */
  String switch_ = null;
/* Port name on the switch. */
  String port = null;
/* Blade name associated with the port. */
  String blade = null;
/* Port identifier. */
  String justport = null;
/* Identifier for the graph associated with the switchport. */
  String graphId = null;
/* List of VLANs associated with the switchport. */
  List<String> vlans = [];
/* List of IPv6 VLANs associated with the switchport. */
  List<String> vlans6 = [];
/* Unique identifier of the asset associated with the switchport. */
  int assetId = null;

  ServerSwitchport();

  @override
  String toString() {
    return 'ServerSwitchport[switchportId=$switchportId, switchId=$switchId, switch_=$switch_, port=$port, blade=$blade, justport=$justport, graphId=$graphId, vlans=$vlans, vlans6=$vlans6, assetId=$assetId, ]';
  }

  ServerSwitchport.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    switchportId = json['switchport_id'];
    switchId = json['switch_id'];
    switch_ = json['switch'];
    port = json['port'];
    blade = json['blade'];
    justport = json['justport'];
    graphId = json['graph_id'];
    vlans = (json['vlans'] as List).map((item) => item as String).toList();
    vlans6 = (json['vlans6'] as List).map((item) => item as String).toList();
    assetId = json['asset_id'];
  }

  Map<String, dynamic> toJson() {
    return {
      'switchport_id': switchportId,
      'switch_id': switchId,
      'switch': switch_,
      'port': port,
      'blade': blade,
      'justport': justport,
      'graph_id': graphId,
      'vlans': vlans,
      'vlans6': vlans6,
      'asset_id': assetId
     };
  }

  static List<ServerSwitchport> listFromJson(List<dynamic> json) {
    return json == null ? new List<ServerSwitchport>() : json.map((value) => new ServerSwitchport.fromJson(value)).toList();
  }

  static Map<String, ServerSwitchport> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, ServerSwitchport>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new ServerSwitchport.fromJson(value));
    }
    return map;
  }
}
