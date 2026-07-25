part of swagger.api;

class DomainLookupResponse {
  /* Whether the domain is available to register. */
  bool available = null;
/* Whether the domain is marked as premium by the registrar. */
  bool premium = null;
/* Indicates if the domain is already used by a website service. */
  bool website = null;
/* Indicates if the domain already exists as a domain service on the account. */
  bool domainService = null;
/* Service catalog details for the domain's TLD. */
  Object service = null;
/* Whether Whois privacy is available for the TLD. */
  bool whoisPrivacy = null;
/* Calculated registration price, when available. */
  String new_ = null;
/* Calculated renewal price, when available. */
  String renewal = null;
/* Calculated transfer price, when available. */
  String transfer = null;
/* Registrar field requirements for this domain/TLD. */
  Object fields = null;
/* Pricing information normalized to supported currencies. */
  Object currencies = null;

  DomainLookupResponse();

  @override
  String toString() {
    return 'DomainLookupResponse[available=$available, premium=$premium, website=$website, domainService=$domainService, service=$service, whoisPrivacy=$whoisPrivacy, new_=$new_, renewal=$renewal, transfer=$transfer, fields=$fields, currencies=$currencies, ]';
  }

  DomainLookupResponse.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    available = json['available'];
    premium = json['premium'];
    website = json['website'];
    domainService = json['domain_service'];
    service = new Object.fromJson(json['service']);
    whoisPrivacy = json['whois_privacy'];
    new_ = json['new'];
    renewal = json['renewal'];
    transfer = json['transfer'];
    fields = new Object.fromJson(json['fields']);
    currencies = new Object.fromJson(json['currencies']);
  }

  Map<String, dynamic> toJson() {
    return {
      'available': available,
      'premium': premium,
      'website': website,
      'domain_service': domainService,
      'service': service,
      'whois_privacy': whoisPrivacy,
      'new': new_,
      'renewal': renewal,
      'transfer': transfer,
      'fields': fields,
      'currencies': currencies
     };
  }

  static List<DomainLookupResponse> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainLookupResponse>() : json.map((value) => new DomainLookupResponse.fromJson(value)).toList();
  }

  static Map<String, DomainLookupResponse> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainLookupResponse>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainLookupResponse.fromJson(value));
    }
    return map;
  }
}
