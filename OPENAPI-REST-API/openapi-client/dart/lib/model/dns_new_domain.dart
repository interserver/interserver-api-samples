//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DnsNewDomain {
  /// Returns a new [DnsNewDomain] instance.
  DnsNewDomain({
    required this.domain,
    required this.ip,
  });

  /// The domain name.
  String domain;

  /// IP Address to point the domain to.
  String ip;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DnsNewDomain &&
    other.domain == domain &&
    other.ip == ip;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain.hashCode) +
    (ip.hashCode);

  @override
  String toString() => 'DnsNewDomain[domain=$domain, ip=$ip]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'domain'] = this.domain;
      json[r'ip'] = this.ip;
    return json;
  }

  /// Returns a new [DnsNewDomain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DnsNewDomain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'domain'), 'Required key "DnsNewDomain[domain]" is missing from JSON.');
        assert(json[r'domain'] != null, 'Required key "DnsNewDomain[domain]" has a null value in JSON.');
        assert(json.containsKey(r'ip'), 'Required key "DnsNewDomain[ip]" is missing from JSON.');
        assert(json[r'ip'] != null, 'Required key "DnsNewDomain[ip]" has a null value in JSON.');
        return true;
      }());

      return DnsNewDomain(
        domain: mapValueOfType<String>(json, r'domain')!,
        ip: mapValueOfType<String>(json, r'ip')!,
      );
    }
    return null;
  }

  static List<DnsNewDomain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DnsNewDomain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DnsNewDomain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DnsNewDomain> mapFromJson(dynamic json) {
    final map = <String, DnsNewDomain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DnsNewDomain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DnsNewDomain-objects as value to a dart map
  static Map<String, List<DnsNewDomain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DnsNewDomain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DnsNewDomain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'domain',
    'ip',
  };
}

