part of swagger.api;

class IdVerifyBody1 {
  /* The CVV/CVC code on the back of the credit card. */
  String ccCcv2 = null;

  IdVerifyBody1();

  @override
  String toString() {
    return 'IdVerifyBody1[ccCcv2=$ccCcv2, ]';
  }

  IdVerifyBody1.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ccCcv2 = json['cc_ccv2'];
  }

  Map<String, dynamic> toJson() {
    return {
      'cc_ccv2': ccCcv2
     };
  }

  static List<IdVerifyBody1> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdVerifyBody1>() : json.map((value) => new IdVerifyBody1.fromJson(value)).toList();
  }

  static Map<String, IdVerifyBody1> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdVerifyBody1>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdVerifyBody1.fromJson(value));
    }
    return map;
  }
}
