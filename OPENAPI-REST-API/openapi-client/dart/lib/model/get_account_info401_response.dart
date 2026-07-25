//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetAccountInfo401Response {
  /// Returns a new [GetAccountInfo401Response] instance.
  GetAccountInfo401Response({
    required this.code,
    required this.message,
  });

  int code;

  String message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAccountInfo401Response &&
    other.code == code &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code.hashCode) +
    (message.hashCode);

  @override
  String toString() => 'GetAccountInfo401Response[code=$code, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'code'] = this.code;
      json[r'message'] = this.message;
    return json;
  }

  /// Returns a new [GetAccountInfo401Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAccountInfo401Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'code'), 'Required key "GetAccountInfo401Response[code]" is missing from JSON.');
        assert(json[r'code'] != null, 'Required key "GetAccountInfo401Response[code]" has a null value in JSON.');
        assert(json.containsKey(r'message'), 'Required key "GetAccountInfo401Response[message]" is missing from JSON.');
        assert(json[r'message'] != null, 'Required key "GetAccountInfo401Response[message]" has a null value in JSON.');
        return true;
      }());

      return GetAccountInfo401Response(
        code: mapValueOfType<int>(json, r'code')!,
        message: mapValueOfType<String>(json, r'message')!,
      );
    }
    return null;
  }

  static List<GetAccountInfo401Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAccountInfo401Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAccountInfo401Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAccountInfo401Response> mapFromJson(dynamic json) {
    final map = <String, GetAccountInfo401Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAccountInfo401Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAccountInfo401Response-objects as value to a dart map
  static Map<String, List<GetAccountInfo401Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAccountInfo401Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetAccountInfo401Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'code',
    'message',
  };
}

