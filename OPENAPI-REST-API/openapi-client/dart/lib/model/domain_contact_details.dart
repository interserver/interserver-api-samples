//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainContactDetails {
  /// Returns a new [DomainContactDetails] instance.
  DomainContactDetails({
    this.status,
    this.state,
    this.orgName,
    this.country,
    this.postalCode,
    this.email,
    this.fax,
    this.address2,
    this.address3,
    this.address1,
    this.city,
    this.phone,
    this.firstName,
    this.lastName,
  });

  /// Contact status reported by the registrar.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// State or region for the contact address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Organization name for the contact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgName;

  /// Two-letter country code for the contact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  /// Postal or ZIP code for the contact address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postalCode;

  /// Email address for the contact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  /// Fax number for the contact, if available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fax;

  /// Secondary street address line.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address2;

  /// Tertiary street address line.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address3;

  /// Primary street address line.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address1;

  /// City for the contact address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  /// Phone number for the contact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  /// First name for the contact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  /// Last name for the contact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainContactDetails &&
    other.status == status &&
    other.state == state &&
    other.orgName == orgName &&
    other.country == country &&
    other.postalCode == postalCode &&
    other.email == email &&
    other.fax == fax &&
    other.address2 == address2 &&
    other.address3 == address3 &&
    other.address1 == address1 &&
    other.city == city &&
    other.phone == phone &&
    other.firstName == firstName &&
    other.lastName == lastName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (status == null ? 0 : status!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (orgName == null ? 0 : orgName!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (postalCode == null ? 0 : postalCode!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (fax == null ? 0 : fax!.hashCode) +
    (address2 == null ? 0 : address2!.hashCode) +
    (address3 == null ? 0 : address3!.hashCode) +
    (address1 == null ? 0 : address1!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode);

  @override
  String toString() => 'DomainContactDetails[status=$status, state=$state, orgName=$orgName, country=$country, postalCode=$postalCode, email=$email, fax=$fax, address2=$address2, address3=$address3, address1=$address1, city=$city, phone=$phone, firstName=$firstName, lastName=$lastName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.orgName != null) {
      json[r'org_name'] = this.orgName;
    } else {
      json[r'org_name'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.postalCode != null) {
      json[r'postal_code'] = this.postalCode;
    } else {
      json[r'postal_code'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.fax != null) {
      json[r'fax'] = this.fax;
    } else {
      json[r'fax'] = null;
    }
    if (this.address2 != null) {
      json[r'address2'] = this.address2;
    } else {
      json[r'address2'] = null;
    }
    if (this.address3 != null) {
      json[r'address3'] = this.address3;
    } else {
      json[r'address3'] = null;
    }
    if (this.address1 != null) {
      json[r'address1'] = this.address1;
    } else {
      json[r'address1'] = null;
    }
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.firstName != null) {
      json[r'first_name'] = this.firstName;
    } else {
      json[r'first_name'] = null;
    }
    if (this.lastName != null) {
      json[r'last_name'] = this.lastName;
    } else {
      json[r'last_name'] = null;
    }
    return json;
  }

  /// Returns a new [DomainContactDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainContactDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainContactDetails(
        status: mapValueOfType<String>(json, r'status'),
        state: mapValueOfType<String>(json, r'state'),
        orgName: mapValueOfType<String>(json, r'org_name'),
        country: mapValueOfType<String>(json, r'country'),
        postalCode: mapValueOfType<String>(json, r'postal_code'),
        email: mapValueOfType<String>(json, r'email'),
        fax: mapValueOfType<String>(json, r'fax'),
        address2: mapValueOfType<String>(json, r'address2'),
        address3: mapValueOfType<String>(json, r'address3'),
        address1: mapValueOfType<String>(json, r'address1'),
        city: mapValueOfType<String>(json, r'city'),
        phone: mapValueOfType<String>(json, r'phone'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
      );
    }
    return null;
  }

  static List<DomainContactDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainContactDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainContactDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainContactDetails> mapFromJson(dynamic json) {
    final map = <String, DomainContactDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainContactDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainContactDetails-objects as value to a dart map
  static Map<String, List<DomainContactDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainContactDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainContactDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

