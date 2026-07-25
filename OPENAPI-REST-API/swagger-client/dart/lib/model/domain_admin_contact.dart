part of swagger.api;

class DomainAdminContact {
  
  String status = null;

  String state = null;

  String orgName = null;

  String country = null;

  String postalCode = null;

  String email = null;

  String fax = null;

  String address2 = null;

  String address3 = null;

  String address1 = null;

  String city = null;

  String phone = null;

  String firstName = null;

  String lastName = null;

  DomainAdminContact();

  @override
  String toString() {
    return 'DomainAdminContact[status=$status, state=$state, orgName=$orgName, country=$country, postalCode=$postalCode, email=$email, fax=$fax, address2=$address2, address3=$address3, address1=$address1, city=$city, phone=$phone, firstName=$firstName, lastName=$lastName, ]';
  }

  DomainAdminContact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    status = json['status'];
    state = json['state'];
    orgName = json['org_name'];
    country = json['country'];
    postalCode = json['postal_code'];
    email = json['email'];
    fax = json['fax'];
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
      'status': status,
      'state': state,
      'org_name': orgName,
      'country': country,
      'postal_code': postalCode,
      'email': email,
      'fax': fax,
      'address2': address2,
      'address3': address3,
      'address1': address1,
      'city': city,
      'phone': phone,
      'first_name': firstName,
      'last_name': lastName
     };
  }

  static List<DomainAdminContact> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainAdminContact>() : json.map((value) => new DomainAdminContact.fromJson(value)).toList();
  }

  static Map<String, DomainAdminContact> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainAdminContact>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainAdminContact.fromJson(value));
    }
    return map;
  }
}
