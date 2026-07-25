//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerSwitchport {
  /// Returns a new [ServerSwitchport] instance.
  ServerSwitchport({
    required this.switchportId,
    required this.switchId,
    required this.switch_,
    required this.port,
    required this.blade,
    required this.justport,
    required this.graphId,
    required this.assetId,
    this.vlans = const [],
    this.vlans6 = const [],
  });

  /// Unique identifier for the switchport.
  int switchportId;

  /// Unique identifier for the switch associated with the switchport.
  String switchId;

  /// Name of the switch associated with the switchport.
  String switch_;

  /// Port name on the switch.
  String port;

  /// Blade name associated with the port.
  String blade;

  /// Port identifier.
  String justport;

  /// Identifier for the graph associated with the switchport.
  String graphId;

  /// Unique identifier of the asset associated with the switchport.
  int assetId;

  /// List of VLANs associated with the switchport.
  List<String> vlans;

  /// List of IPv6 VLANs associated with the switchport.
  List<String> vlans6;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerSwitchport &&
    other.switchportId == switchportId &&
    other.switchId == switchId &&
    other.switch_ == switch_ &&
    other.port == port &&
    other.blade == blade &&
    other.justport == justport &&
    other.graphId == graphId &&
    other.assetId == assetId &&
    _deepEquality.equals(other.vlans, vlans) &&
    _deepEquality.equals(other.vlans6, vlans6);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (switchportId.hashCode) +
    (switchId.hashCode) +
    (switch_.hashCode) +
    (port.hashCode) +
    (blade.hashCode) +
    (justport.hashCode) +
    (graphId.hashCode) +
    (assetId.hashCode) +
    (vlans.hashCode) +
    (vlans6.hashCode);

  @override
  String toString() => 'ServerSwitchport[switchportId=$switchportId, switchId=$switchId, switch_=$switch_, port=$port, blade=$blade, justport=$justport, graphId=$graphId, assetId=$assetId, vlans=$vlans, vlans6=$vlans6]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'switchport_id'] = this.switchportId;
      json[r'switch_id'] = this.switchId;
      json[r'switch'] = this.switch_;
      json[r'port'] = this.port;
      json[r'blade'] = this.blade;
      json[r'justport'] = this.justport;
      json[r'graph_id'] = this.graphId;
      json[r'asset_id'] = this.assetId;
      json[r'vlans'] = this.vlans;
      json[r'vlans6'] = this.vlans6;
    return json;
  }

  /// Returns a new [ServerSwitchport] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerSwitchport? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'switchport_id'), 'Required key "ServerSwitchport[switchport_id]" is missing from JSON.');
        assert(json[r'switchport_id'] != null, 'Required key "ServerSwitchport[switchport_id]" has a null value in JSON.');
        assert(json.containsKey(r'switch_id'), 'Required key "ServerSwitchport[switch_id]" is missing from JSON.');
        assert(json[r'switch_id'] != null, 'Required key "ServerSwitchport[switch_id]" has a null value in JSON.');
        assert(json.containsKey(r'switch'), 'Required key "ServerSwitchport[switch]" is missing from JSON.');
        assert(json[r'switch'] != null, 'Required key "ServerSwitchport[switch]" has a null value in JSON.');
        assert(json.containsKey(r'port'), 'Required key "ServerSwitchport[port]" is missing from JSON.');
        assert(json[r'port'] != null, 'Required key "ServerSwitchport[port]" has a null value in JSON.');
        assert(json.containsKey(r'blade'), 'Required key "ServerSwitchport[blade]" is missing from JSON.');
        assert(json[r'blade'] != null, 'Required key "ServerSwitchport[blade]" has a null value in JSON.');
        assert(json.containsKey(r'justport'), 'Required key "ServerSwitchport[justport]" is missing from JSON.');
        assert(json[r'justport'] != null, 'Required key "ServerSwitchport[justport]" has a null value in JSON.');
        assert(json.containsKey(r'graph_id'), 'Required key "ServerSwitchport[graph_id]" is missing from JSON.');
        assert(json[r'graph_id'] != null, 'Required key "ServerSwitchport[graph_id]" has a null value in JSON.');
        assert(json.containsKey(r'asset_id'), 'Required key "ServerSwitchport[asset_id]" is missing from JSON.');
        assert(json[r'asset_id'] != null, 'Required key "ServerSwitchport[asset_id]" has a null value in JSON.');
        return true;
      }());

      return ServerSwitchport(
        switchportId: mapValueOfType<int>(json, r'switchport_id')!,
        switchId: mapValueOfType<String>(json, r'switch_id')!,
        switch_: mapValueOfType<String>(json, r'switch')!,
        port: mapValueOfType<String>(json, r'port')!,
        blade: mapValueOfType<String>(json, r'blade')!,
        justport: mapValueOfType<String>(json, r'justport')!,
        graphId: mapValueOfType<String>(json, r'graph_id')!,
        assetId: mapValueOfType<int>(json, r'asset_id')!,
        vlans: json[r'vlans'] is Iterable
            ? (json[r'vlans'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        vlans6: json[r'vlans6'] is Iterable
            ? (json[r'vlans6'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ServerSwitchport> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerSwitchport>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerSwitchport.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerSwitchport> mapFromJson(dynamic json) {
    final map = <String, ServerSwitchport>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerSwitchport.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerSwitchport-objects as value to a dart map
  static Map<String, List<ServerSwitchport>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerSwitchport>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerSwitchport.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'switchport_id',
    'switch_id',
    'switch',
    'port',
    'blade',
    'justport',
    'graph_id',
    'asset_id',
  };
}

