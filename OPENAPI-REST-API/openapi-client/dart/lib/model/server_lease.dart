//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerLease {
  /// Returns a new [ServerLease] instance.
  ServerLease({
    required this.mac,
    required this.authenticated,
    required this.group,
  });

  /// MAC address associated with the lease.
  String mac;

  /// Indicates if the lease is authenticated.
  bool authenticated;

  /// Group identifier for the lease.
  String group;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerLease &&
    other.mac == mac &&
    other.authenticated == authenticated &&
    other.group == group;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mac.hashCode) +
    (authenticated.hashCode) +
    (group.hashCode);

  @override
  String toString() => 'ServerLease[mac=$mac, authenticated=$authenticated, group=$group]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mac'] = this.mac;
      json[r'authenticated'] = this.authenticated;
      json[r'group'] = this.group;
    return json;
  }

  /// Returns a new [ServerLease] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerLease? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'mac'), 'Required key "ServerLease[mac]" is missing from JSON.');
        assert(json[r'mac'] != null, 'Required key "ServerLease[mac]" has a null value in JSON.');
        assert(json.containsKey(r'authenticated'), 'Required key "ServerLease[authenticated]" is missing from JSON.');
        assert(json[r'authenticated'] != null, 'Required key "ServerLease[authenticated]" has a null value in JSON.');
        assert(json.containsKey(r'group'), 'Required key "ServerLease[group]" is missing from JSON.');
        assert(json[r'group'] != null, 'Required key "ServerLease[group]" has a null value in JSON.');
        return true;
      }());

      return ServerLease(
        mac: mapValueOfType<String>(json, r'mac')!,
        authenticated: mapValueOfType<bool>(json, r'authenticated')!,
        group: mapValueOfType<String>(json, r'group')!,
      );
    }
    return null;
  }

  static List<ServerLease> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerLease>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerLease.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerLease> mapFromJson(dynamic json) {
    final map = <String, ServerLease>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerLease.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerLease-objects as value to a dart map
  static Map<String, List<ServerLease>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerLease>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerLease.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mac',
    'authenticated',
    'group',
  };
}

