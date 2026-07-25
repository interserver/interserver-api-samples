//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DisableScrub500Response {
  /// Returns a new [DisableScrub500Response] instance.
  DisableScrub500Response({
    required this.success,
    required this.text,
  });

  bool success;

  String text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DisableScrub500Response &&
    other.success == success &&
    other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (text.hashCode);

  @override
  String toString() => 'DisableScrub500Response[success=$success, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'text'] = this.text;
    return json;
  }

  /// Returns a new [DisableScrub500Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DisableScrub500Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "DisableScrub500Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "DisableScrub500Response[success]" has a null value in JSON.');
        assert(json.containsKey(r'text'), 'Required key "DisableScrub500Response[text]" is missing from JSON.');
        assert(json[r'text'] != null, 'Required key "DisableScrub500Response[text]" has a null value in JSON.');
        return true;
      }());

      return DisableScrub500Response(
        success: mapValueOfType<bool>(json, r'success')!,
        text: mapValueOfType<String>(json, r'text')!,
      );
    }
    return null;
  }

  static List<DisableScrub500Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DisableScrub500Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DisableScrub500Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DisableScrub500Response> mapFromJson(dynamic json) {
    final map = <String, DisableScrub500Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DisableScrub500Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DisableScrub500Response-objects as value to a dart map
  static Map<String, List<DisableScrub500Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DisableScrub500Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DisableScrub500Response.listFromJson(entry.value, growable: growable,);
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

