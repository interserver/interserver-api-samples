//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class EnableScrub500Response {
  /// Returns a new [EnableScrub500Response] instance.
  EnableScrub500Response({
    required this.success,
    required this.text,
  });

  bool success;

  String text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnableScrub500Response &&
    other.success == success &&
    other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success.hashCode) +
    (text.hashCode);

  @override
  String toString() => 'EnableScrub500Response[success=$success, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'success'] = this.success;
      json[r'text'] = this.text;
    return json;
  }

  /// Returns a new [EnableScrub500Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnableScrub500Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'success'), 'Required key "EnableScrub500Response[success]" is missing from JSON.');
        assert(json[r'success'] != null, 'Required key "EnableScrub500Response[success]" has a null value in JSON.');
        assert(json.containsKey(r'text'), 'Required key "EnableScrub500Response[text]" is missing from JSON.');
        assert(json[r'text'] != null, 'Required key "EnableScrub500Response[text]" has a null value in JSON.');
        return true;
      }());

      return EnableScrub500Response(
        success: mapValueOfType<bool>(json, r'success')!,
        text: mapValueOfType<String>(json, r'text')!,
      );
    }
    return null;
  }

  static List<EnableScrub500Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnableScrub500Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnableScrub500Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnableScrub500Response> mapFromJson(dynamic json) {
    final map = <String, EnableScrub500Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnableScrub500Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnableScrub500Response-objects as value to a dart map
  static Map<String, List<EnableScrub500Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnableScrub500Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnableScrub500Response.listFromJson(entry.value, growable: growable,);
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

