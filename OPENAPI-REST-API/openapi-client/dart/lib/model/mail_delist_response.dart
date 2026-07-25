//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailDelistResponse {
  /// Returns a new [MailDelistResponse] instance.
  MailDelistResponse({
    this.id,
    this.local = const [],
    this.mbtrap = const [],
    this.subject = const [],
    this.manual = const [],
  });

  /// Mail service ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// Local blocklist entries.
  List<Object> local;

  /// MailBaby trap block entries.
  List<Object> mbtrap;

  /// Subject-based block entries.
  List<Object> subject;

  /// Manually blocked entries.
  List<Object> manual;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailDelistResponse &&
    other.id == id &&
    _deepEquality.equals(other.local, local) &&
    _deepEquality.equals(other.mbtrap, mbtrap) &&
    _deepEquality.equals(other.subject, subject) &&
    _deepEquality.equals(other.manual, manual);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (local.hashCode) +
    (mbtrap.hashCode) +
    (subject.hashCode) +
    (manual.hashCode);

  @override
  String toString() => 'MailDelistResponse[id=$id, local=$local, mbtrap=$mbtrap, subject=$subject, manual=$manual]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'local'] = this.local;
      json[r'mbtrap'] = this.mbtrap;
      json[r'subject'] = this.subject;
      json[r'manual'] = this.manual;
    return json;
  }

  /// Returns a new [MailDelistResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailDelistResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailDelistResponse(
        id: mapValueOfType<int>(json, r'id'),
        local: json[r'local'] is Iterable
            ? (json[r'local'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        mbtrap: json[r'mbtrap'] is Iterable
            ? (json[r'mbtrap'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        subject: json[r'subject'] is Iterable
            ? (json[r'subject'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        manual: json[r'manual'] is Iterable
            ? (json[r'manual'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<MailDelistResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailDelistResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailDelistResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailDelistResponse> mapFromJson(dynamic json) {
    final map = <String, MailDelistResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailDelistResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailDelistResponse-objects as value to a dart map
  static Map<String, List<MailDelistResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailDelistResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailDelistResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

