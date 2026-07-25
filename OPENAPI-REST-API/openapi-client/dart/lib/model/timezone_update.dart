//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class TimezoneUpdate {
  /// Returns a new [TimezoneUpdate] instance.
  TimezoneUpdate({
    required this.timezone,
  });

  /// The time zone
  String timezone;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TimezoneUpdate &&
    other.timezone == timezone;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (timezone.hashCode);

  @override
  String toString() => 'TimezoneUpdate[timezone=$timezone]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'timezone'] = this.timezone;
    return json;
  }

  /// Returns a new [TimezoneUpdate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TimezoneUpdate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'timezone'), 'Required key "TimezoneUpdate[timezone]" is missing from JSON.');
        assert(json[r'timezone'] != null, 'Required key "TimezoneUpdate[timezone]" has a null value in JSON.');
        return true;
      }());

      return TimezoneUpdate(
        timezone: mapValueOfType<String>(json, r'timezone')!,
      );
    }
    return null;
  }

  static List<TimezoneUpdate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TimezoneUpdate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TimezoneUpdate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TimezoneUpdate> mapFromJson(dynamic json) {
    final map = <String, TimezoneUpdate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TimezoneUpdate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TimezoneUpdate-objects as value to a dart map
  static Map<String, List<TimezoneUpdate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TimezoneUpdate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TimezoneUpdate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'timezone',
  };
}

