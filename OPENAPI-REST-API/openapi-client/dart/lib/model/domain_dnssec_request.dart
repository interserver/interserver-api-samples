//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainDnssecRequest {
  /// Returns a new [DomainDnssecRequest] instance.
  DomainDnssecRequest({
    this.algorithm = const [],
    this.digestType = const [],
    this.digest = const [],
    this.keyTag = const [],
  });

  /// List of DNSSEC algorithm IDs for each record.
  List<int> algorithm;

  /// List of digest type IDs for each record.
  List<int> digestType;

  /// List of hex digests for each record.
  List<String> digest;

  /// List of key tag values corresponding to each record.
  List<int> keyTag;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainDnssecRequest &&
    _deepEquality.equals(other.algorithm, algorithm) &&
    _deepEquality.equals(other.digestType, digestType) &&
    _deepEquality.equals(other.digest, digest) &&
    _deepEquality.equals(other.keyTag, keyTag);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (algorithm.hashCode) +
    (digestType.hashCode) +
    (digest.hashCode) +
    (keyTag.hashCode);

  @override
  String toString() => 'DomainDnssecRequest[algorithm=$algorithm, digestType=$digestType, digest=$digest, keyTag=$keyTag]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'algorithm'] = this.algorithm;
      json[r'digest_type'] = this.digestType;
      json[r'digest'] = this.digest;
      json[r'key_tag'] = this.keyTag;
    return json;
  }

  /// Returns a new [DomainDnssecRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainDnssecRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainDnssecRequest(
        algorithm: json[r'algorithm'] is Iterable
            ? (json[r'algorithm'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        digestType: json[r'digest_type'] is Iterable
            ? (json[r'digest_type'] as Iterable).cast<int>().toList(growable: false)
            : const [],
        digest: json[r'digest'] is Iterable
            ? (json[r'digest'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        keyTag: json[r'key_tag'] is Iterable
            ? (json[r'key_tag'] as Iterable).cast<int>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<DomainDnssecRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainDnssecRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainDnssecRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainDnssecRequest> mapFromJson(dynamic json) {
    final map = <String, DomainDnssecRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainDnssecRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainDnssecRequest-objects as value to a dart map
  static Map<String, List<DomainDnssecRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainDnssecRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainDnssecRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

