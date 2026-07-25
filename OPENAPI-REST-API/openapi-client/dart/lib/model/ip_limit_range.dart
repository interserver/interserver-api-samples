//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class IpLimitRange {
  /// Returns a new [IpLimitRange] instance.
  IpLimitRange({
    required this.start,
    required this.end,
  });

  /// The begining (or first) IP address in the range.
  String start;

  /// The ending (or last) IP address in the range.
  String end;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IpLimitRange &&
    other.start == start &&
    other.end == end;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (start.hashCode) +
    (end.hashCode);

  @override
  String toString() => 'IpLimitRange[start=$start, end=$end]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'start'] = this.start;
      json[r'end'] = this.end;
    return json;
  }

  /// Returns a new [IpLimitRange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IpLimitRange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'start'), 'Required key "IpLimitRange[start]" is missing from JSON.');
        assert(json[r'start'] != null, 'Required key "IpLimitRange[start]" has a null value in JSON.');
        assert(json.containsKey(r'end'), 'Required key "IpLimitRange[end]" is missing from JSON.');
        assert(json[r'end'] != null, 'Required key "IpLimitRange[end]" has a null value in JSON.');
        return true;
      }());

      return IpLimitRange(
        start: mapValueOfType<String>(json, r'start')!,
        end: mapValueOfType<String>(json, r'end')!,
      );
    }
    return null;
  }

  static List<IpLimitRange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IpLimitRange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IpLimitRange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IpLimitRange> mapFromJson(dynamic json) {
    final map = <String, IpLimitRange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IpLimitRange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IpLimitRange-objects as value to a dart map
  static Map<String, List<IpLimitRange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IpLimitRange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IpLimitRange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'start',
    'end',
  };
}

