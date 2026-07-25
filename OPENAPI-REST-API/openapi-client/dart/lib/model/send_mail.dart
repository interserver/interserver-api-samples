//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class SendMail {
  /// Returns a new [SendMail] instance.
  SendMail({
    required this.to,
    required this.from,
    required this.subject,
    required this.body,
  });

  /// The Contact whom is the primary recipient of this email.
  String to;

  /// The contact whom is the this email is from.
  String from;

  /// The subject or title of the email
  String subject;

  /// The main email contents.
  String body;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SendMail &&
    other.to == to &&
    other.from == from &&
    other.subject == subject &&
    other.body == body;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (to.hashCode) +
    (from.hashCode) +
    (subject.hashCode) +
    (body.hashCode);

  @override
  String toString() => 'SendMail[to=$to, from=$from, subject=$subject, body=$body]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'to'] = this.to;
      json[r'from'] = this.from;
      json[r'subject'] = this.subject;
      json[r'body'] = this.body;
    return json;
  }

  /// Returns a new [SendMail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SendMail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'to'), 'Required key "SendMail[to]" is missing from JSON.');
        assert(json[r'to'] != null, 'Required key "SendMail[to]" has a null value in JSON.');
        assert(json.containsKey(r'from'), 'Required key "SendMail[from]" is missing from JSON.');
        assert(json[r'from'] != null, 'Required key "SendMail[from]" has a null value in JSON.');
        assert(json.containsKey(r'subject'), 'Required key "SendMail[subject]" is missing from JSON.');
        assert(json[r'subject'] != null, 'Required key "SendMail[subject]" has a null value in JSON.');
        assert(json.containsKey(r'body'), 'Required key "SendMail[body]" is missing from JSON.');
        assert(json[r'body'] != null, 'Required key "SendMail[body]" has a null value in JSON.');
        return true;
      }());

      return SendMail(
        to: mapValueOfType<String>(json, r'to')!,
        from: mapValueOfType<String>(json, r'from')!,
        subject: mapValueOfType<String>(json, r'subject')!,
        body: mapValueOfType<String>(json, r'body')!,
      );
    }
    return null;
  }

  static List<SendMail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SendMail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SendMail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SendMail> mapFromJson(dynamic json) {
    final map = <String, SendMail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SendMail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SendMail-objects as value to a dart map
  static Map<String, List<SendMail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SendMail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SendMail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'to',
    'from',
    'subject',
    'body',
  };
}

