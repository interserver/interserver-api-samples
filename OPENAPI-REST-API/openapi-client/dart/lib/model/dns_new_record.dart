//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DnsNewRecord {
  /// Returns a new [DnsNewRecord] instance.
  DnsNewRecord({
    required this.name,
    required this.type,
    required this.content,
    this.ttl = 86400,
    this.prio = 0,
  });

  /// Name part of record
  String name;

  DnsRecordType type;

  /// Content of record
  String content;

  /// Time-to-live
  int ttl;

  /// Priority
  int prio;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DnsNewRecord &&
    other.name == name &&
    other.type == type &&
    other.content == content &&
    other.ttl == ttl &&
    other.prio == prio;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (type.hashCode) +
    (content.hashCode) +
    (ttl.hashCode) +
    (prio.hashCode);

  @override
  String toString() => 'DnsNewRecord[name=$name, type=$type, content=$content, ttl=$ttl, prio=$prio]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'content'] = this.content;
      json[r'ttl'] = this.ttl;
      json[r'prio'] = this.prio;
    return json;
  }

  /// Returns a new [DnsNewRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DnsNewRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "DnsNewRecord[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "DnsNewRecord[name]" has a null value in JSON.');
        assert(json.containsKey(r'type'), 'Required key "DnsNewRecord[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "DnsNewRecord[type]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "DnsNewRecord[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "DnsNewRecord[content]" has a null value in JSON.');
        return true;
      }());

      return DnsNewRecord(
        name: mapValueOfType<String>(json, r'name')!,
        type: DnsRecordType.fromJson(json[r'type'])!,
        content: mapValueOfType<String>(json, r'content')!,
        ttl: mapValueOfType<int>(json, r'ttl') ?? 86400,
        prio: mapValueOfType<int>(json, r'prio') ?? 0,
      );
    }
    return null;
  }

  static List<DnsNewRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DnsNewRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DnsNewRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DnsNewRecord> mapFromJson(dynamic json) {
    final map = <String, DnsNewRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DnsNewRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DnsNewRecord-objects as value to a dart map
  static Map<String, List<DnsNewRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DnsNewRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DnsNewRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'type',
    'content',
  };
}

