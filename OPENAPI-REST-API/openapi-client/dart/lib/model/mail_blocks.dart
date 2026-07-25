//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailBlocks {
  /// Returns a new [MailBlocks] instance.
  MailBlocks({
    this.local = const [],
    this.mbtrap = const [],
    this.subject = const [],
  });

  List<MailBlockClickHouse> local;

  List<MailBlockClickHouse> mbtrap;

  List<MailBlockRspamd> subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailBlocks &&
    _deepEquality.equals(other.local, local) &&
    _deepEquality.equals(other.mbtrap, mbtrap) &&
    _deepEquality.equals(other.subject, subject);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (local.hashCode) +
    (mbtrap.hashCode) +
    (subject.hashCode);

  @override
  String toString() => 'MailBlocks[local=$local, mbtrap=$mbtrap, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'local'] = this.local;
      json[r'mbtrap'] = this.mbtrap;
      json[r'subject'] = this.subject;
    return json;
  }

  /// Returns a new [MailBlocks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailBlocks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'local'), 'Required key "MailBlocks[local]" is missing from JSON.');
        assert(json[r'local'] != null, 'Required key "MailBlocks[local]" has a null value in JSON.');
        assert(json.containsKey(r'mbtrap'), 'Required key "MailBlocks[mbtrap]" is missing from JSON.');
        assert(json[r'mbtrap'] != null, 'Required key "MailBlocks[mbtrap]" has a null value in JSON.');
        assert(json.containsKey(r'subject'), 'Required key "MailBlocks[subject]" is missing from JSON.');
        assert(json[r'subject'] != null, 'Required key "MailBlocks[subject]" has a null value in JSON.');
        return true;
      }());

      return MailBlocks(
        local: MailBlockClickHouse.listFromJson(json[r'local']),
        mbtrap: MailBlockClickHouse.listFromJson(json[r'mbtrap']),
        subject: MailBlockRspamd.listFromJson(json[r'subject']),
      );
    }
    return null;
  }

  static List<MailBlocks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailBlocks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailBlocks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailBlocks> mapFromJson(dynamic json) {
    final map = <String, MailBlocks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailBlocks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailBlocks-objects as value to a dart map
  static Map<String, List<MailBlocks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailBlocks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailBlocks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'local',
    'mbtrap',
    'subject',
  };
}

