//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTrafficUsageAverageResponse {
  /// Returns a new [VpsTrafficUsageAverageResponse] instance.
  VpsTrafficUsageAverageResponse({
    required this.in_,
    required this.out_,
  });

  VpsTrafficUsageAverageSectionResponse in_;

  VpsTrafficUsageAverageSectionResponse out_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTrafficUsageAverageResponse &&
    other.in_ == in_ &&
    other.out_ == out_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (in_.hashCode) +
    (out_.hashCode);

  @override
  String toString() => 'VpsTrafficUsageAverageResponse[in_=$in_, out_=$out_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'in'] = this.in_;
      json[r'out'] = this.out_;
    return json;
  }

  /// Returns a new [VpsTrafficUsageAverageResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTrafficUsageAverageResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'in'), 'Required key "VpsTrafficUsageAverageResponse[in]" is missing from JSON.');
        assert(json[r'in'] != null, 'Required key "VpsTrafficUsageAverageResponse[in]" has a null value in JSON.');
        assert(json.containsKey(r'out'), 'Required key "VpsTrafficUsageAverageResponse[out]" is missing from JSON.');
        assert(json[r'out'] != null, 'Required key "VpsTrafficUsageAverageResponse[out]" has a null value in JSON.');
        return true;
      }());

      return VpsTrafficUsageAverageResponse(
        in_: VpsTrafficUsageAverageSectionResponse.fromJson(json[r'in'])!,
        out_: VpsTrafficUsageAverageSectionResponse.fromJson(json[r'out'])!,
      );
    }
    return null;
  }

  static List<VpsTrafficUsageAverageResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTrafficUsageAverageResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTrafficUsageAverageResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTrafficUsageAverageResponse> mapFromJson(dynamic json) {
    final map = <String, VpsTrafficUsageAverageResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTrafficUsageAverageResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTrafficUsageAverageResponse-objects as value to a dart map
  static Map<String, List<VpsTrafficUsageAverageResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTrafficUsageAverageResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTrafficUsageAverageResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'in',
    'out',
  };
}

