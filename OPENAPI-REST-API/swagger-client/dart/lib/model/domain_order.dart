part of swagger.api;

class DomainOrder {
  /* Cost of Whois Privacy */
  String whoisPrivacyCost = null;

  DomainOrderServices services = null;
/* Map of TLDs to domain service IDs. */
  Object tldServices = null;

  DomainOrder();

  @override
  String toString() {
    return 'DomainOrder[whoisPrivacyCost=$whoisPrivacyCost, services=$services, tldServices=$tldServices, ]';
  }

  DomainOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    whoisPrivacyCost = json['whoisPrivacyCost'];
    services = new DomainOrderServices.fromJson(json['services']);
    tldServices = new Object.fromJson(json['tldServices']);
  }

  Map<String, dynamic> toJson() {
    return {
      'whoisPrivacyCost': whoisPrivacyCost,
      'services': services,
      'tldServices': tldServices
     };
  }

  static List<DomainOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainOrder>() : json.map((value) => new DomainOrder.fromJson(value)).toList();
  }

  static Map<String, DomainOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainOrder.fromJson(value));
    }
    return map;
  }
}
