//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class HomeDetails {
  /// Returns a new [HomeDetails] instance.
  HomeDetails({
    this.modules,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  HomeDetailsModules? modules;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HomeDetails &&
    other.modules == modules;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (modules == null ? 0 : modules!.hashCode);

  @override
  String toString() => 'HomeDetails[modules=$modules]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.modules != null) {
      json[r'modules'] = this.modules;
    } else {
      json[r'modules'] = null;
    }
    return json;
  }

  /// Returns a new [HomeDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HomeDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return HomeDetails(
        modules: HomeDetailsModules.fromJson(json[r'modules']),
      );
    }
    return null;
  }

  static List<HomeDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HomeDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HomeDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HomeDetails> mapFromJson(dynamic json) {
    final map = <String, HomeDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HomeDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HomeDetails-objects as value to a dart map
  static Map<String, List<HomeDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HomeDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HomeDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

