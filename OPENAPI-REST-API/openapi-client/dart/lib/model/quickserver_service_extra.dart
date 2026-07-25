//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class QuickserverServiceExtra {
  /// Returns a new [QuickserverServiceExtra] instance.
  QuickserverServiceExtra({
    this.platform,
  });

  /// Platform information
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuickserverServiceExtra &&
    other.platform == platform;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (platform == null ? 0 : platform!.hashCode);

  @override
  String toString() => 'QuickserverServiceExtra[platform=$platform]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    return json;
  }

  /// Returns a new [QuickserverServiceExtra] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuickserverServiceExtra? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return QuickserverServiceExtra(
        platform: mapValueOfType<String>(json, r'platform'),
      );
    }
    return null;
  }

  static List<QuickserverServiceExtra> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuickserverServiceExtra>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuickserverServiceExtra.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuickserverServiceExtra> mapFromJson(dynamic json) {
    final map = <String, QuickserverServiceExtra>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuickserverServiceExtra.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuickserverServiceExtra-objects as value to a dart map
  static Map<String, List<QuickserverServiceExtra>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuickserverServiceExtra>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuickserverServiceExtra.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

