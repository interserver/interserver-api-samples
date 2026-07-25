//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailDelistRequest {
  /// Returns a new [MailDelistRequest] instance.
  MailDelistRequest({
    this.unblock,
  });

  /// Email address to delist.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unblock;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailDelistRequest &&
    other.unblock == unblock;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (unblock == null ? 0 : unblock!.hashCode);

  @override
  String toString() => 'MailDelistRequest[unblock=$unblock]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.unblock != null) {
      json[r'unblock'] = this.unblock;
    } else {
      json[r'unblock'] = null;
    }
    return json;
  }

  /// Returns a new [MailDelistRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailDelistRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailDelistRequest(
        unblock: mapValueOfType<String>(json, r'unblock'),
      );
    }
    return null;
  }

  static List<MailDelistRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailDelistRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailDelistRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailDelistRequest> mapFromJson(dynamic json) {
    final map = <String, MailDelistRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailDelistRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailDelistRequest-objects as value to a dart map
  static Map<String, List<MailDelistRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailDelistRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailDelistRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

