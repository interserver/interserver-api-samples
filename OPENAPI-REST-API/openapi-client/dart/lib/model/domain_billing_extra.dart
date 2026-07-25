//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainBillingExtra {
  /// Returns a new [DomainBillingExtra] instance.
  DomainBillingExtra({
    this.order,
    this.orderId,
    this.domainId,
    this.provProcessPending,
    this.email,
    this.firstname,
    this.lastname,
    this.company,
    this.address,
    this.address2,
    this.address3,
    this.city,
    this.state,
    this.zip,
    this.country,
    this.phone,
    this.fax,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainOrderResponse? order;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orderId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainProvProcessPending? provProcessPending;

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
  String? firstname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? company;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

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
  String? address3;

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
  String? state;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? zip;

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
  String? phone;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fax;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainBillingExtra &&
    other.order == order &&
    other.orderId == orderId &&
    other.domainId == domainId &&
    other.provProcessPending == provProcessPending &&
    other.email == email &&
    other.firstname == firstname &&
    other.lastname == lastname &&
    other.company == company &&
    other.address == address &&
    other.address2 == address2 &&
    other.address3 == address3 &&
    other.city == city &&
    other.state == state &&
    other.zip == zip &&
    other.country == country &&
    other.phone == phone &&
    other.fax == fax;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (order == null ? 0 : order!.hashCode) +
    (orderId == null ? 0 : orderId!.hashCode) +
    (domainId == null ? 0 : domainId!.hashCode) +
    (provProcessPending == null ? 0 : provProcessPending!.hashCode) +
    (email == null ? 0 : email!.hashCode) +
    (firstname == null ? 0 : firstname!.hashCode) +
    (lastname == null ? 0 : lastname!.hashCode) +
    (company == null ? 0 : company!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (address2 == null ? 0 : address2!.hashCode) +
    (address3 == null ? 0 : address3!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (zip == null ? 0 : zip!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (phone == null ? 0 : phone!.hashCode) +
    (fax == null ? 0 : fax!.hashCode);

  @override
  String toString() => 'DomainBillingExtra[order=$order, orderId=$orderId, domainId=$domainId, provProcessPending=$provProcessPending, email=$email, firstname=$firstname, lastname=$lastname, company=$company, address=$address, address2=$address2, address3=$address3, city=$city, state=$state, zip=$zip, country=$country, phone=$phone, fax=$fax]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.order != null) {
      json[r'order'] = this.order;
    } else {
      json[r'order'] = null;
    }
    if (this.orderId != null) {
      json[r'order_id'] = this.orderId;
    } else {
      json[r'order_id'] = null;
    }
    if (this.domainId != null) {
      json[r'domain_id'] = this.domainId;
    } else {
      json[r'domain_id'] = null;
    }
    if (this.provProcessPending != null) {
      json[r'provProcessPending'] = this.provProcessPending;
    } else {
      json[r'provProcessPending'] = null;
    }
    if (this.email != null) {
      json[r'email'] = this.email;
    } else {
      json[r'email'] = null;
    }
    if (this.firstname != null) {
      json[r'firstname'] = this.firstname;
    } else {
      json[r'firstname'] = null;
    }
    if (this.lastname != null) {
      json[r'lastname'] = this.lastname;
    } else {
      json[r'lastname'] = null;
    }
    if (this.company != null) {
      json[r'company'] = this.company;
    } else {
      json[r'company'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
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
    if (this.city != null) {
      json[r'city'] = this.city;
    } else {
      json[r'city'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.zip != null) {
      json[r'zip'] = this.zip;
    } else {
      json[r'zip'] = null;
    }
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.phone != null) {
      json[r'phone'] = this.phone;
    } else {
      json[r'phone'] = null;
    }
    if (this.fax != null) {
      json[r'fax'] = this.fax;
    } else {
      json[r'fax'] = null;
    }
    return json;
  }

  /// Returns a new [DomainBillingExtra] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainBillingExtra? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainBillingExtra(
        order: DomainOrderResponse.fromJson(json[r'order']),
        orderId: mapValueOfType<String>(json, r'order_id'),
        domainId: mapValueOfType<String>(json, r'domain_id'),
        provProcessPending: DomainProvProcessPending.fromJson(json[r'provProcessPending']),
        email: mapValueOfType<String>(json, r'email'),
        firstname: mapValueOfType<String>(json, r'firstname'),
        lastname: mapValueOfType<String>(json, r'lastname'),
        company: mapValueOfType<String>(json, r'company'),
        address: mapValueOfType<String>(json, r'address'),
        address2: mapValueOfType<String>(json, r'address2'),
        address3: mapValueOfType<String>(json, r'address3'),
        city: mapValueOfType<String>(json, r'city'),
        state: mapValueOfType<String>(json, r'state'),
        zip: mapValueOfType<String>(json, r'zip'),
        country: mapValueOfType<String>(json, r'country'),
        phone: mapValueOfType<String>(json, r'phone'),
        fax: mapValueOfType<String>(json, r'fax'),
      );
    }
    return null;
  }

  static List<DomainBillingExtra> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainBillingExtra>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainBillingExtra.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainBillingExtra> mapFromJson(dynamic json) {
    final map = <String, DomainBillingExtra>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainBillingExtra.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainBillingExtra-objects as value to a dart map
  static Map<String, List<DomainBillingExtra>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainBillingExtra>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainBillingExtra.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

