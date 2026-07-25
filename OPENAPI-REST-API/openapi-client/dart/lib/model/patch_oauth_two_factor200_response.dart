//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PatchOauthTwoFactor200Response {
  /// Returns a new [PatchOauthTwoFactor200Response] instance.
  PatchOauthTwoFactor200Response({
    this.login,
  });

  /// Whether the 2FA verification succeeded and the user is now logged in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? login;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchOauthTwoFactor200Response &&
    other.login == login;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (login == null ? 0 : login!.hashCode);

  @override
  String toString() => 'PatchOauthTwoFactor200Response[login=$login]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.login != null) {
      json[r'login'] = this.login;
    } else {
      json[r'login'] = null;
    }
    return json;
  }

  /// Returns a new [PatchOauthTwoFactor200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchOauthTwoFactor200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PatchOauthTwoFactor200Response(
        login: mapValueOfType<bool>(json, r'login'),
      );
    }
    return null;
  }

  static List<PatchOauthTwoFactor200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchOauthTwoFactor200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchOauthTwoFactor200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchOauthTwoFactor200Response> mapFromJson(dynamic json) {
    final map = <String, PatchOauthTwoFactor200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchOauthTwoFactor200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchOauthTwoFactor200Response-objects as value to a dart map
  static Map<String, List<PatchOauthTwoFactor200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchOauthTwoFactor200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchOauthTwoFactor200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

