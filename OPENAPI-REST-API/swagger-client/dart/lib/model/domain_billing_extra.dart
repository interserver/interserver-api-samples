part of swagger.api;

class DomainBillingExtra {
  
  DomainOrderResponse order = null;

  String orderId = null;

  String domainId = null;

  DomainProvProcessPending provProcessPending = null;

  String email = null;

  String firstname = null;

  String lastname = null;

  String company = null;

  String address = null;

  String address2 = null;

  String address3 = null;

  String city = null;

  String state = null;

  String zip = null;

  String country = null;

  String phone = null;

  String fax = null;

  DomainBillingExtra();

  @override
  String toString() {
    return 'DomainBillingExtra[order=$order, orderId=$orderId, domainId=$domainId, provProcessPending=$provProcessPending, email=$email, firstname=$firstname, lastname=$lastname, company=$company, address=$address, address2=$address2, address3=$address3, city=$city, state=$state, zip=$zip, country=$country, phone=$phone, fax=$fax, ]';
  }

  DomainBillingExtra.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    order = new DomainOrderResponse.fromJson(json['order']);
    orderId = json['order_id'];
    domainId = json['domain_id'];
    provProcessPending = new DomainProvProcessPending.fromJson(json['provProcessPending']);
    email = json['email'];
    firstname = json['firstname'];
    lastname = json['lastname'];
    company = json['company'];
    address = json['address'];
    address2 = json['address2'];
    address3 = json['address3'];
    city = json['city'];
    state = json['state'];
    zip = json['zip'];
    country = json['country'];
    phone = json['phone'];
    fax = json['fax'];
  }

  Map<String, dynamic> toJson() {
    return {
      'order': order,
      'order_id': orderId,
      'domain_id': domainId,
      'provProcessPending': provProcessPending,
      'email': email,
      'firstname': firstname,
      'lastname': lastname,
      'company': company,
      'address': address,
      'address2': address2,
      'address3': address3,
      'city': city,
      'state': state,
      'zip': zip,
      'country': country,
      'phone': phone,
      'fax': fax
     };
  }

  static List<DomainBillingExtra> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainBillingExtra>() : json.map((value) => new DomainBillingExtra.fromJson(value)).toList();
  }

  static Map<String, DomainBillingExtra> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainBillingExtra>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainBillingExtra.fromJson(value));
    }
    return map;
  }
}
