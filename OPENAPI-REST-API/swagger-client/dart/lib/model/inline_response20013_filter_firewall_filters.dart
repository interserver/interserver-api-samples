part of swagger.api;

class InlineResponse20013FilterFirewallFilters {
  
  String daddr = null;

  String dest = null;

  String filterName = null;

  String destinationIp = null;

  String filter = null;

  InlineResponse20013FilterFirewallFilters();

  @override
  String toString() {
    return 'InlineResponse20013FilterFirewallFilters[daddr=$daddr, dest=$dest, filterName=$filterName, destinationIp=$destinationIp, filter=$filter, ]';
  }

  InlineResponse20013FilterFirewallFilters.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    daddr = json['daddr'];
    dest = json['dest'];
    filterName = json['filter_name'];
    destinationIp = json['destination_ip'];
    filter = json['filter'];
  }

  Map<String, dynamic> toJson() {
    return {
      'daddr': daddr,
      'dest': dest,
      'filter_name': filterName,
      'destination_ip': destinationIp,
      'filter': filter
     };
  }

  static List<InlineResponse20013FilterFirewallFilters> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013FilterFirewallFilters>() : json.map((value) => new InlineResponse20013FilterFirewallFilters.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013FilterFirewallFilters> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013FilterFirewallFilters>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013FilterFirewallFilters.fromJson(value));
    }
    return map;
  }
}
