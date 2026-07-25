//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LoginSuccessResponse {
  /// Returns a new [LoginSuccessResponse] instance.
  LoginSuccessResponse({
    this.sessionId,
    this.accountId,
    this.accountLid,
    this.ima,
    this.gravatar,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accountId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accountLid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ima;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gravatar;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginSuccessResponse &&
    other.sessionId == sessionId &&
    other.accountId == accountId &&
    other.accountLid == accountLid &&
    other.ima == ima &&
    other.gravatar == gravatar;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (accountId == null ? 0 : accountId!.hashCode) +
    (accountLid == null ? 0 : accountLid!.hashCode) +
    (ima == null ? 0 : ima!.hashCode) +
    (gravatar == null ? 0 : gravatar!.hashCode);

  @override
  String toString() => 'LoginSuccessResponse[sessionId=$sessionId, accountId=$accountId, accountLid=$accountLid, ima=$ima, gravatar=$gravatar]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.accountId != null) {
      json[r'account_id'] = this.accountId;
    } else {
      json[r'account_id'] = null;
    }
    if (this.accountLid != null) {
      json[r'account_lid'] = this.accountLid;
    } else {
      json[r'account_lid'] = null;
    }
    if (this.ima != null) {
      json[r'ima'] = this.ima;
    } else {
      json[r'ima'] = null;
    }
    if (this.gravatar != null) {
      json[r'gravatar'] = this.gravatar;
    } else {
      json[r'gravatar'] = null;
    }
    return json;
  }

  /// Returns a new [LoginSuccessResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginSuccessResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return LoginSuccessResponse(
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        accountId: mapValueOfType<int>(json, r'account_id'),
        accountLid: mapValueOfType<String>(json, r'account_lid'),
        ima: mapValueOfType<String>(json, r'ima'),
        gravatar: mapValueOfType<String>(json, r'gravatar'),
      );
    }
    return null;
  }

  static List<LoginSuccessResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSuccessResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSuccessResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginSuccessResponse> mapFromJson(dynamic json) {
    final map = <String, LoginSuccessResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginSuccessResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginSuccessResponse-objects as value to a dart map
  static Map<String, List<LoginSuccessResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginSuccessResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginSuccessResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

