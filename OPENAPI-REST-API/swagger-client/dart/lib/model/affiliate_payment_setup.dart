part of swagger.api;

class AffiliatePaymentSetup {
  
  String affiliatePaypal = null;

  String affiliatePaymentMethod = null;

  AffiliatePaymentSetup();

  @override
  String toString() {
    return 'AffiliatePaymentSetup[affiliatePaypal=$affiliatePaypal, affiliatePaymentMethod=$affiliatePaymentMethod, ]';
  }

  AffiliatePaymentSetup.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    affiliatePaypal = json['affiliate_paypal'];
    affiliatePaymentMethod = json['affiliate_payment_method'];
  }

  Map<String, dynamic> toJson() {
    return {
      'affiliate_paypal': affiliatePaypal,
      'affiliate_payment_method': affiliatePaymentMethod
     };
  }

  static List<AffiliatePaymentSetup> listFromJson(List<dynamic> json) {
    return json == null ? new List<AffiliatePaymentSetup>() : json.map((value) => new AffiliatePaymentSetup.fromJson(value)).toList();
  }

  static Map<String, AffiliatePaymentSetup> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, AffiliatePaymentSetup>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new AffiliatePaymentSetup.fromJson(value));
    }
    return map;
  }
}
