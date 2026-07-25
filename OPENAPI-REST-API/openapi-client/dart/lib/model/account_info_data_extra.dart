//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountInfoDataExtra {
  /// Returns a new [AccountInfoDataExtra] instance.
  AccountInfoDataExtra({
    this.privateWhois,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? privateWhois;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountInfoDataExtra &&
    other.privateWhois == privateWhois;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (privateWhois == null ? 0 : privateWhois!.hashCode);

  @override
  String toString() => 'AccountInfoDataExtra[privateWhois=$privateWhois]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.privateWhois != null) {
      json[r'private_whois'] = this.privateWhois;
    } else {
      json[r'private_whois'] = null;
    }
    return json;
  }

  /// Returns a new [AccountInfoDataExtra] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountInfoDataExtra? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AccountInfoDataExtra(
        privateWhois: mapValueOfType<String>(json, r'private_whois'),
      );
    }
    return null;
  }

  static List<AccountInfoDataExtra> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountInfoDataExtra>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountInfoDataExtra.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountInfoDataExtra> mapFromJson(dynamic json) {
    final map = <String, AccountInfoDataExtra>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountInfoDataExtra.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountInfoDataExtra-objects as value to a dart map
  static Map<String, List<AccountInfoDataExtra>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountInfoDataExtra>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountInfoDataExtra.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

