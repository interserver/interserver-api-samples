part of swagger.api;

class IdVerifyBody {
  /* The CVV/CVC code on the back of the credit card. */
  String ccCcv2 = null;

  IdVerifyBody();

  @override
  String toString() {
    return 'IdVerifyBody[ccCcv2=$ccCcv2, ]';
  }

  IdVerifyBody.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    ccCcv2 = json['cc_ccv2'];
  }

  Map<String, dynamic> toJson() {
    return {
      'cc_ccv2': ccCcv2
     };
  }

  static List<IdVerifyBody> listFromJson(List<dynamic> json) {
    return json == null ? new List<IdVerifyBody>() : json.map((value) => new IdVerifyBody.fromJson(value)).toList();
  }

  static Map<String, IdVerifyBody> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, IdVerifyBody>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new IdVerifyBody.fromJson(value));
    }
    return map;
  }
}
