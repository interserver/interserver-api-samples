part of swagger.api;

class BackupRow {
  /* The id of the backup. */
  String backupId = null;
/* The name of the backup. */
  String backupName = null;
/* The cost of the backup. */
  String backupCost = null;
/* The username of the backup. */
  String backupUsername = null;
/* The status of the backup. */
  String backupStatus = null;
/* The services name of the backup. */
  String servicesName = null;

  BackupRow();

  @override
  String toString() {
    return 'BackupRow[backupId=$backupId, backupName=$backupName, backupCost=$backupCost, backupUsername=$backupUsername, backupStatus=$backupStatus, servicesName=$servicesName, ]';
  }

  BackupRow.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    backupId = json['backup_id'];
    backupName = json['backup_name'];
    backupCost = json['backup_cost'];
    backupUsername = json['backup_username'];
    backupStatus = json['backup_status'];
    servicesName = json['services_name'];
  }

  Map<String, dynamic> toJson() {
    return {
      'backup_id': backupId,
      'backup_name': backupName,
      'backup_cost': backupCost,
      'backup_username': backupUsername,
      'backup_status': backupStatus,
      'services_name': servicesName
     };
  }

  static List<BackupRow> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupRow>() : json.map((value) => new BackupRow.fromJson(value)).toList();
  }

  static Map<String, BackupRow> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupRow>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupRow.fromJson(value));
    }
    return map;
  }
}
