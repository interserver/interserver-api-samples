//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner {
  /// Returns a new [GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner] instance.
  GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner({
    this.desc,
    this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? desc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner &&
    other.desc == desc &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (desc == null ? 0 : desc!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner[desc=$desc, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.desc != null) {
      json[r'desc'] = this.desc;
    } else {
      json[r'desc'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner(
        desc: mapValueOfType<String>(json, r'desc'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner> mapFromJson(dynamic json) {
    final map = <String, GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner-objects as value to a dart map
  static Map<String, List<GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetScrubIpDetails200ResponseExtraInfoTablesScrubIpsRowsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

