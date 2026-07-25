//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainOwnerContact {
  /// Returns a new [DomainOwnerContact] instance.
  DomainOwnerContact({
    this.postalCode,
    this.orgName,
    this.country,
    this.status,
    this.state,
    this.firstName,
    this.lastName,
    this.address3,
    this.fax,
    this.address2,
    this.email,
    this.city,
    this.phone,
    this.address1,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postalCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? country;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? firstName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address3;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fax;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? email;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? city;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? phone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address1;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainOwnerContact &&
    other.postalCode == postalCode &&
    other.orgName == orgName &&
    other.country == country &&
    other.status == status &&
    other.state == state &&
    other.firstName == firstName &&
    other.lastName == lastName &&
    other.address3 == address3 &&
    other.fax == fax &&
    other.address2 == address2 &&
    other.email == email &&
    other.city == city &&
    other.phone == phone &&
    other.address1 == address1;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (postalCode == null ? 0 : postalCode!.hashCode) +
    (orgName == null ? 0 : orgName!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (firstName == null ? 0 : firstName!.hashCode) +
    (lastName == null ? 0 : lastName!.hashCode) +
    (address3 == null ? 0 : address3!.hashCode) +
    (fax == null ? 0 : fax!.hashCode) +
    (address2 == null ? 0 : address2!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (address1 == null ? 0 : address1!.hashCode);

  @override
  String toString() => 'DomainOwnerContact[postalCode=$postalCode, orgName=$orgName, country=$country, status=$status, state=$state, firstName=$firstName, lastName=$lastName, address3=$address3, fax=$fax, address2=$address2, email=$email, city=$city, phone=$phone, address1=$address1]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.postalCode != null) {
      json[r'postal_code'] = this.postalCode;
    } else {
      json[r'postal_code'] = null;
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
    if (this.address3 != null) {
      json[r'address3'] = this.address3;
    } else {
      json[r'address3'] = null;
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
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
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
    if (this.address1 != null) {
      json[r'address1'] = this.address1;
    } else {
      json[r'address1'] = null;
    }
    return json;
  }

  /// Returns a new [DomainOwnerContact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainOwnerContact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainOwnerContact(
        postalCode: mapValueOfType<String>(json, r'postal_code'),
        orgName: mapValueOfType<String>(json, r'org_name'),
        country: mapValueOfType<String>(json, r'country'),
        status: mapValueOfType<String>(json, r'status'),
        state: mapValueOfType<String>(json, r'state'),
        firstName: mapValueOfType<String>(json, r'first_name'),
        lastName: mapValueOfType<String>(json, r'last_name'),
        address3: mapValueOfType<String>(json, r'address3'),
        fax: mapValueOfType<String>(json, r'fax'),
        address2: mapValueOfType<String>(json, r'address2'),
        email: mapValueOfType<String>(json, r'email'),
        city: mapValueOfType<String>(json, r'city'),
        phone: mapValueOfType<String>(json, r'phone'),
        address1: mapValueOfType<String>(json, r'address1'),
      );
    }
    return null;
  }

  static List<DomainOwnerContact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainOwnerContact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainOwnerContact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainOwnerContact> mapFromJson(dynamic json) {
    final map = <String, DomainOwnerContact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainOwnerContact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainOwnerContact-objects as value to a dart map
  static Map<String, List<DomainOwnerContact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainOwnerContact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainOwnerContact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

