//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountInfoDataCc {
  /// Returns a new [AccountInfoDataCc] instance.
  AccountInfoDataCc({
    this.cc,
    this.ccExp,
    this.name,
    this.address,
    this.city,
    this.state,
    this.zip,
    this.country,
    this.maxmindRiskscore,
    this.maxmind,
    this.verified,
  });

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
  String? maxmindRiskscore;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AccountInfoMaxMindResponse? maxmind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? verified;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountInfoDataCc &&
    other.cc == cc &&
    other.ccExp == ccExp &&
    other.name == name &&
    other.address == address &&
    other.city == city &&
    other.state == state &&
    other.zip == zip &&
    other.country == country &&
    other.maxmindRiskscore == maxmindRiskscore &&
    other.maxmind == maxmind &&
    other.verified == verified;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cc == null ? 0 : cc!.hashCode) +
    (ccExp == null ? 0 : ccExp!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (address == null ? 0 : address!.hashCode) +
    (city == null ? 0 : city!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (zip == null ? 0 : zip!.hashCode) +
    (country == null ? 0 : country!.hashCode) +
    (maxmindRiskscore == null ? 0 : maxmindRiskscore!.hashCode) +
    (maxmind == null ? 0 : maxmind!.hashCode) +
    (verified == null ? 0 : verified!.hashCode);

  @override
  String toString() => 'AccountInfoDataCc[cc=$cc, ccExp=$ccExp, name=$name, address=$address, city=$city, state=$state, zip=$zip, country=$country, maxmindRiskscore=$maxmindRiskscore, maxmind=$maxmind, verified=$verified]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.maxmindRiskscore != null) {
      json[r'maxmind_riskscore'] = this.maxmindRiskscore;
    } else {
      json[r'maxmind_riskscore'] = null;
    }
    if (this.maxmind != null) {
      json[r'maxmind'] = this.maxmind;
    } else {
      json[r'maxmind'] = null;
    }
    if (this.verified != null) {
      json[r'verified'] = this.verified;
    } else {
      json[r'verified'] = null;
    }
    return json;
  }

  /// Returns a new [AccountInfoDataCc] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountInfoDataCc? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AccountInfoDataCc(
        cc: mapValueOfType<String>(json, r'cc'),
        ccExp: mapValueOfType<String>(json, r'cc_exp'),
        name: mapValueOfType<String>(json, r'name'),
        address: mapValueOfType<String>(json, r'address'),
        city: mapValueOfType<String>(json, r'city'),
        state: mapValueOfType<String>(json, r'state'),
        zip: mapValueOfType<String>(json, r'zip'),
        country: mapValueOfType<String>(json, r'country'),
        maxmindRiskscore: mapValueOfType<String>(json, r'maxmind_riskscore'),
        maxmind: AccountInfoMaxMindResponse.fromJson(json[r'maxmind']),
        verified: mapValueOfType<bool>(json, r'verified'),
      );
    }
    return null;
  }

  static List<AccountInfoDataCc> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountInfoDataCc>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountInfoDataCc.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountInfoDataCc> mapFromJson(dynamic json) {
    final map = <String, AccountInfoDataCc>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountInfoDataCc.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountInfoDataCc-objects as value to a dart map
  static Map<String, List<AccountInfoDataCc>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountInfoDataCc>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountInfoDataCc.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

