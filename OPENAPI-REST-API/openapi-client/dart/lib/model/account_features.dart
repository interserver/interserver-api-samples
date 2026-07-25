//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountFeatures {
  /// Returns a new [AccountFeatures] instance.
  AccountFeatures({
    this.disableReset,
    this.disableReinstall,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? disableReset;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? disableReinstall;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountFeatures &&
    other.disableReset == disableReset &&
    other.disableReinstall == disableReinstall;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disableReset == null ? 0 : disableReset!.hashCode) +
    (disableReinstall == null ? 0 : disableReinstall!.hashCode);

  @override
  String toString() => 'AccountFeatures[disableReset=$disableReset, disableReinstall=$disableReinstall]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disableReset != null) {
      json[r'disable_reset'] = this.disableReset;
    } else {
      json[r'disable_reset'] = null;
    }
    if (this.disableReinstall != null) {
      json[r'disable_reinstall'] = this.disableReinstall;
    } else {
      json[r'disable_reinstall'] = null;
    }
    return json;
  }

  /// Returns a new [AccountFeatures] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountFeatures? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AccountFeatures(
        disableReset: mapValueOfType<int>(json, r'disable_reset'),
        disableReinstall: mapValueOfType<int>(json, r'disable_reinstall'),
      );
    }
    return null;
  }

  static List<AccountFeatures> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountFeatures>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountFeatures.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountFeatures> mapFromJson(dynamic json) {
    final map = <String, AccountFeatures>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountFeatures.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountFeatures-objects as value to a dart map
  static Map<String, List<AccountFeatures>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountFeatures>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountFeatures.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

