part of swagger.api;

class DomainTechContact {
  
  String state = null;

  String status = null;

  String orgName = null;

  String country = null;

  String postalCode = null;

  String fax = null;

  String email = null;

  String address2 = null;

  String address3 = null;

  String address1 = null;

  String city = null;

  String phone = null;

  String firstName = null;

  String lastName = null;

  DomainTechContact();

  @override
  String toString() {
    return 'DomainTechContact[state=$state, status=$status, orgName=$orgName, country=$country, postalCode=$postalCode, fax=$fax, email=$email, address2=$address2, address3=$address3, address1=$address1, city=$city, phone=$phone, firstName=$firstName, lastName=$lastName, ]';
  }

  DomainTechContact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    state = json['state'];
    status = json['status'];
    orgName = json['org_name'];
    country = json['country'];
    postalCode = json['postal_code'];
    fax = json['fax'];
    email = json['email'];
    address2 = json['address2'];
    address3 = json['address3'];
    address1 = json['address1'];
    city = json['city'];
    phone = json['phone'];
    firstName = json['first_name'];
    lastName = json['last_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'state': state,
      'status': status,
      'org_name': orgName,
      'country': country,
      'postal_code': postalCode,
      'fax': fax,
      'email': email,
      'address2': address2,
      'address3': address3,
      'address1': address1,
      'city': city,
      'phone': phone,
      'first_name': firstName,
      'last_name': lastName
     };
  }

  static List<DomainTechContact> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainTechContact>() : json.map((value) => new DomainTechContact.fromJson(value)).toList();
  }

  static Map<String, DomainTechContact> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainTechContact>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainTechContact.fromJson(value));
    }
    return map;
  }
}
