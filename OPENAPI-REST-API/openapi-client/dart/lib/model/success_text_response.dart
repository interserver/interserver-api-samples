//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class SuccessTextResponse {
  /// Returns a new [SuccessTextResponse] instance.
  SuccessTextResponse({
    required this.success,
    this.text,
    this.action,
  });

  /// Indicates whether or not the command was successful or not.
  bool success;

  /// Text associated with the response.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Optional Action relating to the response.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SuccessTextResponse &&
    other.success == success &&
    other.text == text &&
    other.action == action;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (action == null ? 0 : action!.hashCode);

  @override
  String toString() => 'SuccessTextResponse[success=$success, text=$text, action=$action]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    return json;
  }

  /// Returns a new [SuccessTextResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SuccessTextResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "SuccessTextResponse[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "SuccessTextResponse[success]" has a null value in JSON.');
        return true;
      }());

      return SuccessTextResponse(
        success: mapValueOfType<bool>(json, r'success')!,
        text: mapValueOfType<String>(json, r'text'),
        action: mapValueOfType<String>(json, r'action'),
      );
    }
    return null;
  }

  static List<SuccessTextResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SuccessTextResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SuccessTextResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SuccessTextResponse> mapFromJson(dynamic json) {
    final map = <String, SuccessTextResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SuccessTextResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SuccessTextResponse-objects as value to a dart map
  static Map<String, List<SuccessTextResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SuccessTextResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SuccessTextResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
  };
}

