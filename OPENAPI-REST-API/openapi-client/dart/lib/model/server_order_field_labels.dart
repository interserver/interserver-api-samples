//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerOrderFieldLabels {
  /// Returns a new [ServerOrderFieldLabels] instance.
  ServerOrderFieldLabels({
    this.bandwidth,
    this.ips,
    this.os,
    this.cp,
    this.raid,
    this.memory,
    this.hd,
  });

  /// Bandwidth field label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderFieldLabel? bandwidth;

  /// IPs field label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderFieldLabel? ips;

  /// Operating System field label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderFieldLabel? os;

  /// Control Panel field label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderFieldLabel? cp;

  /// RAID field label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderFieldLabel? raid;

  /// Memory field label.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderFieldLabel? memory;

  /// Hard Drives field label
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderFieldLabel? hd;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerOrderFieldLabels &&
    other.bandwidth == bandwidth &&
    other.ips == ips &&
    other.os == os &&
    other.cp == cp &&
    other.raid == raid &&
    other.memory == memory &&
    other.hd == hd;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (bandwidth == null ? 0 : bandwidth!.hashCode) +
    (ips == null ? 0 : ips!.hashCode) +
    (os == null ? 0 : os!.hashCode) +
    (cp == null ? 0 : cp!.hashCode) +
    (raid == null ? 0 : raid!.hashCode) +
    (memory == null ? 0 : memory!.hashCode) +
    (hd == null ? 0 : hd!.hashCode);

  @override
  String toString() => 'ServerOrderFieldLabels[bandwidth=$bandwidth, ips=$ips, os=$os, cp=$cp, raid=$raid, memory=$memory, hd=$hd]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.memory != null) {
      json[r'memory'] = this.memory;
    } else {
      json[r'memory'] = null;
    }
    if (this.hd != null) {
      json[r'hd'] = this.hd;
    } else {
      json[r'hd'] = null;
    }
    return json;
  }

  /// Returns a new [ServerOrderFieldLabels] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerOrderFieldLabels? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerOrderFieldLabels(
        bandwidth: ServerOrderFieldLabel.fromJson(json[r'bandwidth']),
        ips: ServerOrderFieldLabel.fromJson(json[r'ips']),
        os: ServerOrderFieldLabel.fromJson(json[r'os']),
        cp: ServerOrderFieldLabel.fromJson(json[r'cp']),
        raid: ServerOrderFieldLabel.fromJson(json[r'raid']),
        memory: ServerOrderFieldLabel.fromJson(json[r'memory']),
        hd: ServerOrderFieldLabel.fromJson(json[r'hd']),
      );
    }
    return null;
  }

  static List<ServerOrderFieldLabels> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerOrderFieldLabels>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerOrderFieldLabels.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerOrderFieldLabels> mapFromJson(dynamic json) {
    final map = <String, ServerOrderFieldLabels>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerOrderFieldLabels.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerOrderFieldLabels-objects as value to a dart map
  static Map<String, List<ServerOrderFieldLabels>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerOrderFieldLabels>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerOrderFieldLabels.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

