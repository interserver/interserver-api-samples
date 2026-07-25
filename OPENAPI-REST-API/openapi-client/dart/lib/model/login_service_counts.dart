//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LoginServiceCounts {
  /// Returns a new [LoginServiceCounts] instance.
  LoginServiceCounts({
    required this.vps,
    required this.websites,
    required this.servers,
  });

  /// The number of total VPS orders that have been placed in our billing system.
  int vps;

  /// The number of total website orders that have been placed in our billing system.
  int websites;

  /// The number of total server orders that have been placed in our billing system.
  int servers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LoginServiceCounts &&
    other.vps == vps &&
    other.websites == websites &&
    other.servers == servers;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (vps.hashCode) +
    (websites.hashCode) +
    (servers.hashCode);

  @override
  String toString() => 'LoginServiceCounts[vps=$vps, websites=$websites, servers=$servers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'vps'] = this.vps;
      json[r'websites'] = this.websites;
      json[r'servers'] = this.servers;
    return json;
  }

  /// Returns a new [LoginServiceCounts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LoginServiceCounts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'vps'), 'Required key "LoginServiceCounts[vps]" is missing from JSON.');
        assert(json[r'vps'] != null, 'Required key "LoginServiceCounts[vps]" has a null value in JSON.');
        assert(json.containsKey(r'websites'), 'Required key "LoginServiceCounts[websites]" is missing from JSON.');
        assert(json[r'websites'] != null, 'Required key "LoginServiceCounts[websites]" has a null value in JSON.');
        assert(json.containsKey(r'servers'), 'Required key "LoginServiceCounts[servers]" is missing from JSON.');
        assert(json[r'servers'] != null, 'Required key "LoginServiceCounts[servers]" has a null value in JSON.');
        return true;
      }());

      return LoginServiceCounts(
        vps: mapValueOfType<int>(json, r'vps')!,
        websites: mapValueOfType<int>(json, r'websites')!,
        servers: mapValueOfType<int>(json, r'servers')!,
      );
    }
    return null;
  }

  static List<LoginServiceCounts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LoginServiceCounts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LoginServiceCounts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LoginServiceCounts> mapFromJson(dynamic json) {
    final map = <String, LoginServiceCounts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LoginServiceCounts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LoginServiceCounts-objects as value to a dart map
  static Map<String, List<LoginServiceCounts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LoginServiceCounts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LoginServiceCounts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'vps',
    'websites',
    'servers',
  };
}

