//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PostOauthCallback200Response {
  /// Returns a new [PostOauthCallback200Response] instance.
  PostOauthCallback200Response({
    this.login,
    this.signup,
    this.linked,
    this.accountId,
    this.errorCode,
  });

  /// Whether the user was logged in to an existing account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? login;

  /// Whether a new account was created.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? signup;

  /// Whether the OAuth provider was linked to an existing account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? linked;

  /// The account ID associated with the OAuth login.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountId;

  /// Error code if additional verification is needed (e.g. `2fa_required`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? errorCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PostOauthCallback200Response &&
    other.login == login &&
    other.signup == signup &&
    other.linked == linked &&
    other.accountId == accountId &&
    other.errorCode == errorCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (login == null ? 0 : login!.hashCode) +
    (signup == null ? 0 : signup!.hashCode) +
    (linked == null ? 0 : linked!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (errorCode == null ? 0 : errorCode!.hashCode);

  @override
  String toString() => 'PostOauthCallback200Response[login=$login, signup=$signup, linked=$linked, accountId=$accountId, errorCode=$errorCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.login != null) {
      json[r'login'] = this.login;
    } else {
      json[r'login'] = null;
    }
    if (this.signup != null) {
      json[r'signup'] = this.signup;
    } else {
      json[r'signup'] = null;
    }
    if (this.linked != null) {
      json[r'linked'] = this.linked;
    } else {
      json[r'linked'] = null;
    }
    if (this.accountId != null) {
      json[r'account_id'] = this.accountId;
    } else {
      json[r'account_id'] = null;
    }
    if (this.errorCode != null) {
      json[r'error_code'] = this.errorCode;
    } else {
      json[r'error_code'] = null;
    }
    return json;
  }

  /// Returns a new [PostOauthCallback200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PostOauthCallback200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PostOauthCallback200Response(
        login: mapValueOfType<bool>(json, r'login'),
        signup: mapValueOfType<bool>(json, r'signup'),
        linked: mapValueOfType<bool>(json, r'linked'),
        accountId: mapValueOfType<int>(json, r'account_id'),
        errorCode: mapValueOfType<String>(json, r'error_code'),
      );
    }
    return null;
  }

  static List<PostOauthCallback200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PostOauthCallback200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PostOauthCallback200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PostOauthCallback200Response> mapFromJson(dynamic json) {
    final map = <String, PostOauthCallback200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PostOauthCallback200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PostOauthCallback200Response-objects as value to a dart map
  static Map<String, List<PostOauthCallback200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PostOauthCallback200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PostOauthCallback200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

