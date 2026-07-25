//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BillingAddCcRequest {
  /// Returns a new [BillingAddCcRequest] instance.
  BillingAddCcRequest({
    this.name,
    this.address,
    this.city,
    this.state,
    this.country,
    this.zip,
    this.cc,
    this.ccExp,
    this.ccCcv2,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

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
  String? country;

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
  String? cc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ccExp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ccCcv2;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BillingAddCcRequest &&
    other.name == name &&
    other.address == address &&
    other.city == city &&
    other.state == state &&
    other.country == country &&
    other.zip == zip &&
    other.cc == cc &&
    other.ccExp == ccExp &&
    other.ccCcv2 == ccCcv2;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (zip == null ? 0 : zip!.hashCode) +
    (cc == null ? 0 : cc!.hashCode) +
    (ccExp == null ? 0 : ccExp!.hashCode) +
    (ccCcv2 == null ? 0 : ccCcv2!.hashCode);

  @override
  String toString() => 'BillingAddCcRequest[name=$name, address=$address, city=$city, state=$state, country=$country, zip=$zip, cc=$cc, ccExp=$ccExp, ccCcv2=$ccCcv2]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
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
    if (this.country != null) {
      json[r'country'] = this.country;
    } else {
      json[r'country'] = null;
    }
    if (this.zip != null) {
      json[r'zip'] = this.zip;
    } else {
      json[r'zip'] = null;
    }
    if (this.cc != null) {
      json[r'cc'] = this.cc;
    } else {
      json[r'cc'] = null;
    }
    if (this.ccExp != null) {
      json[r'cc_exp'] = this.ccExp;
    } else {
      json[r'cc_exp'] = null;
    }
    if (this.ccCcv2 != null) {
      json[r'cc_ccv2'] = this.ccCcv2;
    } else {
      json[r'cc_ccv2'] = null;
    }
    return json;
  }

  /// Returns a new [BillingAddCcRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BillingAddCcRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BillingAddCcRequest(
        name: mapValueOfType<String>(json, r'name'),
        address: mapValueOfType<String>(json, r'address'),
        city: mapValueOfType<String>(json, r'city'),
        state: mapValueOfType<String>(json, r'state'),
        country: mapValueOfType<String>(json, r'country'),
        zip: mapValueOfType<String>(json, r'zip'),
        cc: mapValueOfType<String>(json, r'cc'),
        ccExp: mapValueOfType<String>(json, r'cc_exp'),
        ccCcv2: mapValueOfType<String>(json, r'cc_ccv2'),
      );
    }
    return null;
  }

  static List<BillingAddCcRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BillingAddCcRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BillingAddCcRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BillingAddCcRequest> mapFromJson(dynamic json) {
    final map = <String, BillingAddCcRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BillingAddCcRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BillingAddCcRequest-objects as value to a dart map
  static Map<String, List<BillingAddCcRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BillingAddCcRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BillingAddCcRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

