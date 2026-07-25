//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerNetworkInfoSwitchports {
  /// Returns a new [ServerNetworkInfoSwitchports] instance.
  ServerNetworkInfoSwitchports({
    required this.n10414,
  });

  ServerSwitchport n10414;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerNetworkInfoSwitchports &&
    other.n10414 == n10414;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n10414.hashCode);

  @override
  String toString() => 'ServerNetworkInfoSwitchports[n10414=$n10414]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'10414'] = this.n10414;
    return json;
  }

  /// Returns a new [ServerNetworkInfoSwitchports] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerNetworkInfoSwitchports? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'10414'), 'Required key "ServerNetworkInfoSwitchports[10414]" is missing from JSON.');
        assert(json[r'10414'] != null, 'Required key "ServerNetworkInfoSwitchports[10414]" has a null value in JSON.');
        return true;
      }());

      return ServerNetworkInfoSwitchports(
        n10414: ServerSwitchport.fromJson(json[r'10414'])!,
      );
    }
    return null;
  }

  static List<ServerNetworkInfoSwitchports> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerNetworkInfoSwitchports>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerNetworkInfoSwitchports.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerNetworkInfoSwitchports> mapFromJson(dynamic json) {
    final map = <String, ServerNetworkInfoSwitchports>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerNetworkInfoSwitchports.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerNetworkInfoSwitchports-objects as value to a dart map
  static Map<String, List<ServerNetworkInfoSwitchports>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerNetworkInfoSwitchports>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerNetworkInfoSwitchports.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    '10414',
  };
}

