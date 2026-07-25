part of swagger.api;

class DomainContactDetails {
  /* Contact status reported by the registrar. */
  String status = null;
/* State or region for the contact address. */
  String state = null;
/* Organization name for the contact. */
  String orgName = null;
/* Two-letter country code for the contact. */
  String country = null;
/* Postal or ZIP code for the contact address. */
  String postalCode = null;
/* Email address for the contact. */
  String email = null;
/* Fax number for the contact, if available. */
  String fax = null;
/* Secondary street address line. */
  String address2 = null;
/* Tertiary street address line. */
  String address3 = null;
/* Primary street address line. */
  String address1 = null;
/* City for the contact address. */
  String city = null;
/* Phone number for the contact. */
  String phone = null;
/* First name for the contact. */
  String firstName = null;
/* Last name for the contact. */
  String lastName = null;

  DomainContactDetails();

  @override
  String toString() {
    return 'DomainContactDetails[status=$status, state=$state, orgName=$orgName, country=$country, postalCode=$postalCode, email=$email, fax=$fax, address2=$address2, address3=$address3, address1=$address1, city=$city, phone=$phone, firstName=$firstName, lastName=$lastName, ]';
  }

  DomainContactDetails.fromJson(Map<String, dynamic> json) {
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

  static List<DomainContactDetails> listFromJson(List<dynamic> json) {
    return json == null ? new List<DomainContactDetails>() : json.map((value) => new DomainContactDetails.fromJson(value)).toList();
  }

  static Map<String, DomainContactDetails> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, DomainContactDetails>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new DomainContactDetails.fromJson(value));
    }
    return map;
  }
}
