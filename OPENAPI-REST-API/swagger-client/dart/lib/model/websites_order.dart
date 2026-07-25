part of swagger.api;

class WebsitesOrder {
  /* Step description */
  String step = null;
/* Website description */
  String website = null;
/* Period description */
  int period = null;
/* Service offer ID description */
  int serviceOfferId = null;

  WebsitesOrderPackages packages = null;
/* Enable domain registering description */
  bool enableDomainRegistering = null;

  WebsitesOrderJsonServices jsonServices = null;

  WebsitesOrderJsonServiceOffers jsonServiceOffers = null;

  WebsitesOrderServiceTypes serviceTypes = null;

  WebsitesOrderServiceOffers serviceOffers = null;

  WebsitesOrderPackges packges = null;

  WebsitesOrder();

  @override
  String toString() {
    return 'WebsitesOrder[step=$step, website=$website, period=$period, serviceOfferId=$serviceOfferId, packages=$packages, enableDomainRegistering=$enableDomainRegistering, jsonServices=$jsonServices, jsonServiceOffers=$jsonServiceOffers, serviceTypes=$serviceTypes, serviceOffers=$serviceOffers, packges=$packges, ]';
  }

  WebsitesOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    step = json['step'];
    website = json['website'];
    period = json['period'];
    serviceOfferId = json['serviceOfferId'];
    packages = new WebsitesOrderPackages.fromJson(json['packages']);
    enableDomainRegistering = json['enableDomainRegistering'];
    jsonServices = new WebsitesOrderJsonServices.fromJson(json['jsonServices']);
    jsonServiceOffers = new WebsitesOrderJsonServiceOffers.fromJson(json['jsonServiceOffers']);
    serviceTypes = new WebsitesOrderServiceTypes.fromJson(json['serviceTypes']);
    serviceOffers = new WebsitesOrderServiceOffers.fromJson(json['serviceOffers']);
    packges = new WebsitesOrderPackges.fromJson(json['packges']);
  }

  Map<String, dynamic> toJson() {
    return {
      'step': step,
      'website': website,
      'period': period,
      'serviceOfferId': serviceOfferId,
      'packages': packages,
      'enableDomainRegistering': enableDomainRegistering,
      'jsonServices': jsonServices,
      'jsonServiceOffers': jsonServiceOffers,
      'serviceTypes': serviceTypes,
      'serviceOffers': serviceOffers,
      'packges': packges
     };
  }

  static List<WebsitesOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrder>() : json.map((value) => new WebsitesOrder.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrder.fromJson(value));
    }
    return map;
  }
}
