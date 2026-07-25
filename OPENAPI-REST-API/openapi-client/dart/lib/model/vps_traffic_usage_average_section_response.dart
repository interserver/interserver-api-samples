//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTrafficUsageAverageSectionResponse {
  /// Returns a new [VpsTrafficUsageAverageSectionResponse] instance.
  VpsTrafficUsageAverageSectionResponse({
    required this.total,
    required this.count,
    required this.value,
  });

  int total;

  int count;

  int value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTrafficUsageAverageSectionResponse &&
    other.total == total &&
    other.count == count &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total.hashCode) +
    (count.hashCode) +
    (value.hashCode);

  @override
  String toString() => 'VpsTrafficUsageAverageSectionResponse[total=$total, count=$count, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total'] = this.total;
      json[r'count'] = this.count;
      json[r'value'] = this.value;
    return json;
  }

  /// Returns a new [VpsTrafficUsageAverageSectionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTrafficUsageAverageSectionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'total'), 'Required key "VpsTrafficUsageAverageSectionResponse[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "VpsTrafficUsageAverageSectionResponse[total]" has a null value in JSON.');
        assert(json.containsKey(r'count'), 'Required key "VpsTrafficUsageAverageSectionResponse[count]" is missing from JSON.');
        assert(json[r'count'] != null, 'Required key "VpsTrafficUsageAverageSectionResponse[count]" has a null value in JSON.');
        assert(json.containsKey(r'value'), 'Required key "VpsTrafficUsageAverageSectionResponse[value]" is missing from JSON.');
        assert(json[r'value'] != null, 'Required key "VpsTrafficUsageAverageSectionResponse[value]" has a null value in JSON.');
        return true;
      }());

      return VpsTrafficUsageAverageSectionResponse(
        total: mapValueOfType<int>(json, r'total')!,
        count: mapValueOfType<int>(json, r'count')!,
        value: mapValueOfType<int>(json, r'value')!,
      );
    }
    return null;
  }

  static List<VpsTrafficUsageAverageSectionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTrafficUsageAverageSectionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTrafficUsageAverageSectionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTrafficUsageAverageSectionResponse> mapFromJson(dynamic json) {
    final map = <String, VpsTrafficUsageAverageSectionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTrafficUsageAverageSectionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTrafficUsageAverageSectionResponse-objects as value to a dart map
  static Map<String, List<VpsTrafficUsageAverageSectionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTrafficUsageAverageSectionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTrafficUsageAverageSectionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total',
    'count',
    'value',
  };
}

