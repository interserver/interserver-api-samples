//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTrafficUsageResponse {
  /// Returns a new [VpsTrafficUsageResponse] instance.
  VpsTrafficUsageResponse({
    required this.current,
    required this.peak,
    required this.average,
  });

  VpsTrafficTotalsSectionResponse current;

  VpsTrafficTotalsSectionResponse peak;

  VpsTrafficUsageAverageResponse average;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTrafficUsageResponse &&
    other.current == current &&
    other.peak == peak &&
    other.average == average;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (current.hashCode) +
    (peak.hashCode) +
    (average.hashCode);

  @override
  String toString() => 'VpsTrafficUsageResponse[current=$current, peak=$peak, average=$average]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'current'] = this.current;
      json[r'peak'] = this.peak;
      json[r'average'] = this.average;
    return json;
  }

  /// Returns a new [VpsTrafficUsageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTrafficUsageResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'current'), 'Required key "VpsTrafficUsageResponse[current]" is missing from JSON.');
        assert(json[r'current'] != null, 'Required key "VpsTrafficUsageResponse[current]" has a null value in JSON.');
        assert(json.containsKey(r'peak'), 'Required key "VpsTrafficUsageResponse[peak]" is missing from JSON.');
        assert(json[r'peak'] != null, 'Required key "VpsTrafficUsageResponse[peak]" has a null value in JSON.');
        assert(json.containsKey(r'average'), 'Required key "VpsTrafficUsageResponse[average]" is missing from JSON.');
        assert(json[r'average'] != null, 'Required key "VpsTrafficUsageResponse[average]" has a null value in JSON.');
        return true;
      }());

      return VpsTrafficUsageResponse(
        current: VpsTrafficTotalsSectionResponse.fromJson(json[r'current'])!,
        peak: VpsTrafficTotalsSectionResponse.fromJson(json[r'peak'])!,
        average: VpsTrafficUsageAverageResponse.fromJson(json[r'average'])!,
      );
    }
    return null;
  }

  static List<VpsTrafficUsageResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTrafficUsageResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTrafficUsageResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTrafficUsageResponse> mapFromJson(dynamic json) {
    final map = <String, VpsTrafficUsageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTrafficUsageResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTrafficUsageResponse-objects as value to a dart map
  static Map<String, List<VpsTrafficUsageResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTrafficUsageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTrafficUsageResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'current',
    'peak',
    'average',
  };
}

