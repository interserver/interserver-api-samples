//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailBlockClickHouse {
  /// Returns a new [MailBlockClickHouse] instance.
  MailBlockClickHouse({
    required this.date,
    required this.from,
    required this.messageId,
    required this.subject,
    required this.to,
  });

  DateTime date;

  String from;

  String messageId;

  String subject;

  String to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailBlockClickHouse &&
    other.date == date &&
    other.from == from &&
    other.messageId == messageId &&
    other.subject == subject &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date.hashCode) +
    (from.hashCode) +
    (messageId.hashCode) +
    (subject.hashCode) +
    (to.hashCode);

  @override
  String toString() => 'MailBlockClickHouse[date=$date, from=$from, messageId=$messageId, subject=$subject, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'date'] = _dateFormatter.format(this.date.toUtc());
      json[r'from'] = this.from;
      json[r'messageId'] = this.messageId;
      json[r'subject'] = this.subject;
      json[r'to'] = this.to;
    return json;
  }

  /// Returns a new [MailBlockClickHouse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailBlockClickHouse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'date'), 'Required key "MailBlockClickHouse[date]" is missing from JSON.');
        assert(json[r'date'] != null, 'Required key "MailBlockClickHouse[date]" has a null value in JSON.');
        assert(json.containsKey(r'from'), 'Required key "MailBlockClickHouse[from]" is missing from JSON.');
        assert(json[r'from'] != null, 'Required key "MailBlockClickHouse[from]" has a null value in JSON.');
        assert(json.containsKey(r'messageId'), 'Required key "MailBlockClickHouse[messageId]" is missing from JSON.');
        assert(json[r'messageId'] != null, 'Required key "MailBlockClickHouse[messageId]" has a null value in JSON.');
        assert(json.containsKey(r'subject'), 'Required key "MailBlockClickHouse[subject]" is missing from JSON.');
        assert(json[r'subject'] != null, 'Required key "MailBlockClickHouse[subject]" has a null value in JSON.');
        assert(json.containsKey(r'to'), 'Required key "MailBlockClickHouse[to]" is missing from JSON.');
        assert(json[r'to'] != null, 'Required key "MailBlockClickHouse[to]" has a null value in JSON.');
        return true;
      }());

      return MailBlockClickHouse(
        date: mapDateTime(json, r'date', r'')!,
        from: mapValueOfType<String>(json, r'from')!,
        messageId: mapValueOfType<String>(json, r'messageId')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        to: mapValueOfType<String>(json, r'to')!,
      );
    }
    return null;
  }

  static List<MailBlockClickHouse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailBlockClickHouse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailBlockClickHouse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailBlockClickHouse> mapFromJson(dynamic json) {
    final map = <String, MailBlockClickHouse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailBlockClickHouse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailBlockClickHouse-objects as value to a dart map
  static Map<String, List<MailBlockClickHouse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailBlockClickHouse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailBlockClickHouse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'date',
    'from',
    'messageId',
    'subject',
    'to',
  };
}

