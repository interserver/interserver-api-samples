//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ViewMailLogStartDateParameter {
  /// Returns a new [ViewMailLogStartDateParameter] instance.
  ViewMailLogStartDateParameter({
  });

  @override
  bool operator ==(Object other) => identical(this, other) || other is ViewMailLogStartDateParameter &&

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis

  @override
  String toString() => 'ViewMailLogStartDateParameter[]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    return json;
  }

  /// Returns a new [ViewMailLogStartDateParameter] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ViewMailLogStartDateParameter? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ViewMailLogStartDateParameter(
      );
    }
    return null;
  }

  static List<ViewMailLogStartDateParameter> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ViewMailLogStartDateParameter>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ViewMailLogStartDateParameter.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ViewMailLogStartDateParameter> mapFromJson(dynamic json) {
    final map = <String, ViewMailLogStartDateParameter>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ViewMailLogStartDateParameter.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ViewMailLogStartDateParameter-objects as value to a dart map
  static Map<String, List<ViewMailLogStartDateParameter>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ViewMailLogStartDateParameter>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ViewMailLogStartDateParameter.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

