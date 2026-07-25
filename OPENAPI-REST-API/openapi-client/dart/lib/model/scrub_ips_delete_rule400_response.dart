//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ScrubIpsDeleteRule400Response {
  /// Returns a new [ScrubIpsDeleteRule400Response] instance.
  ScrubIpsDeleteRule400Response({
    this.success,
    this.text,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScrubIpsDeleteRule400Response &&
    other.success == success &&
    other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success == null ? 0 : success!.hashCode) +
    (text == null ? 0 : text!.hashCode);

  @override
  String toString() => 'ScrubIpsDeleteRule400Response[success=$success, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    return json;
  }

  /// Returns a new [ScrubIpsDeleteRule400Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScrubIpsDeleteRule400Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ScrubIpsDeleteRule400Response(
        success: mapValueOfType<bool>(json, r'success'),
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<ScrubIpsDeleteRule400Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScrubIpsDeleteRule400Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScrubIpsDeleteRule400Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScrubIpsDeleteRule400Response> mapFromJson(dynamic json) {
    final map = <String, ScrubIpsDeleteRule400Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScrubIpsDeleteRule400Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScrubIpsDeleteRule400Response-objects as value to a dart map
  static Map<String, List<ScrubIpsDeleteRule400Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScrubIpsDeleteRule400Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScrubIpsDeleteRule400Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

