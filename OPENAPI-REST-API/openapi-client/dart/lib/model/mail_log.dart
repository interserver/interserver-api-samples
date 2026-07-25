//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailLog {
  /// Returns a new [MailLog] instance.
  MailLog({
    required this.total,
    required this.skip,
    required this.limit,
    this.emails = const [],
  });

  /// Total number of log entries that match the supplied filters, regardless of `skip` and `limit`.  Reflects the `groupby` mode.
  int total;

  /// The `skip` value used for this page (echoed from the request).
  int skip;

  /// The `limit` value used for this page (echoed from the request).
  int limit;

  List<MailLogEntry> emails;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailLog &&
    other.total == total &&
    other.skip == skip &&
    other.limit == limit &&
    _deepEquality.equals(other.emails, emails);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (total.hashCode) +
    (skip.hashCode) +
    (limit.hashCode) +
    (emails.hashCode);

  @override
  String toString() => 'MailLog[total=$total, skip=$skip, limit=$limit, emails=$emails]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'total'] = this.total;
      json[r'skip'] = this.skip;
      json[r'limit'] = this.limit;
      json[r'emails'] = this.emails;
    return json;
  }

  /// Returns a new [MailLog] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailLog? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'total'), 'Required key "MailLog[total]" is missing from JSON.');
        assert(json[r'total'] != null, 'Required key "MailLog[total]" has a null value in JSON.');
        assert(json.containsKey(r'skip'), 'Required key "MailLog[skip]" is missing from JSON.');
        assert(json[r'skip'] != null, 'Required key "MailLog[skip]" has a null value in JSON.');
        assert(json.containsKey(r'limit'), 'Required key "MailLog[limit]" is missing from JSON.');
        assert(json[r'limit'] != null, 'Required key "MailLog[limit]" has a null value in JSON.');
        assert(json.containsKey(r'emails'), 'Required key "MailLog[emails]" is missing from JSON.');
        assert(json[r'emails'] != null, 'Required key "MailLog[emails]" has a null value in JSON.');
        return true;
      }());

      return MailLog(
        total: mapValueOfType<int>(json, r'total')!,
        skip: mapValueOfType<int>(json, r'skip')!,
        limit: mapValueOfType<int>(json, r'limit')!,
        emails: MailLogEntry.listFromJson(json[r'emails']),
      );
    }
    return null;
  }

  static List<MailLog> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailLog>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailLog.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailLog> mapFromJson(dynamic json) {
    final map = <String, MailLog>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailLog.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailLog-objects as value to a dart map
  static Map<String, List<MailLog>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailLog>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailLog.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'total',
    'skip',
    'limit',
    'emails',
  };
}

