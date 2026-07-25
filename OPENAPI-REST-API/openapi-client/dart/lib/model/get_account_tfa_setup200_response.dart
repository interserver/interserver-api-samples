//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetAccountTfaSetup200Response {
  /// Returns a new [GetAccountTfaSetup200Response] instance.
  GetAccountTfaSetup200Response({
    this.n2faGoogleKey,
    this.n2faGoogleSplit,
  });

  /// Base64-encoded secret key for TOTP setup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n2faGoogleKey;

  /// Human-readable formatted key (chunks of 4 characters).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? n2faGoogleSplit;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetAccountTfaSetup200Response &&
    other.n2faGoogleKey == n2faGoogleKey &&
    other.n2faGoogleSplit == n2faGoogleSplit;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n2faGoogleKey == null ? 0 : n2faGoogleKey!.hashCode) +
    (n2faGoogleSplit == null ? 0 : n2faGoogleSplit!.hashCode);

  @override
  String toString() => 'GetAccountTfaSetup200Response[n2faGoogleKey=$n2faGoogleKey, n2faGoogleSplit=$n2faGoogleSplit]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n2faGoogleKey != null) {
      json[r'2fa_google_key'] = this.n2faGoogleKey;
    } else {
      json[r'2fa_google_key'] = null;
    }
    if (this.n2faGoogleSplit != null) {
      json[r'2fa_google_split'] = this.n2faGoogleSplit;
    } else {
      json[r'2fa_google_split'] = null;
    }
    return json;
  }

  /// Returns a new [GetAccountTfaSetup200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetAccountTfaSetup200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetAccountTfaSetup200Response(
        n2faGoogleKey: mapValueOfType<String>(json, r'2fa_google_key'),
        n2faGoogleSplit: mapValueOfType<String>(json, r'2fa_google_split'),
      );
    }
    return null;
  }

  static List<GetAccountTfaSetup200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetAccountTfaSetup200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetAccountTfaSetup200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetAccountTfaSetup200Response> mapFromJson(dynamic json) {
    final map = <String, GetAccountTfaSetup200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetAccountTfaSetup200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetAccountTfaSetup200Response-objects as value to a dart map
  static Map<String, List<GetAccountTfaSetup200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetAccountTfaSetup200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetAccountTfaSetup200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

