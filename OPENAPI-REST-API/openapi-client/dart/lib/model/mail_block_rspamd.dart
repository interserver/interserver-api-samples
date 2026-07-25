//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailBlockRspamd {
  /// Returns a new [MailBlockRspamd] instance.
  MailBlockRspamd({
    required this.from,
    required this.subject,
  });

  String from;

  String subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailBlockRspamd &&
    other.from == from &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (from.hashCode) +
    (subject.hashCode);

  @override
  String toString() => 'MailBlockRspamd[from=$from, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'from'] = this.from;
      json[r'subject'] = this.subject;
    return json;
  }

  /// Returns a new [MailBlockRspamd] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailBlockRspamd? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'from'), 'Required key "MailBlockRspamd[from]" is missing from JSON.');
        assert(json[r'from'] != null, 'Required key "MailBlockRspamd[from]" has a null value in JSON.');
        assert(json.containsKey(r'subject'), 'Required key "MailBlockRspamd[subject]" is missing from JSON.');
        assert(json[r'subject'] != null, 'Required key "MailBlockRspamd[subject]" has a null value in JSON.');
        return true;
      }());

      return MailBlockRspamd(
        from: mapValueOfType<String>(json, r'from')!,
        subject: mapValueOfType<String>(json, r'subject')!,
      );
    }
    return null;
  }

  static List<MailBlockRspamd> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailBlockRspamd>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailBlockRspamd.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailBlockRspamd> mapFromJson(dynamic json) {
    final map = <String, MailBlockRspamd>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailBlockRspamd.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailBlockRspamd-objects as value to a dart map
  static Map<String, List<MailBlockRspamd>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailBlockRspamd>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailBlockRspamd.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'from',
    'subject',
  };
}

