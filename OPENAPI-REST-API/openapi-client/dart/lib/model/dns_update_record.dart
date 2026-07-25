//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DnsUpdateRecord {
  /// Returns a new [DnsUpdateRecord] instance.
  DnsUpdateRecord({
    this.name,
    this.type,
    this.content,
    this.ttl,
    this.prio,
    this.disabled,
    this.ordername,
    this.auth,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DnsRecordType? type;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? content;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ttl;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prio;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disabled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ordername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? auth;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DnsUpdateRecord &&
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
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (content == null ? 0 : content!.hashCode) +
    (ttl == null ? 0 : ttl!.hashCode) +
    (prio == null ? 0 : prio!.hashCode) +
    (disabled == null ? 0 : disabled!.hashCode) +
    (ordername == null ? 0 : ordername!.hashCode) +
    (auth == null ? 0 : auth!.hashCode);

  @override
  String toString() => 'DnsUpdateRecord[name=$name, type=$type, content=$content, ttl=$ttl, prio=$prio, disabled=$disabled, ordername=$ordername, auth=$auth]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.content != null) {
      json[r'content'] = this.content;
    } else {
      json[r'content'] = null;
    }
    if (this.ttl != null) {
      json[r'ttl'] = this.ttl;
    } else {
      json[r'ttl'] = null;
    }
    if (this.prio != null) {
      json[r'prio'] = this.prio;
    } else {
      json[r'prio'] = null;
    }
    if (this.disabled != null) {
      json[r'disabled'] = this.disabled;
    } else {
      json[r'disabled'] = null;
    }
    if (this.ordername != null) {
      json[r'ordername'] = this.ordername;
    } else {
      json[r'ordername'] = null;
    }
    if (this.auth != null) {
      json[r'auth'] = this.auth;
    } else {
      json[r'auth'] = null;
    }
    return json;
  }

  /// Returns a new [DnsUpdateRecord] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DnsUpdateRecord? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DnsUpdateRecord(
        name: mapValueOfType<String>(json, r'name'),
        type: DnsRecordType.fromJson(json[r'type']),
        content: mapValueOfType<String>(json, r'content'),
        ttl: mapValueOfType<String>(json, r'ttl'),
        prio: mapValueOfType<String>(json, r'prio'),
        disabled: mapValueOfType<String>(json, r'disabled'),
        ordername: mapValueOfType<String>(json, r'ordername'),
        auth: mapValueOfType<String>(json, r'auth'),
      );
    }
    return null;
  }

  static List<DnsUpdateRecord> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DnsUpdateRecord>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DnsUpdateRecord.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DnsUpdateRecord> mapFromJson(dynamic json) {
    final map = <String, DnsUpdateRecord>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DnsUpdateRecord.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DnsUpdateRecord-objects as value to a dart map
  static Map<String, List<DnsUpdateRecord>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DnsUpdateRecord>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DnsUpdateRecord.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

