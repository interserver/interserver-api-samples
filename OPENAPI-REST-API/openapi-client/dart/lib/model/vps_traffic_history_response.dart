//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTrafficHistoryResponse {
  /// Returns a new [VpsTrafficHistoryResponse] instance.
  VpsTrafficHistoryResponse({
    required this.hour,
    required this.day,
  });

  VpsTrafficHistorySectionResponse hour;

  VpsTrafficHistorySectionResponse day;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTrafficHistoryResponse &&
    other.hour == hour &&
    other.day == day;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hour.hashCode) +
    (day.hashCode);

  @override
  String toString() => 'VpsTrafficHistoryResponse[hour=$hour, day=$day]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hour'] = this.hour;
      json[r'day'] = this.day;
    return json;
  }

  /// Returns a new [VpsTrafficHistoryResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTrafficHistoryResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'hour'), 'Required key "VpsTrafficHistoryResponse[hour]" is missing from JSON.');
        assert(json[r'hour'] != null, 'Required key "VpsTrafficHistoryResponse[hour]" has a null value in JSON.');
        assert(json.containsKey(r'day'), 'Required key "VpsTrafficHistoryResponse[day]" is missing from JSON.');
        assert(json[r'day'] != null, 'Required key "VpsTrafficHistoryResponse[day]" has a null value in JSON.');
        return true;
      }());

      return VpsTrafficHistoryResponse(
        hour: VpsTrafficHistorySectionResponse.fromJson(json[r'hour'])!,
        day: VpsTrafficHistorySectionResponse.fromJson(json[r'day'])!,
      );
    }
    return null;
  }

  static List<VpsTrafficHistoryResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTrafficHistoryResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTrafficHistoryResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTrafficHistoryResponse> mapFromJson(dynamic json) {
    final map = <String, VpsTrafficHistoryResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTrafficHistoryResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTrafficHistoryResponse-objects as value to a dart map
  static Map<String, List<VpsTrafficHistoryResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTrafficHistoryResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTrafficHistoryResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hour',
    'day',
  };
}

