//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class GetAccountLocales200ResponseValue {
  /// Returns a new [GetAccountLocales200ResponseValue] instance.
  GetAccountLocales200ResponseValue({
    this.name,
    this.localName,
  });

  /// English display name of the locale.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Display name of the locale in its own language.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? localName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAccountLocales200ResponseValue &&
    other.name == name &&
    other.localName == localName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (localName == null ? 0 : localName!.hashCode);

  @override
  String toString() => 'GetAccountLocales200ResponseValue[name=$name, localName=$localName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.localName != null) {
      json[r'local_name'] = this.localName;
    } else {
      json[r'local_name'] = null;
    }
    return json;
  }

  /// Returns a new [GetAccountLocales200ResponseValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAccountLocales200ResponseValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetAccountLocales200ResponseValue(
        name: mapValueOfType<String>(json, r'name'),
        localName: mapValueOfType<String>(json, r'local_name'),
      );
    }
    return null;
  }

  static List<GetAccountLocales200ResponseValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAccountLocales200ResponseValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAccountLocales200ResponseValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAccountLocales200ResponseValue> mapFromJson(dynamic json) {
    final map = <String, GetAccountLocales200ResponseValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAccountLocales200ResponseValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAccountLocales200ResponseValue-objects as value to a dart map
  static Map<String, List<GetAccountLocales200ResponseValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAccountLocales200ResponseValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetAccountLocales200ResponseValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

