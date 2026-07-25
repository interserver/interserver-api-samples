//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BackupRow {
  /// Returns a new [BackupRow] instance.
  BackupRow({
    this.backupId,
    this.backupName,
    this.backupCost,
    this.backupUsername,
    this.backupStatus,
    this.servicesName,
  });

  /// The id of the backup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupId;

  /// The name of the backup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupName;

  /// The cost of the backup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupCost;

  /// The username of the backup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupUsername;

  /// The status of the backup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupStatus;

  /// The services name of the backup.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackupRow &&
    other.backupId == backupId &&
    other.backupName == backupName &&
    other.backupCost == backupCost &&
    other.backupUsername == backupUsername &&
    other.backupStatus == backupStatus &&
    other.servicesName == servicesName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backupId == null ? 0 : backupId!.hashCode) +
    (backupName == null ? 0 : backupName!.hashCode) +
    (backupCost == null ? 0 : backupCost!.hashCode) +
    (backupUsername == null ? 0 : backupUsername!.hashCode) +
    (backupStatus == null ? 0 : backupStatus!.hashCode) +
    (servicesName == null ? 0 : servicesName!.hashCode);

  @override
  String toString() => 'BackupRow[backupId=$backupId, backupName=$backupName, backupCost=$backupCost, backupUsername=$backupUsername, backupStatus=$backupStatus, servicesName=$servicesName]';

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
    if (this.backupCost != null) {
      json[r'backup_cost'] = this.backupCost;
    } else {
      json[r'backup_cost'] = null;
    }
    if (this.backupUsername != null) {
      json[r'backup_username'] = this.backupUsername;
    } else {
      json[r'backup_username'] = null;
    }
    if (this.backupStatus != null) {
      json[r'backup_status'] = this.backupStatus;
    } else {
      json[r'backup_status'] = null;
    }
    if (this.servicesName != null) {
      json[r'services_name'] = this.servicesName;
    } else {
      json[r'services_name'] = null;
    }
    return json;
  }

  /// Returns a new [BackupRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackupRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BackupRow(
        backupId: mapValueOfType<String>(json, r'backup_id'),
        backupName: mapValueOfType<String>(json, r'backup_name'),
        backupCost: mapValueOfType<String>(json, r'backup_cost'),
        backupUsername: mapValueOfType<String>(json, r'backup_username'),
        backupStatus: mapValueOfType<String>(json, r'backup_status'),
        servicesName: mapValueOfType<String>(json, r'services_name'),
      );
    }
    return null;
  }

  static List<BackupRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackupRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackupRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackupRow> mapFromJson(dynamic json) {
    final map = <String, BackupRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackupRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackupRow-objects as value to a dart map
  static Map<String, List<BackupRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackupRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackupRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

