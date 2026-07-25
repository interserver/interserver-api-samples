//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountSshKey {
  /// Returns a new [AccountSshKey] instance.
  AccountSshKey({
    this.sshKey,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sshKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountSshKey &&
    other.sshKey == sshKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sshKey == null ? 0 : sshKey!.hashCode);

  @override
  String toString() => 'AccountSshKey[sshKey=$sshKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sshKey != null) {
      json[r'ssh_key'] = this.sshKey;
    } else {
      json[r'ssh_key'] = null;
    }
    return json;
  }

  /// Returns a new [AccountSshKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountSshKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AccountSshKey(
        sshKey: mapValueOfType<String>(json, r'ssh_key'),
      );
    }
    return null;
  }

  static List<AccountSshKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountSshKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountSshKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountSshKey> mapFromJson(dynamic json) {
    final map = <String, AccountSshKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountSshKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountSshKey-objects as value to a dart map
  static Map<String, List<AccountSshKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountSshKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountSshKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

