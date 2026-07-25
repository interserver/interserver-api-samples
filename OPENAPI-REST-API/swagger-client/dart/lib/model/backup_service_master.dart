part of swagger.api;

class BackupServiceMaster {
  /* Backup ID of the service master. */
  int backupId = null;
/* Name of the backup service. */
  String backupName = null;
/* IP address of the backup service. */
  String backupIp = null;
/* Type of the backup service. */
  int backupType = null;
/* Size of the backup service's hard drive. */
  int backupHdsize = null;
/* Amount of free space on the backup service's hard drive. */
  int backupHdfree = null;
/* Last update timestamp of the backup service. */
  String backupLastUpdate = null;
/* Availability status of the backup service. */
  int backupAvailable = null;
/* I/O wait status of the backup service. */
  int backupIowait = null;
/* Order associated with the backup service. */
  int backupOrder = null;

  BackupServiceMaster();

  @override
  String toString() {
    return 'BackupServiceMaster[backupId=$backupId, backupName=$backupName, backupIp=$backupIp, backupType=$backupType, backupHdsize=$backupHdsize, backupHdfree=$backupHdfree, backupLastUpdate=$backupLastUpdate, backupAvailable=$backupAvailable, backupIowait=$backupIowait, backupOrder=$backupOrder, ]';
  }

  BackupServiceMaster.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    backupId = json['backup_id'];
    backupName = json['backup_name'];
    backupIp = json['backup_ip'];
    backupType = json['backup_type'];
    backupHdsize = json['backup_hdsize'];
    backupHdfree = json['backup_hdfree'];
    backupLastUpdate = json['backup_last_update'];
    backupAvailable = json['backup_available'];
    backupIowait = json['backup_iowait'];
    backupOrder = json['backup_order'];
  }

  Map<String, dynamic> toJson() {
    return {
      'backup_id': backupId,
      'backup_name': backupName,
      'backup_ip': backupIp,
      'backup_type': backupType,
      'backup_hdsize': backupHdsize,
      'backup_hdfree': backupHdfree,
      'backup_last_update': backupLastUpdate,
      'backup_available': backupAvailable,
      'backup_iowait': backupIowait,
      'backup_order': backupOrder
     };
  }

  static List<BackupServiceMaster> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupServiceMaster>() : json.map((value) => new BackupServiceMaster.fromJson(value)).toList();
  }

  static Map<String, BackupServiceMaster> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupServiceMaster>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupServiceMaster.fromJson(value));
    }
    return map;
  }
}
