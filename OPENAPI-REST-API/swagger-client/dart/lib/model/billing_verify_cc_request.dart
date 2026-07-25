part of swagger.api;

class BillingVerifyCcRequest {
  /* Card index to verify. */
  int idx = null;
/* CVV code for verification. */
  String ccCcv2 = null;
/* First micro-charge amount for verification. */
  String ccAmount1 = null;
/* Second micro-charge amount for verification. */
  String ccAmount2 = null;
/* Whether terms were accepted for verification. */
  bool terms = null;

  BillingVerifyCcRequest();

  @override
  String toString() {
    return 'BillingVerifyCcRequest[idx=$idx, ccCcv2=$ccCcv2, ccAmount1=$ccAmount1, ccAmount2=$ccAmount2, terms=$terms, ]';
  }

  BillingVerifyCcRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    idx = json['idx'];
    ccCcv2 = json['cc_ccv2'];
    ccAmount1 = json['cc_amount1'];
    ccAmount2 = json['cc_amount2'];
    terms = json['terms'];
  }

  Map<String, dynamic> toJson() {
    return {
      'idx': idx,
      'cc_ccv2': ccCcv2,
      'cc_amount1': ccAmount1,
      'cc_amount2': ccAmount2,
      'terms': terms
     };
  }

  static List<BillingVerifyCcRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BillingVerifyCcRequest>() : json.map((value) => new BillingVerifyCcRequest.fromJson(value)).toList();
  }

  static Map<String, BillingVerifyCcRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BillingVerifyCcRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BillingVerifyCcRequest.fromJson(value));
    }
    return map;
  }
}
