part of swagger.api;

class WebsiteOrderPostRequest {
  /* Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist. */
  String hostname = null;
/* Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable). */
  int packageId = null;
/* Control-panel admin password. If blank, a random password is generated server-side. */
  String rootpass = "";
/* Billing cycle in months (1 / 6 / 12 / 24 / 36). */
  int period = 1;
/* Coupon code. */
  String coupon = "";
/* Promo bundle id from getNewWebsite.serviceOffers. */
  int serviceOfferId = 0;
/* Auto-installer id (0 = none). */
  int script = 0;
/* Free-form note saved on the service row. */
  String comment = "";
/* When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order. */
  bool registerDomain = false;

  WebsiteOrderPostRequest();

  @override
  String toString() {
    return 'WebsiteOrderPostRequest[hostname=$hostname, packageId=$packageId, rootpass=$rootpass, period=$period, coupon=$coupon, serviceOfferId=$serviceOfferId, script=$script, comment=$comment, registerDomain=$registerDomain, ]';
  }

  WebsiteOrderPostRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    hostname = json['hostname'];
    packageId = json['packageId'];
    rootpass = json['rootpass'];
    period = json['period'];
    coupon = json['coupon'];
    serviceOfferId = json['serviceOfferId'];
    script = json['script'];
    comment = json['comment'];
    registerDomain = json['registerDomain'];
  }

  Map<String, dynamic> toJson() {
    return {
      'hostname': hostname,
      'packageId': packageId,
      'rootpass': rootpass,
      'period': period,
      'coupon': coupon,
      'serviceOfferId': serviceOfferId,
      'script': script,
      'comment': comment,
      'registerDomain': registerDomain
     };
  }

  static List<WebsiteOrderPostRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsiteOrderPostRequest>() : json.map((value) => new WebsiteOrderPostRequest.fromJson(value)).toList();
  }

  static Map<String, WebsiteOrderPostRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsiteOrderPostRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsiteOrderPostRequest.fromJson(value));
    }
    return map;
  }
}
