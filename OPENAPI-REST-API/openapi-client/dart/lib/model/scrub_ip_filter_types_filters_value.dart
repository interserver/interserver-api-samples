//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ScrubIpFilterTypesFiltersValue {
  /// Returns a new [ScrubIpFilterTypesFiltersValue] instance.
  ScrubIpFilterTypesFiltersValue({
    this.name,
    this.desc,
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
  String? desc;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScrubIpFilterTypesFiltersValue &&
    other.name == name &&
    other.desc == desc;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (desc == null ? 0 : desc!.hashCode);

  @override
  String toString() => 'ScrubIpFilterTypesFiltersValue[name=$name, desc=$desc]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.desc != null) {
      json[r'desc'] = this.desc;
    } else {
      json[r'desc'] = null;
    }
    return json;
  }

  /// Returns a new [ScrubIpFilterTypesFiltersValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScrubIpFilterTypesFiltersValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ScrubIpFilterTypesFiltersValue(
        name: mapValueOfType<String>(json, r'name'),
        desc: mapValueOfType<String>(json, r'desc'),
      );
    }
    return null;
  }

  static List<ScrubIpFilterTypesFiltersValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScrubIpFilterTypesFiltersValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScrubIpFilterTypesFiltersValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScrubIpFilterTypesFiltersValue> mapFromJson(dynamic json) {
    final map = <String, ScrubIpFilterTypesFiltersValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScrubIpFilterTypesFiltersValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScrubIpFilterTypesFiltersValue-objects as value to a dart map
  static Map<String, List<ScrubIpFilterTypesFiltersValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScrubIpFilterTypesFiltersValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScrubIpFilterTypesFiltersValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

