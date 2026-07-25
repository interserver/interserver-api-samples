part of swagger.api;

class BackupServiceInfo {
  /* Backup ID. */
  String backupId = null;
/* Backup server ID. */
  String backupServer = null;
/* Backup username. */
  String backupUsername = null;
/* Backup type. */
  String backupType = null;
/* Backup currency. */
  String backupCurrency = null;
/* Backup order date. */
  String backupOrderDate = null;
/* Backup customer ID. */
  String backupCustid = null;
/* Backup quota. */
  String backupQuota = null;
/* Backup IP address. */
  String backupIp = null;
/* Backup status. */
  String backupStatus = null;
/* Backup invoice. */
  String backupInvoice = null;
/* Backup coupon. */
  String backupCoupon = null;
/* Backup extra information. */
  String backupExtra = null;
/* Backup server status. */
  String backupServerStatus = null;
/* Backup comment. */
  String backupComment = null;

  BackupServiceInfo();

  @override
  String toString() {
    return 'BackupServiceInfo[backupId=$backupId, backupServer=$backupServer, backupUsername=$backupUsername, backupType=$backupType, backupCurrency=$backupCurrency, backupOrderDate=$backupOrderDate, backupCustid=$backupCustid, backupQuota=$backupQuota, backupIp=$backupIp, backupStatus=$backupStatus, backupInvoice=$backupInvoice, backupCoupon=$backupCoupon, backupExtra=$backupExtra, backupServerStatus=$backupServerStatus, backupComment=$backupComment, ]';
  }

  BackupServiceInfo.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    backupId = json['backup_id'];
    backupServer = json['backup_server'];
    backupUsername = json['backup_username'];
    backupType = json['backup_type'];
    backupCurrency = json['backup_currency'];
    backupOrderDate = json['backup_order_date'];
    backupCustid = json['backup_custid'];
    backupQuota = json['backup_quota'];
    backupIp = json['backup_ip'];
    backupStatus = json['backup_status'];
    backupInvoice = json['backup_invoice'];
    backupCoupon = json['backup_coupon'];
    backupExtra = json['backup_extra'];
    backupServerStatus = json['backup_server_status'];
    backupComment = json['backup_comment'];
  }

  Map<String, dynamic> toJson() {
    return {
      'backup_id': backupId,
      'backup_server': backupServer,
      'backup_username': backupUsername,
      'backup_type': backupType,
      'backup_currency': backupCurrency,
      'backup_order_date': backupOrderDate,
      'backup_custid': backupCustid,
      'backup_quota': backupQuota,
      'backup_ip': backupIp,
      'backup_status': backupStatus,
      'backup_invoice': backupInvoice,
      'backup_coupon': backupCoupon,
      'backup_extra': backupExtra,
      'backup_server_status': backupServerStatus,
      'backup_comment': backupComment
     };
  }

  static List<BackupServiceInfo> listFromJson(List<dynamic> json) {
    return json == null ? new List<BackupServiceInfo>() : json.map((value) => new BackupServiceInfo.fromJson(value)).toList();
  }

  static Map<String, BackupServiceInfo> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, BackupServiceInfo>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new BackupServiceInfo.fromJson(value));
    }
    return map;
  }
}
