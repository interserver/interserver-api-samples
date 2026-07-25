//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LoginSubmissionExample {
  /// Returns a new [LoginSubmissionExample] instance.
  LoginSubmissionExample({
    required this.login,
    required this.passwd,
    this.remember,
    this.gRecaptchaResponse,
    this.tfa,
  });

  String login;

  String passwd;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? remember;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LoginSubmissionExampleGRecaptchaResponse? gRecaptchaResponse;

  /// Two Factor Authentication Response.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tfa;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginSubmissionExample &&
    other.login == login &&
    other.passwd == passwd &&
    other.remember == remember &&
    other.gRecaptchaResponse == gRecaptchaResponse &&
    other.tfa == tfa;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (login.hashCode) +
    (passwd.hashCode) +
    (remember == null ? 0 : remember!.hashCode) +
    (gRecaptchaResponse == null ? 0 : gRecaptchaResponse!.hashCode) +
    (tfa == null ? 0 : tfa!.hashCode);

  @override
  String toString() => 'LoginSubmissionExample[login=$login, passwd=$passwd, remember=$remember, gRecaptchaResponse=$gRecaptchaResponse, tfa=$tfa]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'login'] = this.login;
      json[r'passwd'] = this.passwd;
    if (this.remember != null) {
      json[r'remember'] = this.remember;
    } else {
      json[r'remember'] = null;
    }
    if (this.gRecaptchaResponse != null) {
      json[r'g-recaptcha-response'] = this.gRecaptchaResponse;
    } else {
      json[r'g-recaptcha-response'] = null;
    }
    if (this.tfa != null) {
      json[r'tfa'] = this.tfa;
    } else {
      json[r'tfa'] = null;
    }
    return json;
  }

  /// Returns a new [LoginSubmissionExample] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginSubmissionExample? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'login'), 'Required key "LoginSubmissionExample[login]" is missing from JSON.');
        assert(json[r'login'] != null, 'Required key "LoginSubmissionExample[login]" has a null value in JSON.');
        assert(json.containsKey(r'passwd'), 'Required key "LoginSubmissionExample[passwd]" is missing from JSON.');
        assert(json[r'passwd'] != null, 'Required key "LoginSubmissionExample[passwd]" has a null value in JSON.');
        return true;
      }());

      return LoginSubmissionExample(
        login: mapValueOfType<String>(json, r'login')!,
        passwd: mapValueOfType<String>(json, r'passwd')!,
        remember: mapValueOfType<String>(json, r'remember'),
        gRecaptchaResponse: LoginSubmissionExampleGRecaptchaResponse.fromJson(json[r'g-recaptcha-response']),
        tfa: mapValueOfType<String>(json, r'tfa'),
      );
    }
    return null;
  }

  static List<LoginSubmissionExample> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSubmissionExample>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSubmissionExample.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginSubmissionExample> mapFromJson(dynamic json) {
    final map = <String, LoginSubmissionExample>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginSubmissionExample.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginSubmissionExample-objects as value to a dart map
  static Map<String, List<LoginSubmissionExample>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginSubmissionExample>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginSubmissionExample.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'login',
    'passwd',
  };
}

