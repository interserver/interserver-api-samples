part of swagger.api;

class WebsitesOrderServiceOffer {
  /* The ID of the service offer. */
  String serviceOfferId = null;
/* The ID of the associated service. */
  String serviceId = null;
/* The introductory cost of the service offer. */
  String introCost = null;
/* The renewal cost of the service offer. */
  String renewalCost = null;
/* The introductory frequency of the service offer. */
  String introFrequency = null;
/* The renewal frequency of the service offer. */
  String renewalFrequency = null;
/* Indicates if coupons are allowed (1 for yes, 0 for no). */
  String allowCoupon = null;
/* The module of the service offer. */
  String serviceModule = null;
/* The creation timestamp of the service offer. */
  String createdAt = null;
/* The update timestamp of the service offer. */
  String updatedAt = null;
/* The deletion timestamp of the service offer. */
  String deletedAt = null;

  WebsitesOrderServiceOffer();

  @override
  String toString() {
    return 'WebsitesOrderServiceOffer[serviceOfferId=$serviceOfferId, serviceId=$serviceId, introCost=$introCost, renewalCost=$renewalCost, introFrequency=$introFrequency, renewalFrequency=$renewalFrequency, allowCoupon=$allowCoupon, serviceModule=$serviceModule, createdAt=$createdAt, updatedAt=$updatedAt, deletedAt=$deletedAt, ]';
  }

  WebsitesOrderServiceOffer.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    serviceOfferId = json['service_offer_id'];
    serviceId = json['service_id'];
    introCost = json['intro_cost'];
    renewalCost = json['renewal_cost'];
    introFrequency = json['intro_frequency'];
    renewalFrequency = json['renewal_frequency'];
    allowCoupon = json['allow_coupon'];
    serviceModule = json['service_module'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    deletedAt = json['deleted_at'];
  }

  Map<String, dynamic> toJson() {
    return {
      'service_offer_id': serviceOfferId,
      'service_id': serviceId,
      'intro_cost': introCost,
      'renewal_cost': renewalCost,
      'intro_frequency': introFrequency,
      'renewal_frequency': renewalFrequency,
      'allow_coupon': allowCoupon,
      'service_module': serviceModule,
      'created_at': createdAt,
      'updated_at': updatedAt,
      'deleted_at': deletedAt
     };
  }

  static List<WebsitesOrderServiceOffer> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrderServiceOffer>() : json.map((value) => new WebsitesOrderServiceOffer.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrderServiceOffer> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrderServiceOffer>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrderServiceOffer.fromJson(value));
    }
    return map;
  }
}
