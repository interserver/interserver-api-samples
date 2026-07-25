//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTrafficHistorySectionResponse {
  /// Returns a new [VpsTrafficHistorySectionResponse] instance.
  VpsTrafficHistorySectionResponse({
    this.data = const [],
    this.times = const [],
  });

  List<VpsTrafficHistorySectionDataResponse> data;

  List<DateTime> times;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTrafficHistorySectionResponse &&
    _deepEquality.equals(other.data, data) &&
    _deepEquality.equals(other.times, times);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode) +
    (times.hashCode);

  @override
  String toString() => 'VpsTrafficHistorySectionResponse[data=$data, times=$times]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
      json[r'times'] = this.times;
    return json;
  }

  /// Returns a new [VpsTrafficHistorySectionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTrafficHistorySectionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'data'), 'Required key "VpsTrafficHistorySectionResponse[data]" is missing from JSON.');
        assert(json[r'data'] != null, 'Required key "VpsTrafficHistorySectionResponse[data]" has a null value in JSON.');
        assert(json.containsKey(r'times'), 'Required key "VpsTrafficHistorySectionResponse[times]" is missing from JSON.');
        assert(json[r'times'] != null, 'Required key "VpsTrafficHistorySectionResponse[times]" has a null value in JSON.');
        return true;
      }());

      return VpsTrafficHistorySectionResponse(
        data: VpsTrafficHistorySectionDataResponse.listFromJson(json[r'data']),
        times: DateTime.listFromJson(json[r'times']),
      );
    }
    return null;
  }

  static List<VpsTrafficHistorySectionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTrafficHistorySectionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTrafficHistorySectionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTrafficHistorySectionResponse> mapFromJson(dynamic json) {
    final map = <String, VpsTrafficHistorySectionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTrafficHistorySectionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTrafficHistorySectionResponse-objects as value to a dart map
  static Map<String, List<VpsTrafficHistorySectionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTrafficHistorySectionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTrafficHistorySectionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'data',
    'times',
  };
}

