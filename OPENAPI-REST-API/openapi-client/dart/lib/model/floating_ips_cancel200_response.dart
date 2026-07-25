//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class FloatingIpsCancel200Response {
  /// Returns a new [FloatingIpsCancel200Response] instance.
  FloatingIpsCancel200Response({
    required this.success,
    required this.text,
  });

  bool success;

  String text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FloatingIpsCancel200Response &&
    other.success == success &&
    other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (text.hashCode);

  @override
  String toString() => 'FloatingIpsCancel200Response[success=$success, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'text'] = this.text;
    return json;
  }

  /// Returns a new [FloatingIpsCancel200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FloatingIpsCancel200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "FloatingIpsCancel200Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "FloatingIpsCancel200Response[success]" has a null value in JSON.');
        assert(json.containsKey(r'text'), 'Required key "FloatingIpsCancel200Response[text]" is missing from JSON.');
        assert(json[r'text'] != null, 'Required key "FloatingIpsCancel200Response[text]" has a null value in JSON.');
        return true;
      }());

      return FloatingIpsCancel200Response(
        success: mapValueOfType<bool>(json, r'success')!,
        text: mapValueOfType<String>(json, r'text')!,
      );
    }
    return null;
  }

  static List<FloatingIpsCancel200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FloatingIpsCancel200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FloatingIpsCancel200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FloatingIpsCancel200Response> mapFromJson(dynamic json) {
    final map = <String, FloatingIpsCancel200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FloatingIpsCancel200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FloatingIpsCancel200Response-objects as value to a dart map
  static Map<String, List<FloatingIpsCancel200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FloatingIpsCancel200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FloatingIpsCancel200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'success',
    'text',
  };
}

