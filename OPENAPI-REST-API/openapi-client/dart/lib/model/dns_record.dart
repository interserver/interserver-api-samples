//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DnsRecord {
  /// Returns a new [DnsRecord] instance.
  DnsRecord({
    required this.id,
    required this.domainId,
    required this.name,
    required this.type,
    required this.content,
    required this.ttl,
    required this.prio,
    required this.disabled,
    required this.ordername,
    required this.auth,
  });

  /// The ID of the DNS Record.
  String id;

  /// The ID of the Domain this is a record of.
  String domainId;

  String name;

  DnsRecordType type;

  /// The content of the record, such as the IP address or hsotname.
  String content;

  /// Time To Live (seconds)
  String ttl;

  /// Priority
  String prio;

  String disabled;

  /// Alternate name to use for sorting
  String ordername;

  String auth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DnsRecord &&
    other.id == id &&
    other.domainId == domainId &&
    other.name == name &&
    other.type == type &&
    other.content == content &&
    other.ttl == ttl &&
    other.prio == prio &&
    other.disabled == disabled &&
    other.ordername == ordername &&
    other.auth == auth;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id.hashCode) +
    (domainId.hashCode) +
    (name.hashCode) +
    (type.hashCode) +
    (content.hashCode) +
    (ttl.hashCode) +
    (prio.hashCode) +
    (disabled.hashCode) +
    (ordername.hashCode) +
    (auth.hashCode);

  @override
  String toString() => 'DnsRecord[id=$id, domainId=$domainId, name=$name, type=$type, content=$content, ttl=$ttl, prio=$prio, disabled=$disabled, ordername=$ordername, auth=$auth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'id'] = this.id;
      json[r'domain_id'] = this.domainId;
      json[r'name'] = this.name;
      json[r'type'] = this.type;
      json[r'content'] = this.content;
      json[r'ttl'] = this.ttl;
      json[r'prio'] = this.prio;
      json[r'disabled'] = this.disabled;
      json[r'ordername'] = this.ordername;
      json[r'auth'] = this.auth;
    return json;
  }

  /// Returns a new [DnsRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DnsRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'id'), 'Required key "DnsRecord[id]" is missing from JSON.');
        assert(json[r'id'] != null, 'Required key "DnsRecord[id]" has a null value in JSON.');
        assert(json.containsKey(r'domain_id'), 'Required key "DnsRecord[domain_id]" is missing from JSON.');
        assert(json[r'domain_id'] != null, 'Required key "DnsRecord[domain_id]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "DnsRecord[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "DnsRecord[name]" has a null value in JSON.');
        assert(json.containsKey(r'type'), 'Required key "DnsRecord[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "DnsRecord[type]" has a null value in JSON.');
        assert(json.containsKey(r'content'), 'Required key "DnsRecord[content]" is missing from JSON.');
        assert(json[r'content'] != null, 'Required key "DnsRecord[content]" has a null value in JSON.');
        assert(json.containsKey(r'ttl'), 'Required key "DnsRecord[ttl]" is missing from JSON.');
        assert(json[r'ttl'] != null, 'Required key "DnsRecord[ttl]" has a null value in JSON.');
        assert(json.containsKey(r'prio'), 'Required key "DnsRecord[prio]" is missing from JSON.');
        assert(json[r'prio'] != null, 'Required key "DnsRecord[prio]" has a null value in JSON.');
        assert(json.containsKey(r'disabled'), 'Required key "DnsRecord[disabled]" is missing from JSON.');
        assert(json[r'disabled'] != null, 'Required key "DnsRecord[disabled]" has a null value in JSON.');
        assert(json.containsKey(r'ordername'), 'Required key "DnsRecord[ordername]" is missing from JSON.');
        assert(json[r'ordername'] != null, 'Required key "DnsRecord[ordername]" has a null value in JSON.');
        assert(json.containsKey(r'auth'), 'Required key "DnsRecord[auth]" is missing from JSON.');
        assert(json[r'auth'] != null, 'Required key "DnsRecord[auth]" has a null value in JSON.');
        return true;
      }());

      return DnsRecord(
        id: mapValueOfType<String>(json, r'id')!,
        domainId: mapValueOfType<String>(json, r'domain_id')!,
        name: mapValueOfType<String>(json, r'name')!,
        type: DnsRecordType.fromJson(json[r'type'])!,
        content: mapValueOfType<String>(json, r'content')!,
        ttl: mapValueOfType<String>(json, r'ttl')!,
        prio: mapValueOfType<String>(json, r'prio')!,
        disabled: mapValueOfType<String>(json, r'disabled')!,
        ordername: mapValueOfType<String>(json, r'ordername')!,
        auth: mapValueOfType<String>(json, r'auth')!,
      );
    }
    return null;
  }

  static List<DnsRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DnsRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DnsRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DnsRecord> mapFromJson(dynamic json) {
    final map = <String, DnsRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DnsRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DnsRecord-objects as value to a dart map
  static Map<String, List<DnsRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DnsRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DnsRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'id',
    'domain_id',
    'name',
    'type',
    'content',
    'ttl',
    'prio',
    'disabled',
    'ordername',
    'auth',
  };
}

