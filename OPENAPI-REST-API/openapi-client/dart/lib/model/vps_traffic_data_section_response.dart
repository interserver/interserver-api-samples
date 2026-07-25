//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTrafficDataSectionResponse {
  /// Returns a new [VpsTrafficDataSectionResponse] instance.
  VpsTrafficDataSectionResponse({
    required this.name,
    this.data = const [],
  });

  String name;

  List<VPSTrafficDataDataSectionResponse> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTrafficDataSectionResponse &&
    other.name == name &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (data.hashCode);

  @override
  String toString() => 'VpsTrafficDataSectionResponse[name=$name, data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [VpsTrafficDataSectionResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTrafficDataSectionResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "VpsTrafficDataSectionResponse[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "VpsTrafficDataSectionResponse[name]" has a null value in JSON.');
        assert(json.containsKey(r'data'), 'Required key "VpsTrafficDataSectionResponse[data]" is missing from JSON.');
        assert(json[r'data'] != null, 'Required key "VpsTrafficDataSectionResponse[data]" has a null value in JSON.');
        return true;
      }());

      return VpsTrafficDataSectionResponse(
        name: mapValueOfType<String>(json, r'name')!,
        data: VPSTrafficDataDataSectionResponse.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<VpsTrafficDataSectionResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTrafficDataSectionResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTrafficDataSectionResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTrafficDataSectionResponse> mapFromJson(dynamic json) {
    final map = <String, VpsTrafficDataSectionResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTrafficDataSectionResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTrafficDataSectionResponse-objects as value to a dart map
  static Map<String, List<VpsTrafficDataSectionResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTrafficDataSectionResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTrafficDataSectionResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'data',
  };
}

