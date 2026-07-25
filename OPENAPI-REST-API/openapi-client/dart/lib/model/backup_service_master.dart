//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BackupServiceMaster {
  /// Returns a new [BackupServiceMaster] instance.
  BackupServiceMaster({
    this.backupId,
    this.backupName,
    this.backupIp,
    this.backupType,
    this.backupHdsize,
    this.backupHdfree,
    this.backupLastUpdate,
    this.backupAvailable,
    this.backupIowait,
    this.backupOrder,
  });

  /// Backup ID of the service master.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? backupId;

  /// Name of the backup service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupName;

  /// IP address of the backup service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupIp;

  /// Type of the backup service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? backupType;

  /// Size of the backup service's hard drive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? backupHdsize;

  /// Amount of free space on the backup service's hard drive.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? backupHdfree;

  /// Last update timestamp of the backup service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupLastUpdate;

  /// Availability status of the backup service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? backupAvailable;

  /// I/O wait status of the backup service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? backupIowait;

  /// Order associated with the backup service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? backupOrder;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackupServiceMaster &&
    other.backupId == backupId &&
    other.backupName == backupName &&
    other.backupIp == backupIp &&
    other.backupType == backupType &&
    other.backupHdsize == backupHdsize &&
    other.backupHdfree == backupHdfree &&
    other.backupLastUpdate == backupLastUpdate &&
    other.backupAvailable == backupAvailable &&
    other.backupIowait == backupIowait &&
    other.backupOrder == backupOrder;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backupId == null ? 0 : backupId!.hashCode) +
    (backupName == null ? 0 : backupName!.hashCode) +
    (backupIp == null ? 0 : backupIp!.hashCode) +
    (backupType == null ? 0 : backupType!.hashCode) +
    (backupHdsize == null ? 0 : backupHdsize!.hashCode) +
    (backupHdfree == null ? 0 : backupHdfree!.hashCode) +
    (backupLastUpdate == null ? 0 : backupLastUpdate!.hashCode) +
    (backupAvailable == null ? 0 : backupAvailable!.hashCode) +
    (backupIowait == null ? 0 : backupIowait!.hashCode) +
    (backupOrder == null ? 0 : backupOrder!.hashCode);

  @override
  String toString() => 'BackupServiceMaster[backupId=$backupId, backupName=$backupName, backupIp=$backupIp, backupType=$backupType, backupHdsize=$backupHdsize, backupHdfree=$backupHdfree, backupLastUpdate=$backupLastUpdate, backupAvailable=$backupAvailable, backupIowait=$backupIowait, backupOrder=$backupOrder]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.backupId != null) {
      json[r'backup_id'] = this.backupId;
    } else {
      json[r'backup_id'] = null;
    }
    if (this.backupName != null) {
      json[r'backup_name'] = this.backupName;
    } else {
      json[r'backup_name'] = null;
    }
    if (this.backupIp != null) {
      json[r'backup_ip'] = this.backupIp;
    } else {
      json[r'backup_ip'] = null;
    }
    if (this.backupType != null) {
      json[r'backup_type'] = this.backupType;
    } else {
      json[r'backup_type'] = null;
    }
    if (this.backupHdsize != null) {
      json[r'backup_hdsize'] = this.backupHdsize;
    } else {
      json[r'backup_hdsize'] = null;
    }
    if (this.backupHdfree != null) {
      json[r'backup_hdfree'] = this.backupHdfree;
    } else {
      json[r'backup_hdfree'] = null;
    }
    if (this.backupLastUpdate != null) {
      json[r'backup_last_update'] = this.backupLastUpdate;
    } else {
      json[r'backup_last_update'] = null;
    }
    if (this.backupAvailable != null) {
      json[r'backup_available'] = this.backupAvailable;
    } else {
      json[r'backup_available'] = null;
    }
    if (this.backupIowait != null) {
      json[r'backup_iowait'] = this.backupIowait;
    } else {
      json[r'backup_iowait'] = null;
    }
    if (this.backupOrder != null) {
      json[r'backup_order'] = this.backupOrder;
    } else {
      json[r'backup_order'] = null;
    }
    return json;
  }

  /// Returns a new [BackupServiceMaster] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackupServiceMaster? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BackupServiceMaster(
        backupId: mapValueOfType<int>(json, r'backup_id'),
        backupName: mapValueOfType<String>(json, r'backup_name'),
        backupIp: mapValueOfType<String>(json, r'backup_ip'),
        backupType: mapValueOfType<int>(json, r'backup_type'),
        backupHdsize: mapValueOfType<int>(json, r'backup_hdsize'),
        backupHdfree: mapValueOfType<int>(json, r'backup_hdfree'),
        backupLastUpdate: mapValueOfType<String>(json, r'backup_last_update'),
        backupAvailable: mapValueOfType<int>(json, r'backup_available'),
        backupIowait: mapValueOfType<int>(json, r'backup_iowait'),
        backupOrder: mapValueOfType<int>(json, r'backup_order'),
      );
    }
    return null;
  }

  static List<BackupServiceMaster> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackupServiceMaster>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackupServiceMaster.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackupServiceMaster> mapFromJson(dynamic json) {
    final map = <String, BackupServiceMaster>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackupServiceMaster.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackupServiceMaster-objects as value to a dart map
  static Map<String, List<BackupServiceMaster>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackupServiceMaster>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackupServiceMaster.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

