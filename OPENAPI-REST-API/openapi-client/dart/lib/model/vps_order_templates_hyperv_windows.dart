//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsOrderTemplatesHypervWindows {
  /// Returns a new [VpsOrderTemplatesHypervWindows] instance.
  VpsOrderTemplatesHypervWindows({
    this.windows2019Standard,
    this.windows2022,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? windows2019Standard;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? windows2022;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsOrderTemplatesHypervWindows &&
    other.windows2019Standard == windows2019Standard &&
    other.windows2022 == windows2022;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (windows2019Standard == null ? 0 : windows2019Standard!.hashCode) +
    (windows2022 == null ? 0 : windows2022!.hashCode);

  @override
  String toString() => 'VpsOrderTemplatesHypervWindows[windows2019Standard=$windows2019Standard, windows2022=$windows2022]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.windows2019Standard != null) {
      json[r'Windows2019Standard'] = this.windows2019Standard;
    } else {
      json[r'Windows2019Standard'] = null;
    }
    if (this.windows2022 != null) {
      json[r'Windows2022'] = this.windows2022;
    } else {
      json[r'Windows2022'] = null;
    }
    return json;
  }

  /// Returns a new [VpsOrderTemplatesHypervWindows] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsOrderTemplatesHypervWindows? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsOrderTemplatesHypervWindows(
        windows2019Standard: mapValueOfType<String>(json, r'Windows2019Standard'),
        windows2022: mapValueOfType<String>(json, r'Windows2022'),
      );
    }
    return null;
  }

  static List<VpsOrderTemplatesHypervWindows> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderTemplatesHypervWindows>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderTemplatesHypervWindows.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsOrderTemplatesHypervWindows> mapFromJson(dynamic json) {
    final map = <String, VpsOrderTemplatesHypervWindows>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsOrderTemplatesHypervWindows.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsOrderTemplatesHypervWindows-objects as value to a dart map
  static Map<String, List<VpsOrderTemplatesHypervWindows>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsOrderTemplatesHypervWindows>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsOrderTemplatesHypervWindows.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

