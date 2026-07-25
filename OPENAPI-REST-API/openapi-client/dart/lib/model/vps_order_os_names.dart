//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsOrderOsNames {
  /// Returns a new [VpsOrderOsNames] instance.
  VpsOrderOsNames({
    this.opensuse,
    this.ubuntu,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? opensuse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ubuntu;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsOrderOsNames &&
    other.opensuse == opensuse &&
    other.ubuntu == ubuntu;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (opensuse == null ? 0 : opensuse!.hashCode) +
    (ubuntu == null ? 0 : ubuntu!.hashCode);

  @override
  String toString() => 'VpsOrderOsNames[opensuse=$opensuse, ubuntu=$ubuntu]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.opensuse != null) {
      json[r'opensuse'] = this.opensuse;
    } else {
      json[r'opensuse'] = null;
    }
    if (this.ubuntu != null) {
      json[r'ubuntu'] = this.ubuntu;
    } else {
      json[r'ubuntu'] = null;
    }
    return json;
  }

  /// Returns a new [VpsOrderOsNames] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsOrderOsNames? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsOrderOsNames(
        opensuse: mapValueOfType<String>(json, r'opensuse'),
        ubuntu: mapValueOfType<String>(json, r'ubuntu'),
      );
    }
    return null;
  }

  static List<VpsOrderOsNames> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderOsNames>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderOsNames.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsOrderOsNames> mapFromJson(dynamic json) {
    final map = <String, VpsOrderOsNames>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsOrderOsNames.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsOrderOsNames-objects as value to a dart map
  static Map<String, List<VpsOrderOsNames>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsOrderOsNames>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsOrderOsNames.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

