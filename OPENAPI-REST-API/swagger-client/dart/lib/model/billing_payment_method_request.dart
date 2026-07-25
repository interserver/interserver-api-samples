part of swagger.api;

class BillingPaymentMethodRequest {
  /* Payment method identifier (cc, paypal, or cc{index}). */
  String paymentMethod = null;
/* Whether automatic credit card payments are enabled. */
  String ccAuto = null;

  BillingPaymentMethodRequest();

  @override
  String toString() {
    return 'BillingPaymentMethodRequest[paymentMethod=$paymentMethod, ccAuto=$ccAuto, ]';
  }

  BillingPaymentMethodRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    paymentMethod = json['payment_method'];
    ccAuto = json['cc_auto'];
  }

  Map<String, dynamic> toJson() {
    return {
      'payment_method': paymentMethod,
      'cc_auto': ccAuto
     };
  }

  static List<BillingPaymentMethodRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BillingPaymentMethodRequest>() : json.map((value) => new BillingPaymentMethodRequest.fromJson(value)).toList();
  }

  static Map<String, BillingPaymentMethodRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BillingPaymentMethodRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BillingPaymentMethodRequest.fromJson(value));
    }
    return map;
  }
}
