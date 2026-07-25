//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerOrderConfigIds {
  /// Returns a new [ServerOrderConfigIds] instance.
  ServerOrderConfigIds({
    this.memory,
    this.bandwidth,
    this.ips,
    this.os,
    this.cp,
    this.raid,
    this.hd,
  });

  /// Memory configuration ID for the server order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? memory;

  /// Bandwidth configuration ID for the server order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? bandwidth;

  /// IPs configuration ID for the server order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ips;

  /// Operating System configuration ID for the server order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? os;

  /// Control Panel configuration ID for the server order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cp;

  /// RAID configuration ID for the server order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? raid;

  /// Hard Drives configuration ID for the server order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerOrderConfigIds &&
    other.memory == memory &&
    other.bandwidth == bandwidth &&
    other.ips == ips &&
    other.os == os &&
    other.cp == cp &&
    other.raid == raid &&
    other.hd == hd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (memory == null ? 0 : memory!.hashCode) +
    (bandwidth == null ? 0 : bandwidth!.hashCode) +
    (ips == null ? 0 : ips!.hashCode) +
    (os == null ? 0 : os!.hashCode) +
    (cp == null ? 0 : cp!.hashCode) +
    (raid == null ? 0 : raid!.hashCode) +
    (hd == null ? 0 : hd!.hashCode);

  @override
  String toString() => 'ServerOrderConfigIds[memory=$memory, bandwidth=$bandwidth, ips=$ips, os=$os, cp=$cp, raid=$raid, hd=$hd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.memory != null) {
      json[r'memory'] = this.memory;
    } else {
      json[r'memory'] = null;
    }
    if (this.bandwidth != null) {
      json[r'bandwidth'] = this.bandwidth;
    } else {
      json[r'bandwidth'] = null;
    }
    if (this.ips != null) {
      json[r'ips'] = this.ips;
    } else {
      json[r'ips'] = null;
    }
    if (this.os != null) {
      json[r'os'] = this.os;
    } else {
      json[r'os'] = null;
    }
    if (this.cp != null) {
      json[r'cp'] = this.cp;
    } else {
      json[r'cp'] = null;
    }
    if (this.raid != null) {
      json[r'raid'] = this.raid;
    } else {
      json[r'raid'] = null;
    }
    if (this.hd != null) {
      json[r'hd'] = this.hd;
    } else {
      json[r'hd'] = null;
    }
    return json;
  }

  /// Returns a new [ServerOrderConfigIds] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerOrderConfigIds? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerOrderConfigIds(
        memory: mapValueOfType<int>(json, r'memory'),
        bandwidth: mapValueOfType<String>(json, r'bandwidth'),
        ips: mapValueOfType<String>(json, r'ips'),
        os: mapValueOfType<String>(json, r'os'),
        cp: mapValueOfType<int>(json, r'cp'),
        raid: mapValueOfType<String>(json, r'raid'),
        hd: mapValueOfType<String>(json, r'hd'),
      );
    }
    return null;
  }

  static List<ServerOrderConfigIds> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerOrderConfigIds>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerOrderConfigIds.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerOrderConfigIds> mapFromJson(dynamic json) {
    final map = <String, ServerOrderConfigIds>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerOrderConfigIds.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerOrderConfigIds-objects as value to a dart map
  static Map<String, List<ServerOrderConfigIds>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerOrderConfigIds>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerOrderConfigIds.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

