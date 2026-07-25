//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BackupServiceInfo {
  /// Returns a new [BackupServiceInfo] instance.
  BackupServiceInfo({
    this.backupId,
    this.backupServer,
    this.backupUsername,
    this.backupType,
    this.backupCurrency,
    this.backupOrderDate,
    this.backupCustid,
    this.backupQuota,
    this.backupIp,
    this.backupStatus,
    this.backupInvoice,
    this.backupCoupon,
    this.backupExtra,
    this.backupServerStatus,
    this.backupComment,
  });

  /// Backup ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupId;

  /// Backup server ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupServer;

  /// Backup username.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupUsername;

  /// Backup type.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupType;

  /// Backup currency.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupCurrency;

  /// Backup order date.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupOrderDate;

  /// Backup customer ID.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupCustid;

  /// Backup quota.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupQuota;

  /// Backup IP address.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupIp;

  /// Backup status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupStatus;

  /// Backup invoice.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupInvoice;

  /// Backup coupon.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupCoupon;

  /// Backup extra information.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupExtra;

  /// Backup server status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupServerStatus;

  /// Backup comment.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? backupComment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackupServiceInfo &&
    other.backupId == backupId &&
    other.backupServer == backupServer &&
    other.backupUsername == backupUsername &&
    other.backupType == backupType &&
    other.backupCurrency == backupCurrency &&
    other.backupOrderDate == backupOrderDate &&
    other.backupCustid == backupCustid &&
    other.backupQuota == backupQuota &&
    other.backupIp == backupIp &&
    other.backupStatus == backupStatus &&
    other.backupInvoice == backupInvoice &&
    other.backupCoupon == backupCoupon &&
    other.backupExtra == backupExtra &&
    other.backupServerStatus == backupServerStatus &&
    other.backupComment == backupComment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backupId == null ? 0 : backupId!.hashCode) +
    (backupServer == null ? 0 : backupServer!.hashCode) +
    (backupUsername == null ? 0 : backupUsername!.hashCode) +
    (backupType == null ? 0 : backupType!.hashCode) +
    (backupCurrency == null ? 0 : backupCurrency!.hashCode) +
    (backupOrderDate == null ? 0 : backupOrderDate!.hashCode) +
    (backupCustid == null ? 0 : backupCustid!.hashCode) +
    (backupQuota == null ? 0 : backupQuota!.hashCode) +
    (backupIp == null ? 0 : backupIp!.hashCode) +
    (backupStatus == null ? 0 : backupStatus!.hashCode) +
    (backupInvoice == null ? 0 : backupInvoice!.hashCode) +
    (backupCoupon == null ? 0 : backupCoupon!.hashCode) +
    (backupExtra == null ? 0 : backupExtra!.hashCode) +
    (backupServerStatus == null ? 0 : backupServerStatus!.hashCode) +
    (backupComment == null ? 0 : backupComment!.hashCode);

  @override
  String toString() => 'BackupServiceInfo[backupId=$backupId, backupServer=$backupServer, backupUsername=$backupUsername, backupType=$backupType, backupCurrency=$backupCurrency, backupOrderDate=$backupOrderDate, backupCustid=$backupCustid, backupQuota=$backupQuota, backupIp=$backupIp, backupStatus=$backupStatus, backupInvoice=$backupInvoice, backupCoupon=$backupCoupon, backupExtra=$backupExtra, backupServerStatus=$backupServerStatus, backupComment=$backupComment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.backupId != null) {
      json[r'backup_id'] = this.backupId;
    } else {
      json[r'backup_id'] = null;
    }
    if (this.backupServer != null) {
      json[r'backup_server'] = this.backupServer;
    } else {
      json[r'backup_server'] = null;
    }
    if (this.backupUsername != null) {
      json[r'backup_username'] = this.backupUsername;
    } else {
      json[r'backup_username'] = null;
    }
    if (this.backupType != null) {
      json[r'backup_type'] = this.backupType;
    } else {
      json[r'backup_type'] = null;
    }
    if (this.backupCurrency != null) {
      json[r'backup_currency'] = this.backupCurrency;
    } else {
      json[r'backup_currency'] = null;
    }
    if (this.backupOrderDate != null) {
      json[r'backup_order_date'] = this.backupOrderDate;
    } else {
      json[r'backup_order_date'] = null;
    }
    if (this.backupCustid != null) {
      json[r'backup_custid'] = this.backupCustid;
    } else {
      json[r'backup_custid'] = null;
    }
    if (this.backupQuota != null) {
      json[r'backup_quota'] = this.backupQuota;
    } else {
      json[r'backup_quota'] = null;
    }
    if (this.backupIp != null) {
      json[r'backup_ip'] = this.backupIp;
    } else {
      json[r'backup_ip'] = null;
    }
    if (this.backupStatus != null) {
      json[r'backup_status'] = this.backupStatus;
    } else {
      json[r'backup_status'] = null;
    }
    if (this.backupInvoice != null) {
      json[r'backup_invoice'] = this.backupInvoice;
    } else {
      json[r'backup_invoice'] = null;
    }
    if (this.backupCoupon != null) {
      json[r'backup_coupon'] = this.backupCoupon;
    } else {
      json[r'backup_coupon'] = null;
    }
    if (this.backupExtra != null) {
      json[r'backup_extra'] = this.backupExtra;
    } else {
      json[r'backup_extra'] = null;
    }
    if (this.backupServerStatus != null) {
      json[r'backup_server_status'] = this.backupServerStatus;
    } else {
      json[r'backup_server_status'] = null;
    }
    if (this.backupComment != null) {
      json[r'backup_comment'] = this.backupComment;
    } else {
      json[r'backup_comment'] = null;
    }
    return json;
  }

  /// Returns a new [BackupServiceInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackupServiceInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return BackupServiceInfo(
        backupId: mapValueOfType<String>(json, r'backup_id'),
        backupServer: mapValueOfType<String>(json, r'backup_server'),
        backupUsername: mapValueOfType<String>(json, r'backup_username'),
        backupType: mapValueOfType<String>(json, r'backup_type'),
        backupCurrency: mapValueOfType<String>(json, r'backup_currency'),
        backupOrderDate: mapValueOfType<String>(json, r'backup_order_date'),
        backupCustid: mapValueOfType<String>(json, r'backup_custid'),
        backupQuota: mapValueOfType<String>(json, r'backup_quota'),
        backupIp: mapValueOfType<String>(json, r'backup_ip'),
        backupStatus: mapValueOfType<String>(json, r'backup_status'),
        backupInvoice: mapValueOfType<String>(json, r'backup_invoice'),
        backupCoupon: mapValueOfType<String>(json, r'backup_coupon'),
        backupExtra: mapValueOfType<String>(json, r'backup_extra'),
        backupServerStatus: mapValueOfType<String>(json, r'backup_server_status'),
        backupComment: mapValueOfType<String>(json, r'backup_comment'),
      );
    }
    return null;
  }

  static List<BackupServiceInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackupServiceInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackupServiceInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackupServiceInfo> mapFromJson(dynamic json) {
    final map = <String, BackupServiceInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackupServiceInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackupServiceInfo-objects as value to a dart map
  static Map<String, List<BackupServiceInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackupServiceInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackupServiceInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

