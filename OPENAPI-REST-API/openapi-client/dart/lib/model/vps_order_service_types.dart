//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsOrderServiceTypes {
  /// Returns a new [VpsOrderServiceTypes] instance.
  VpsOrderServiceTypes({
    this.n32,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VpsOrderServiceTypes32? n32;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsOrderServiceTypes &&
    other.n32 == n32;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n32 == null ? 0 : n32!.hashCode);

  @override
  String toString() => 'VpsOrderServiceTypes[n32=$n32]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n32 != null) {
      json[r'32'] = this.n32;
    } else {
      json[r'32'] = null;
    }
    return json;
  }

  /// Returns a new [VpsOrderServiceTypes] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsOrderServiceTypes? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsOrderServiceTypes(
        n32: VpsOrderServiceTypes32.fromJson(json[r'32']),
      );
    }
    return null;
  }

  static List<VpsOrderServiceTypes> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderServiceTypes>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderServiceTypes.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsOrderServiceTypes> mapFromJson(dynamic json) {
    final map = <String, VpsOrderServiceTypes>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsOrderServiceTypes.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsOrderServiceTypes-objects as value to a dart map
  static Map<String, List<VpsOrderServiceTypes>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsOrderServiceTypes>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsOrderServiceTypes.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

