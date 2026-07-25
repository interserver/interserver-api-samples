part of swagger.api;

class CreateGeoFirewallRule {
  
  int destinationPort = 80;
/* To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode */
  int countryCode = null;
/* ASN number */
  int asn = null;
/* 1 = Block,  0 = Whitelist */
  int xdpAction = null;
  //enum xdpActionEnum {  0,  1,  };

  CreateGeoFirewallRule();

  @override
  String toString() {
    return 'CreateGeoFirewallRule[destinationPort=$destinationPort, countryCode=$countryCode, asn=$asn, xdpAction=$xdpAction, ]';
  }

  CreateGeoFirewallRule.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    destinationPort = json['destination_port'];
    countryCode = json['country_code'];
    asn = json['asn'];
    xdpAction = json['xdp_action'];
  }

  Map<String, dynamic> toJson() {
    return {
      'destination_port': destinationPort,
      'country_code': countryCode,
      'asn': asn,
      'xdp_action': xdpAction
     };
  }

  static List<CreateGeoFirewallRule> listFromJson(List<dynamic> json) {
    return json == null ? new List<CreateGeoFirewallRule>() : json.map((value) => new CreateGeoFirewallRule.fromJson(value)).toList();
  }

  static Map<String, CreateGeoFirewallRule> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, CreateGeoFirewallRule>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new CreateGeoFirewallRule.fromJson(value));
    }
    return map;
  }
}
