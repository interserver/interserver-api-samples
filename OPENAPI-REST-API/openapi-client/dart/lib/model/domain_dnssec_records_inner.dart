//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainDnssecRecordsInner {
  /// Returns a new [DomainDnssecRecordsInner] instance.
  DomainDnssecRecordsInner({
    this.algorithm,
    this.digestType,
    this.digest,
    this.keyTag,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? algorithm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? digestType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? digest;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyTag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainDnssecRecordsInner &&
    other.algorithm == algorithm &&
    other.digestType == digestType &&
    other.digest == digest &&
    other.keyTag == keyTag;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (algorithm == null ? 0 : algorithm!.hashCode) +
    (digestType == null ? 0 : digestType!.hashCode) +
    (digest == null ? 0 : digest!.hashCode) +
    (keyTag == null ? 0 : keyTag!.hashCode);

  @override
  String toString() => 'DomainDnssecRecordsInner[algorithm=$algorithm, digestType=$digestType, digest=$digest, keyTag=$keyTag]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.algorithm != null) {
      json[r'algorithm'] = this.algorithm;
    } else {
      json[r'algorithm'] = null;
    }
    if (this.digestType != null) {
      json[r'digest_type'] = this.digestType;
    } else {
      json[r'digest_type'] = null;
    }
    if (this.digest != null) {
      json[r'digest'] = this.digest;
    } else {
      json[r'digest'] = null;
    }
    if (this.keyTag != null) {
      json[r'key_tag'] = this.keyTag;
    } else {
      json[r'key_tag'] = null;
    }
    return json;
  }

  /// Returns a new [DomainDnssecRecordsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainDnssecRecordsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainDnssecRecordsInner(
        algorithm: mapValueOfType<String>(json, r'algorithm'),
        digestType: mapValueOfType<String>(json, r'digest_type'),
        digest: mapValueOfType<String>(json, r'digest'),
        keyTag: mapValueOfType<String>(json, r'key_tag'),
      );
    }
    return null;
  }

  static List<DomainDnssecRecordsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainDnssecRecordsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainDnssecRecordsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainDnssecRecordsInner> mapFromJson(dynamic json) {
    final map = <String, DomainDnssecRecordsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainDnssecRecordsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainDnssecRecordsInner-objects as value to a dart map
  static Map<String, List<DomainDnssecRecordsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainDnssecRecordsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainDnssecRecordsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

