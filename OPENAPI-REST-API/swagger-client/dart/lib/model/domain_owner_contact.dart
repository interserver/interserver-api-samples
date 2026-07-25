part of swagger.api;

class DomainOwnerContact {
  
  String postalCode = null;

  String orgName = null;

  String country = null;

  String status = null;

  String state = null;

  String firstName = null;

  String lastName = null;

  String address3 = null;

  String fax = null;

  String address2 = null;

  String email = null;

  String city = null;

  String phone = null;

  String address1 = null;

  DomainOwnerContact();

  @override
  String toString() {
    return 'DomainOwnerContact[postalCode=$postalCode, orgName=$orgName, country=$country, status=$status, state=$state, firstName=$firstName, lastName=$lastName, address3=$address3, fax=$fax, address2=$address2, email=$email, city=$city, phone=$phone, address1=$address1, ]';
  }

  DomainOwnerContact.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    postalCode = json['postal_code'];
    orgName = json['org_name'];
    country = json['country'];
    status = json['status'];
    state = json['state'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    address3 = json['address3'];
    fax = json['fax'];
    address2 = json['address2'];
    email = json['email'];
    city = json['city'];
    phone = json['phone'];
    address1 = json['address1'];
  }

  Map<String, dynamic> toJson() {
    return {
      'postal_code': postalCode,
      'org_name': orgName,
      'country': country,
      'status': status,
      'state': state,
      'first_name': firstName,
      'last_name': lastName,
      'address3': address3,
      'fax': fax,
      'address2': address2,
      'email': email,
      'city': city,
      'phone': phone,
      'address1': address1
     };
  }

  static List<DomainOwnerContact> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainOwnerContact>() : json.map((value) => new DomainOwnerContact.fromJson(value)).toList();
  }

  static Map<String, DomainOwnerContact> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainOwnerContact>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainOwnerContact.fromJson(value));
    }
    return map;
  }
}
