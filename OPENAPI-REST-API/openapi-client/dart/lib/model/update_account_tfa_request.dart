//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class UpdateAccountTfaRequest {
  /// Returns a new [UpdateAccountTfaRequest] instance.
  UpdateAccountTfaRequest({
    required this.n2faGoogleCode,
  });

  /// The 6-digit verification code from your authenticator app.
  String n2faGoogleCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateAccountTfaRequest &&
    other.n2faGoogleCode == n2faGoogleCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n2faGoogleCode.hashCode);

  @override
  String toString() => 'UpdateAccountTfaRequest[n2faGoogleCode=$n2faGoogleCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'2fa_google_code'] = this.n2faGoogleCode;
    return json;
  }

  /// Returns a new [UpdateAccountTfaRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateAccountTfaRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'2fa_google_code'), 'Required key "UpdateAccountTfaRequest[2fa_google_code]" is missing from JSON.');
        assert(json[r'2fa_google_code'] != null, 'Required key "UpdateAccountTfaRequest[2fa_google_code]" has a null value in JSON.');
        return true;
      }());

      return UpdateAccountTfaRequest(
        n2faGoogleCode: mapValueOfType<String>(json, r'2fa_google_code')!,
      );
    }
    return null;
  }

  static List<UpdateAccountTfaRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateAccountTfaRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateAccountTfaRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateAccountTfaRequest> mapFromJson(dynamic json) {
    final map = <String, UpdateAccountTfaRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateAccountTfaRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateAccountTfaRequest-objects as value to a dart map
  static Map<String, List<UpdateAccountTfaRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateAccountTfaRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateAccountTfaRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '2fa_google_code',
  };
}

