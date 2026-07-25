part of swagger.api;

class BillingPrepayRequest {
  /* Module the prepay should be applied to (for example `default`). */
  String module = null;
/* Amount to add to prepay balance. Minimum is $10. */
  double amount = null;
/* Whether the prepay balance should be used automatically. */
  String automaticUse = null;

  BillingPrepayRequest();

  @override
  String toString() {
    return 'BillingPrepayRequest[module=$module, amount=$amount, automaticUse=$automaticUse, ]';
  }

  BillingPrepayRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    module = json['module'];
    amount = json['amount'];
    automaticUse = json['automatic_use'];
  }

  Map<String, dynamic> toJson() {
    return {
      'module': module,
      'amount': amount,
      'automatic_use': automaticUse
     };
  }

  static List<BillingPrepayRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BillingPrepayRequest>() : json.map((value) => new BillingPrepayRequest.fromJson(value)).toList();
  }

  static Map<String, BillingPrepayRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BillingPrepayRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BillingPrepayRequest.fromJson(value));
    }
    return map;
  }
}
