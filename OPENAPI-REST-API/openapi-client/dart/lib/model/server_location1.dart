//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerLocation1 {
  /// Returns a new [ServerLocation1] instance.
  ServerLocation1({
    required this.locationId,
    required this.locationName,
    required this.locationLat,
    required this.locationLong,
    this.locationDescription,
    this.locationIpmiGroup,
  });

  int locationId;

  String locationName;

  String locationLat;

  String locationLong;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locationDescription;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? locationIpmiGroup;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerLocation1 &&
    other.locationId == locationId &&
    other.locationName == locationName &&
    other.locationLat == locationLat &&
    other.locationLong == locationLong &&
    other.locationDescription == locationDescription &&
    other.locationIpmiGroup == locationIpmiGroup;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (locationId.hashCode) +
    (locationName.hashCode) +
    (locationLat.hashCode) +
    (locationLong.hashCode) +
    (locationDescription == null ? 0 : locationDescription!.hashCode) +
    (locationIpmiGroup == null ? 0 : locationIpmiGroup!.hashCode);

  @override
  String toString() => 'ServerLocation1[locationId=$locationId, locationName=$locationName, locationLat=$locationLat, locationLong=$locationLong, locationDescription=$locationDescription, locationIpmiGroup=$locationIpmiGroup]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'location_id'] = this.locationId;
      json[r'location_name'] = this.locationName;
      json[r'location_lat'] = this.locationLat;
      json[r'location_long'] = this.locationLong;
    if (this.locationDescription != null) {
      json[r'location_description'] = this.locationDescription;
    } else {
      json[r'location_description'] = null;
    }
    if (this.locationIpmiGroup != null) {
      json[r'location_ipmi_group'] = this.locationIpmiGroup;
    } else {
      json[r'location_ipmi_group'] = null;
    }
    return json;
  }

  /// Returns a new [ServerLocation1] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerLocation1? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'location_id'), 'Required key "ServerLocation1[location_id]" is missing from JSON.');
        assert(json[r'location_id'] != null, 'Required key "ServerLocation1[location_id]" has a null value in JSON.');
        assert(json.containsKey(r'location_name'), 'Required key "ServerLocation1[location_name]" is missing from JSON.');
        assert(json[r'location_name'] != null, 'Required key "ServerLocation1[location_name]" has a null value in JSON.');
        assert(json.containsKey(r'location_lat'), 'Required key "ServerLocation1[location_lat]" is missing from JSON.');
        assert(json[r'location_lat'] != null, 'Required key "ServerLocation1[location_lat]" has a null value in JSON.');
        assert(json.containsKey(r'location_long'), 'Required key "ServerLocation1[location_long]" is missing from JSON.');
        assert(json[r'location_long'] != null, 'Required key "ServerLocation1[location_long]" has a null value in JSON.');
        return true;
      }());

      return ServerLocation1(
        locationId: mapValueOfType<int>(json, r'location_id')!,
        locationName: mapValueOfType<String>(json, r'location_name')!,
        locationLat: mapValueOfType<String>(json, r'location_lat')!,
        locationLong: mapValueOfType<String>(json, r'location_long')!,
        locationDescription: mapValueOfType<String>(json, r'location_description'),
        locationIpmiGroup: mapValueOfType<int>(json, r'location_ipmi_group'),
      );
    }
    return null;
  }

  static List<ServerLocation1> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerLocation1>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerLocation1.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerLocation1> mapFromJson(dynamic json) {
    final map = <String, ServerLocation1>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerLocation1.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerLocation1-objects as value to a dart map
  static Map<String, List<ServerLocation1>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerLocation1>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerLocation1.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'location_id',
    'location_name',
    'location_lat',
    'location_long',
  };
}

