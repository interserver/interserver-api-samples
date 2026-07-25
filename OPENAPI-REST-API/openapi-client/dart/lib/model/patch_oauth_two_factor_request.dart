//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PatchOauthTwoFactorRequest {
  /// Returns a new [PatchOauthTwoFactorRequest] instance.
  PatchOauthTwoFactorRequest({
    required this.accountId,
    required this.code,
  });

  /// The account ID returned from the POST callback.
  int accountId;

  /// The 6-digit two-factor authentication code.
  String code;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PatchOauthTwoFactorRequest &&
    other.accountId == accountId &&
    other.code == code;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accountId.hashCode) +
    (code.hashCode);

  @override
  String toString() => 'PatchOauthTwoFactorRequest[accountId=$accountId, code=$code]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'account_id'] = this.accountId;
      json[r'code'] = this.code;
    return json;
  }

  /// Returns a new [PatchOauthTwoFactorRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PatchOauthTwoFactorRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'account_id'), 'Required key "PatchOauthTwoFactorRequest[account_id]" is missing from JSON.');
        assert(json[r'account_id'] != null, 'Required key "PatchOauthTwoFactorRequest[account_id]" has a null value in JSON.');
        assert(json.containsKey(r'code'), 'Required key "PatchOauthTwoFactorRequest[code]" is missing from JSON.');
        assert(json[r'code'] != null, 'Required key "PatchOauthTwoFactorRequest[code]" has a null value in JSON.');
        return true;
      }());

      return PatchOauthTwoFactorRequest(
        accountId: mapValueOfType<int>(json, r'account_id')!,
        code: mapValueOfType<String>(json, r'code')!,
      );
    }
    return null;
  }

  static List<PatchOauthTwoFactorRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PatchOauthTwoFactorRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PatchOauthTwoFactorRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PatchOauthTwoFactorRequest> mapFromJson(dynamic json) {
    final map = <String, PatchOauthTwoFactorRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PatchOauthTwoFactorRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PatchOauthTwoFactorRequest-objects as value to a dart map
  static Map<String, List<PatchOauthTwoFactorRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PatchOauthTwoFactorRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PatchOauthTwoFactorRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'account_id',
    'code',
  };
}

