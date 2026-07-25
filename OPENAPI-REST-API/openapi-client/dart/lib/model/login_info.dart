//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LoginInfo {
  /// Returns a new [LoginInfo] instance.
  LoginInfo({
    required this.captcha,
    required this.counts,
    this.logo,
    this.language,
  });

  /// A base64 encoded image to use for rendering the alternateive captcha.
  String captcha;

  LoginServiceCounts counts;

  /// A logo image url.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? logo;

  /// The desired langauge to render the site with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? language;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginInfo &&
    other.captcha == captcha &&
    other.counts == counts &&
    other.logo == logo &&
    other.language == language;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (captcha.hashCode) +
    (counts.hashCode) +
    (logo == null ? 0 : logo!.hashCode) +
    (language == null ? 0 : language!.hashCode);

  @override
  String toString() => 'LoginInfo[captcha=$captcha, counts=$counts, logo=$logo, language=$language]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'captcha'] = this.captcha;
      json[r'counts'] = this.counts;
    if (this.logo != null) {
      json[r'logo'] = this.logo;
    } else {
      json[r'logo'] = null;
    }
    if (this.language != null) {
      json[r'language'] = this.language;
    } else {
      json[r'language'] = null;
    }
    return json;
  }

  /// Returns a new [LoginInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'captcha'), 'Required key "LoginInfo[captcha]" is missing from JSON.');
        assert(json[r'captcha'] != null, 'Required key "LoginInfo[captcha]" has a null value in JSON.');
        assert(json.containsKey(r'counts'), 'Required key "LoginInfo[counts]" is missing from JSON.');
        assert(json[r'counts'] != null, 'Required key "LoginInfo[counts]" has a null value in JSON.');
        return true;
      }());

      return LoginInfo(
        captcha: mapValueOfType<String>(json, r'captcha')!,
        counts: LoginServiceCounts.fromJson(json[r'counts'])!,
        logo: mapValueOfType<String>(json, r'logo'),
        language: mapValueOfType<String>(json, r'language'),
      );
    }
    return null;
  }

  static List<LoginInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginInfo> mapFromJson(dynamic json) {
    final map = <String, LoginInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginInfo-objects as value to a dart map
  static Map<String, List<LoginInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'captcha',
    'counts',
  };
}

