//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServersBuyNowError {
  /// Returns a new [ServersBuyNowError] instance.
  ServersBuyNowError({
    this.success,
    this.text,
    this.errors = const [],
  });

  /// Always false for error responses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  /// Human-readable error summary.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// List of specific validation error messages.
  List<String> errors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServersBuyNowError &&
    other.success == success &&
    other.text == text &&
    _deepEquality.equals(other.errors, errors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (success == null ? 0 : success!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (errors.hashCode);

  @override
  String toString() => 'ServersBuyNowError[success=$success, text=$text, errors=$errors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
      json[r'errors'] = this.errors;
    return json;
  }

  /// Returns a new [ServersBuyNowError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServersBuyNowError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServersBuyNowError(
        success: mapValueOfType<bool>(json, r'success'),
        text: mapValueOfType<String>(json, r'text'),
        errors: json[r'errors'] is Iterable
            ? (json[r'errors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ServersBuyNowError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServersBuyNowError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServersBuyNowError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServersBuyNowError> mapFromJson(dynamic json) {
    final map = <String, ServersBuyNowError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServersBuyNowError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServersBuyNowError-objects as value to a dart map
  static Map<String, List<ServersBuyNowError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServersBuyNowError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServersBuyNowError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

