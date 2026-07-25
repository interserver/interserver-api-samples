//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetScrubIpDetails200ResponseFilterFirewallRulesInner {
  /// Returns a new [GetScrubIpDetails200ResponseFilterFirewallRulesInner] instance.
  GetScrubIpDetails200ResponseFilterFirewallRulesInner({
    this.id,
    this.sourceIp,
    this.destinationIp,
    this.protocolId,
    this.sourcePort,
    this.destinationPort,
    this.xdpAction,
    this.globalDrop,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? protocolId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourcePort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationPort;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? xdpAction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? globalDrop;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetScrubIpDetails200ResponseFilterFirewallRulesInner &&
    other.id == id &&
    other.sourceIp == sourceIp &&
    other.destinationIp == destinationIp &&
    other.protocolId == protocolId &&
    other.sourcePort == sourcePort &&
    other.destinationPort == destinationPort &&
    other.xdpAction == xdpAction &&
    other.globalDrop == globalDrop;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (sourceIp == null ? 0 : sourceIp!.hashCode) +
    (destinationIp == null ? 0 : destinationIp!.hashCode) +
    (protocolId == null ? 0 : protocolId!.hashCode) +
    (sourcePort == null ? 0 : sourcePort!.hashCode) +
    (destinationPort == null ? 0 : destinationPort!.hashCode) +
    (xdpAction == null ? 0 : xdpAction!.hashCode) +
    (globalDrop == null ? 0 : globalDrop!.hashCode);

  @override
  String toString() => 'GetScrubIpDetails200ResponseFilterFirewallRulesInner[id=$id, sourceIp=$sourceIp, destinationIp=$destinationIp, protocolId=$protocolId, sourcePort=$sourcePort, destinationPort=$destinationPort, xdpAction=$xdpAction, globalDrop=$globalDrop]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.sourceIp != null) {
      json[r'source_ip'] = this.sourceIp;
    } else {
      json[r'source_ip'] = null;
    }
    if (this.destinationIp != null) {
      json[r'destination_ip'] = this.destinationIp;
    } else {
      json[r'destination_ip'] = null;
    }
    if (this.protocolId != null) {
      json[r'protocol_id'] = this.protocolId;
    } else {
      json[r'protocol_id'] = null;
    }
    if (this.sourcePort != null) {
      json[r'source_port'] = this.sourcePort;
    } else {
      json[r'source_port'] = null;
    }
    if (this.destinationPort != null) {
      json[r'destination_port'] = this.destinationPort;
    } else {
      json[r'destination_port'] = null;
    }
    if (this.xdpAction != null) {
      json[r'xdp_action'] = this.xdpAction;
    } else {
      json[r'xdp_action'] = null;
    }
    if (this.globalDrop != null) {
      json[r'global_drop'] = this.globalDrop;
    } else {
      json[r'global_drop'] = null;
    }
    return json;
  }

  /// Returns a new [GetScrubIpDetails200ResponseFilterFirewallRulesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetScrubIpDetails200ResponseFilterFirewallRulesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetScrubIpDetails200ResponseFilterFirewallRulesInner(
        id: mapValueOfType<String>(json, r'id'),
        sourceIp: mapValueOfType<String>(json, r'source_ip'),
        destinationIp: mapValueOfType<String>(json, r'destination_ip'),
        protocolId: mapValueOfType<String>(json, r'protocol_id'),
        sourcePort: mapValueOfType<String>(json, r'source_port'),
        destinationPort: mapValueOfType<String>(json, r'destination_port'),
        xdpAction: mapValueOfType<String>(json, r'xdp_action'),
        globalDrop: mapValueOfType<String>(json, r'global_drop'),
      );
    }
    return null;
  }

  static List<GetScrubIpDetails200ResponseFilterFirewallRulesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetScrubIpDetails200ResponseFilterFirewallRulesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetScrubIpDetails200ResponseFilterFirewallRulesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetScrubIpDetails200ResponseFilterFirewallRulesInner> mapFromJson(dynamic json) {
    final map = <String, GetScrubIpDetails200ResponseFilterFirewallRulesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetScrubIpDetails200ResponseFilterFirewallRulesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetScrubIpDetails200ResponseFilterFirewallRulesInner-objects as value to a dart map
  static Map<String, List<GetScrubIpDetails200ResponseFilterFirewallRulesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetScrubIpDetails200ResponseFilterFirewallRulesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetScrubIpDetails200ResponseFilterFirewallRulesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

