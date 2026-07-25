//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerOrder {
  /// Returns a new [ServerOrder] instance.
  ServerOrder({
    this.formValues,
    this.configIds,
    this.cpu,
    this.fieldLabel,
    this.cpuLi,
    this.memoryLi,
    this.bandwidthLi,
    this.ipsLi,
    this.osLi,
    this.cpLi,
    this.raidLi = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderFormValues? formValues;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderConfigIds? configIds;

  /// Number of CPUs for the server order.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cpu;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderFieldLabels? fieldLabel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderCpuLi? cpuLi;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderMemoryLi? memoryLi;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderBandwidthLi? bandwidthLi;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderIpsLi? ipsLi;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderOsLi? osLi;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderCpLi? cpLi;

  /// RAID options for the server order.
  List<ServerOrderRAID> raidLi;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerOrder &&
    other.formValues == formValues &&
    other.configIds == configIds &&
    other.cpu == cpu &&
    other.fieldLabel == fieldLabel &&
    other.cpuLi == cpuLi &&
    other.memoryLi == memoryLi &&
    other.bandwidthLi == bandwidthLi &&
    other.ipsLi == ipsLi &&
    other.osLi == osLi &&
    other.cpLi == cpLi &&
    _deepEquality.equals(other.raidLi, raidLi);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formValues == null ? 0 : formValues!.hashCode) +
    (configIds == null ? 0 : configIds!.hashCode) +
    (cpu == null ? 0 : cpu!.hashCode) +
    (fieldLabel == null ? 0 : fieldLabel!.hashCode) +
    (cpuLi == null ? 0 : cpuLi!.hashCode) +
    (memoryLi == null ? 0 : memoryLi!.hashCode) +
    (bandwidthLi == null ? 0 : bandwidthLi!.hashCode) +
    (ipsLi == null ? 0 : ipsLi!.hashCode) +
    (osLi == null ? 0 : osLi!.hashCode) +
    (cpLi == null ? 0 : cpLi!.hashCode) +
    (raidLi.hashCode);

  @override
  String toString() => 'ServerOrder[formValues=$formValues, configIds=$configIds, cpu=$cpu, fieldLabel=$fieldLabel, cpuLi=$cpuLi, memoryLi=$memoryLi, bandwidthLi=$bandwidthLi, ipsLi=$ipsLi, osLi=$osLi, cpLi=$cpLi, raidLi=$raidLi]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.formValues != null) {
      json[r'form_values'] = this.formValues;
    } else {
      json[r'form_values'] = null;
    }
    if (this.configIds != null) {
      json[r'config_ids'] = this.configIds;
    } else {
      json[r'config_ids'] = null;
    }
    if (this.cpu != null) {
      json[r'cpu'] = this.cpu;
    } else {
      json[r'cpu'] = null;
    }
    if (this.fieldLabel != null) {
      json[r'field_label'] = this.fieldLabel;
    } else {
      json[r'field_label'] = null;
    }
    if (this.cpuLi != null) {
      json[r'cpu_li'] = this.cpuLi;
    } else {
      json[r'cpu_li'] = null;
    }
    if (this.memoryLi != null) {
      json[r'memory_li'] = this.memoryLi;
    } else {
      json[r'memory_li'] = null;
    }
    if (this.bandwidthLi != null) {
      json[r'bandwidth_li'] = this.bandwidthLi;
    } else {
      json[r'bandwidth_li'] = null;
    }
    if (this.ipsLi != null) {
      json[r'ips_li'] = this.ipsLi;
    } else {
      json[r'ips_li'] = null;
    }
    if (this.osLi != null) {
      json[r'os_li'] = this.osLi;
    } else {
      json[r'os_li'] = null;
    }
    if (this.cpLi != null) {
      json[r'cp_li'] = this.cpLi;
    } else {
      json[r'cp_li'] = null;
    }
      json[r'raid_li'] = this.raidLi;
    return json;
  }

  /// Returns a new [ServerOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerOrder(
        formValues: ServerOrderFormValues.fromJson(json[r'form_values']),
        configIds: ServerOrderConfigIds.fromJson(json[r'config_ids']),
        cpu: mapValueOfType<int>(json, r'cpu'),
        fieldLabel: ServerOrderFieldLabels.fromJson(json[r'field_label']),
        cpuLi: ServerOrderCpuLi.fromJson(json[r'cpu_li']),
        memoryLi: ServerOrderMemoryLi.fromJson(json[r'memory_li']),
        bandwidthLi: ServerOrderBandwidthLi.fromJson(json[r'bandwidth_li']),
        ipsLi: ServerOrderIpsLi.fromJson(json[r'ips_li']),
        osLi: ServerOrderOsLi.fromJson(json[r'os_li']),
        cpLi: ServerOrderCpLi.fromJson(json[r'cp_li']),
        raidLi: ServerOrderRAID.listFromJson(json[r'raid_li']),
      );
    }
    return null;
  }

  static List<ServerOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerOrder> mapFromJson(dynamic json) {
    final map = <String, ServerOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerOrder-objects as value to a dart map
  static Map<String, List<ServerOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

