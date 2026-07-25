//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class TemplateRequest {
  /// Returns a new [TemplateRequest] instance.
  TemplateRequest({
    required this.template,
    required this.localPassword,
    this.password,
  });

  /// OS Template Filename
  String template;

  /// Password for this account.
  String localPassword;

  /// Password for Root / Administrator Account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? password;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TemplateRequest &&
    other.template == template &&
    other.localPassword == localPassword &&
    other.password == password;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (template.hashCode) +
    (localPassword.hashCode) +
    (password == null ? 0 : password!.hashCode);

  @override
  String toString() => 'TemplateRequest[template=$template, localPassword=$localPassword, password=$password]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'template'] = this.template;
      json[r'localPassword'] = this.localPassword;
    if (this.password != null) {
      json[r'password'] = this.password;
    } else {
      json[r'password'] = null;
    }
    return json;
  }

  /// Returns a new [TemplateRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TemplateRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'template'), 'Required key "TemplateRequest[template]" is missing from JSON.');
        assert(json[r'template'] != null, 'Required key "TemplateRequest[template]" has a null value in JSON.');
        assert(json.containsKey(r'localPassword'), 'Required key "TemplateRequest[localPassword]" is missing from JSON.');
        assert(json[r'localPassword'] != null, 'Required key "TemplateRequest[localPassword]" has a null value in JSON.');
        return true;
      }());

      return TemplateRequest(
        template: mapValueOfType<String>(json, r'template')!,
        localPassword: mapValueOfType<String>(json, r'localPassword')!,
        password: mapValueOfType<String>(json, r'password'),
      );
    }
    return null;
  }

  static List<TemplateRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TemplateRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TemplateRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TemplateRequest> mapFromJson(dynamic json) {
    final map = <String, TemplateRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TemplateRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TemplateRequest-objects as value to a dart map
  static Map<String, List<TemplateRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TemplateRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TemplateRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'template',
    'localPassword',
  };
}

