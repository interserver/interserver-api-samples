//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsOrderPackageCosts {
  /// Returns a new [VpsOrderPackageCosts] instance.
  VpsOrderPackageCosts({
    this.n57,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? n57;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsOrderPackageCosts &&
    other.n57 == n57;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n57 == null ? 0 : n57!.hashCode);

  @override
  String toString() => 'VpsOrderPackageCosts[n57=$n57]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n57 != null) {
      json[r'57'] = this.n57;
    } else {
      json[r'57'] = null;
    }
    return json;
  }

  /// Returns a new [VpsOrderPackageCosts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsOrderPackageCosts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsOrderPackageCosts(
        n57: num.parse('${json[r'57']}'),
      );
    }
    return null;
  }

  static List<VpsOrderPackageCosts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderPackageCosts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderPackageCosts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsOrderPackageCosts> mapFromJson(dynamic json) {
    final map = <String, VpsOrderPackageCosts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsOrderPackageCosts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsOrderPackageCosts-objects as value to a dart map
  static Map<String, List<VpsOrderPackageCosts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsOrderPackageCosts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsOrderPackageCosts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

