part of swagger.api;

class BillingAddCcRequest {
  
  String name = null;

  String address = null;

  String city = null;

  String state = null;

  String country = null;

  String zip = null;

  String cc = null;

  String ccExp = null;

  String ccCcv2 = null;

  BillingAddCcRequest();

  @override
  String toString() {
    return 'BillingAddCcRequest[name=$name, address=$address, city=$city, state=$state, country=$country, zip=$zip, cc=$cc, ccExp=$ccExp, ccCcv2=$ccCcv2, ]';
  }

  BillingAddCcRequest.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    name = json['name'];
    address = json['address'];
    city = json['city'];
    state = json['state'];
    country = json['country'];
    zip = json['zip'];
    cc = json['cc'];
    ccExp = json['cc_exp'];
    ccCcv2 = json['cc_ccv2'];
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'address': address,
      'city': city,
      'state': state,
      'country': country,
      'zip': zip,
      'cc': cc,
      'cc_exp': ccExp,
      'cc_ccv2': ccCcv2
     };
  }

  static List<BillingAddCcRequest> listFromJson(List<dynamic> json) {
    return json == null ? new List<BillingAddCcRequest>() : json.map((value) => new BillingAddCcRequest.fromJson(value)).toList();
  }

  static Map<String, BillingAddCcRequest> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BillingAddCcRequest>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BillingAddCcRequest.fromJson(value));
    }
    return map;
  }
}
