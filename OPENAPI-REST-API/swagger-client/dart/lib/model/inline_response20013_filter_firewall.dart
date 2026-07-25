part of swagger.api;

class InlineResponse20013FilterFirewall {
  
  List<InlineResponse20013FilterFirewallRules> rules = [];

  List<InlineResponse20013FilterFirewallFilters> filters = [];

  int scrubEnabled = null;

  InlineResponse20013FilterFirewall();

  @override
  String toString() {
    return 'InlineResponse20013FilterFirewall[rules=$rules, filters=$filters, scrubEnabled=$scrubEnabled, ]';
  }

  InlineResponse20013FilterFirewall.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    rules = InlineResponse20013FilterFirewallRules.listFromJson(json['rules']);
    filters = InlineResponse20013FilterFirewallFilters.listFromJson(json['filters']);
    scrubEnabled = json['scrub_enabled'];
  }

  Map<String, dynamic> toJson() {
    return {
      'rules': rules,
      'filters': filters,
      'scrub_enabled': scrubEnabled
     };
  }

  static List<InlineResponse20013FilterFirewall> listFromJson(List<dynamic> json) {
    return json == null ? new List<InlineResponse20013FilterFirewall>() : json.map((value) => new InlineResponse20013FilterFirewall.fromJson(value)).toList();
  }

  static Map<String, InlineResponse20013FilterFirewall> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, InlineResponse20013FilterFirewall>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new InlineResponse20013FilterFirewall.fromJson(value));
    }
    return map;
  }
}
