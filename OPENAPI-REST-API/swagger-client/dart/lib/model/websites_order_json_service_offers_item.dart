part of swagger.api;

class WebsitesOrderJsonServiceOffersItem {
  /* Service offer ID */
  String serviceOfferId = null;
/* Service ID */
  String serviceId = null;
/* Introductory cost */
  int introCost = null;
/* Renewal cost */
  int renewalCost = null;
/* Introductory frequency */
  String introFrequency = null;
/* Renewal frequency */
  String renewalFrequency = null;
/* Allow coupon */
  String allowCoupon = null;
/* Service module */
  String serviceModule = null;
/* Creation date */
  String createdAt = null;
/* Update date */
  String updatedAt = null;
/* Deletion date */
  String deletedAt = null;
/* Currency symbol */
  String currencySymbol = null;

  WebsitesOrderJsonServiceOffersItem();

  @override
  String toString() {
    return 'WebsitesOrderJsonServiceOffersItem[serviceOfferId=$serviceOfferId, serviceId=$serviceId, introCost=$introCost, renewalCost=$renewalCost, introFrequency=$introFrequency, renewalFrequency=$renewalFrequency, allowCoupon=$allowCoupon, serviceModule=$serviceModule, createdAt=$createdAt, updatedAt=$updatedAt, deletedAt=$deletedAt, currencySymbol=$currencySymbol, ]';
  }

  WebsitesOrderJsonServiceOffersItem.fromJson(Map<String, dynamic> json) {
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
    currencySymbol = json['currencySymbol'];
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
      'deleted_at': deletedAt,
      'currencySymbol': currencySymbol
     };
  }

  static List<WebsitesOrderJsonServiceOffersItem> listFromJson(List<dynamic> json) {
    return json == null ? new List<WebsitesOrderJsonServiceOffersItem>() : json.map((value) => new WebsitesOrderJsonServiceOffersItem.fromJson(value)).toList();
  }

  static Map<String, WebsitesOrderJsonServiceOffersItem> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, WebsitesOrderJsonServiceOffersItem>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new WebsitesOrderJsonServiceOffersItem.fromJson(value));
    }
    return map;
  }
}
