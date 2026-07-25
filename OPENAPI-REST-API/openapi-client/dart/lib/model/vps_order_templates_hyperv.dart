//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsOrderTemplatesHyperv {
  /// Returns a new [VpsOrderTemplatesHyperv] instance.
  VpsOrderTemplatesHyperv({
    this.windows,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VpsOrderTemplatesHypervWindows? windows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsOrderTemplatesHyperv &&
    other.windows == windows;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (windows == null ? 0 : windows!.hashCode);

  @override
  String toString() => 'VpsOrderTemplatesHyperv[windows=$windows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.windows != null) {
      json[r'windows'] = this.windows;
    } else {
      json[r'windows'] = null;
    }
    return json;
  }

  /// Returns a new [VpsOrderTemplatesHyperv] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsOrderTemplatesHyperv? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsOrderTemplatesHyperv(
        windows: VpsOrderTemplatesHypervWindows.fromJson(json[r'windows']),
      );
    }
    return null;
  }

  static List<VpsOrderTemplatesHyperv> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderTemplatesHyperv>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderTemplatesHyperv.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsOrderTemplatesHyperv> mapFromJson(dynamic json) {
    final map = <String, VpsOrderTemplatesHyperv>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsOrderTemplatesHyperv.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsOrderTemplatesHyperv-objects as value to a dart map
  static Map<String, List<VpsOrderTemplatesHyperv>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsOrderTemplatesHyperv>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsOrderTemplatesHyperv.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

