//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LoginSubmissionExampleGRecaptchaResponse {
  /// Returns a new [LoginSubmissionExampleGRecaptchaResponse] instance.
  LoginSubmissionExampleGRecaptchaResponse({
    this.vIsShallow,
    this.dep,
    this.vIsRef,
    this.rawValue,
    this.value,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? vIsShallow;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LoginSubmissionExampleGRecaptchaResponseDep? dep;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? vIsRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rawValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginSubmissionExampleGRecaptchaResponse &&
    other.vIsShallow == vIsShallow &&
    other.dep == dep &&
    other.vIsRef == vIsRef &&
    other.rawValue == rawValue &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (vIsShallow == null ? 0 : vIsShallow!.hashCode) +
    (dep == null ? 0 : dep!.hashCode) +
    (vIsRef == null ? 0 : vIsRef!.hashCode) +
    (rawValue == null ? 0 : rawValue!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'LoginSubmissionExampleGRecaptchaResponse[vIsShallow=$vIsShallow, dep=$dep, vIsRef=$vIsRef, rawValue=$rawValue, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.vIsShallow != null) {
      json[r'__v_isShallow'] = this.vIsShallow;
    } else {
      json[r'__v_isShallow'] = null;
    }
    if (this.dep != null) {
      json[r'dep'] = this.dep;
    } else {
      json[r'dep'] = null;
    }
    if (this.vIsRef != null) {
      json[r'__v_isRef'] = this.vIsRef;
    } else {
      json[r'__v_isRef'] = null;
    }
    if (this.rawValue != null) {
      json[r'_rawValue'] = this.rawValue;
    } else {
      json[r'_rawValue'] = null;
    }
    if (this.value != null) {
      json[r'_value'] = this.value;
    } else {
      json[r'_value'] = null;
    }
    return json;
  }

  /// Returns a new [LoginSubmissionExampleGRecaptchaResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginSubmissionExampleGRecaptchaResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return LoginSubmissionExampleGRecaptchaResponse(
        vIsShallow: mapValueOfType<bool>(json, r'__v_isShallow'),
        dep: LoginSubmissionExampleGRecaptchaResponseDep.fromJson(json[r'dep']),
        vIsRef: mapValueOfType<bool>(json, r'__v_isRef'),
        rawValue: mapValueOfType<String>(json, r'_rawValue'),
        value: mapValueOfType<String>(json, r'_value'),
      );
    }
    return null;
  }

  static List<LoginSubmissionExampleGRecaptchaResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginSubmissionExampleGRecaptchaResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginSubmissionExampleGRecaptchaResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginSubmissionExampleGRecaptchaResponse> mapFromJson(dynamic json) {
    final map = <String, LoginSubmissionExampleGRecaptchaResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginSubmissionExampleGRecaptchaResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginSubmissionExampleGRecaptchaResponse-objects as value to a dart map
  static Map<String, List<LoginSubmissionExampleGRecaptchaResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginSubmissionExampleGRecaptchaResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginSubmissionExampleGRecaptchaResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

