//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailServiceInfo {
  /// Returns a new [MailServiceInfo] instance.
  MailServiceInfo({
    required this.mailId,
    required this.mailType,
    required this.mailCurrency,
    required this.mailOrderDate,
    required this.mailCustid,
    required this.mailQuota,
    required this.mailStatus,
    required this.mailInvoice,
    this.mailUsername,
    this.mailIp,
    this.mailCoupon,
    this.mailExtra,
    this.mailServerStatus,
    this.mailComment,
  });

  /// The ID of the mail service.
  String mailId;

  /// The type of mail service.
  String mailType;

  /// The currency of the mail service.
  String mailCurrency;

  /// The order date of the mail service.
  String mailOrderDate;

  /// The customer ID associated with the mail service.
  String mailCustid;

  /// The mail quota for the service.
  String mailQuota;

  /// The status of the mail service.
  String mailStatus;

  /// The invoice ID of the mail service.
  String mailInvoice;

  /// The username associated with the mail service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailUsername;

  /// The IP address associated with the mail service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailIp;

  /// The coupon associated with the mail service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailCoupon;

  /// Additional information for the mail service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailExtra;

  /// The server status of the mail service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailServerStatus;

  /// Additional comments for the mail service.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailComment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailServiceInfo &&
    other.mailId == mailId &&
    other.mailType == mailType &&
    other.mailCurrency == mailCurrency &&
    other.mailOrderDate == mailOrderDate &&
    other.mailCustid == mailCustid &&
    other.mailQuota == mailQuota &&
    other.mailStatus == mailStatus &&
    other.mailInvoice == mailInvoice &&
    other.mailUsername == mailUsername &&
    other.mailIp == mailIp &&
    other.mailCoupon == mailCoupon &&
    other.mailExtra == mailExtra &&
    other.mailServerStatus == mailServerStatus &&
    other.mailComment == mailComment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mailId.hashCode) +
    (mailType.hashCode) +
    (mailCurrency.hashCode) +
    (mailOrderDate.hashCode) +
    (mailCustid.hashCode) +
    (mailQuota.hashCode) +
    (mailStatus.hashCode) +
    (mailInvoice.hashCode) +
    (mailUsername == null ? 0 : mailUsername!.hashCode) +
    (mailIp == null ? 0 : mailIp!.hashCode) +
    (mailCoupon == null ? 0 : mailCoupon!.hashCode) +
    (mailExtra == null ? 0 : mailExtra!.hashCode) +
    (mailServerStatus == null ? 0 : mailServerStatus!.hashCode) +
    (mailComment == null ? 0 : mailComment!.hashCode);

  @override
  String toString() => 'MailServiceInfo[mailId=$mailId, mailType=$mailType, mailCurrency=$mailCurrency, mailOrderDate=$mailOrderDate, mailCustid=$mailCustid, mailQuota=$mailQuota, mailStatus=$mailStatus, mailInvoice=$mailInvoice, mailUsername=$mailUsername, mailIp=$mailIp, mailCoupon=$mailCoupon, mailExtra=$mailExtra, mailServerStatus=$mailServerStatus, mailComment=$mailComment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'mail_id'] = this.mailId;
      json[r'mail_type'] = this.mailType;
      json[r'mail_currency'] = this.mailCurrency;
      json[r'mail_order_date'] = this.mailOrderDate;
      json[r'mail_custid'] = this.mailCustid;
      json[r'mail_quota'] = this.mailQuota;
      json[r'mail_status'] = this.mailStatus;
      json[r'mail_invoice'] = this.mailInvoice;
    if (this.mailUsername != null) {
      json[r'mail_username'] = this.mailUsername;
    } else {
      json[r'mail_username'] = null;
    }
    if (this.mailIp != null) {
      json[r'mail_ip'] = this.mailIp;
    } else {
      json[r'mail_ip'] = null;
    }
    if (this.mailCoupon != null) {
      json[r'mail_coupon'] = this.mailCoupon;
    } else {
      json[r'mail_coupon'] = null;
    }
    if (this.mailExtra != null) {
      json[r'mail_extra'] = this.mailExtra;
    } else {
      json[r'mail_extra'] = null;
    }
    if (this.mailServerStatus != null) {
      json[r'mail_server_status'] = this.mailServerStatus;
    } else {
      json[r'mail_server_status'] = null;
    }
    if (this.mailComment != null) {
      json[r'mail_comment'] = this.mailComment;
    } else {
      json[r'mail_comment'] = null;
    }
    return json;
  }

  /// Returns a new [MailServiceInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailServiceInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'mail_id'), 'Required key "MailServiceInfo[mail_id]" is missing from JSON.');
        assert(json[r'mail_id'] != null, 'Required key "MailServiceInfo[mail_id]" has a null value in JSON.');
        assert(json.containsKey(r'mail_type'), 'Required key "MailServiceInfo[mail_type]" is missing from JSON.');
        assert(json[r'mail_type'] != null, 'Required key "MailServiceInfo[mail_type]" has a null value in JSON.');
        assert(json.containsKey(r'mail_currency'), 'Required key "MailServiceInfo[mail_currency]" is missing from JSON.');
        assert(json[r'mail_currency'] != null, 'Required key "MailServiceInfo[mail_currency]" has a null value in JSON.');
        assert(json.containsKey(r'mail_order_date'), 'Required key "MailServiceInfo[mail_order_date]" is missing from JSON.');
        assert(json[r'mail_order_date'] != null, 'Required key "MailServiceInfo[mail_order_date]" has a null value in JSON.');
        assert(json.containsKey(r'mail_custid'), 'Required key "MailServiceInfo[mail_custid]" is missing from JSON.');
        assert(json[r'mail_custid'] != null, 'Required key "MailServiceInfo[mail_custid]" has a null value in JSON.');
        assert(json.containsKey(r'mail_quota'), 'Required key "MailServiceInfo[mail_quota]" is missing from JSON.');
        assert(json[r'mail_quota'] != null, 'Required key "MailServiceInfo[mail_quota]" has a null value in JSON.');
        assert(json.containsKey(r'mail_status'), 'Required key "MailServiceInfo[mail_status]" is missing from JSON.');
        assert(json[r'mail_status'] != null, 'Required key "MailServiceInfo[mail_status]" has a null value in JSON.');
        assert(json.containsKey(r'mail_invoice'), 'Required key "MailServiceInfo[mail_invoice]" is missing from JSON.');
        assert(json[r'mail_invoice'] != null, 'Required key "MailServiceInfo[mail_invoice]" has a null value in JSON.');
        return true;
      }());

      return MailServiceInfo(
        mailId: mapValueOfType<String>(json, r'mail_id')!,
        mailType: mapValueOfType<String>(json, r'mail_type')!,
        mailCurrency: mapValueOfType<String>(json, r'mail_currency')!,
        mailOrderDate: mapValueOfType<String>(json, r'mail_order_date')!,
        mailCustid: mapValueOfType<String>(json, r'mail_custid')!,
        mailQuota: mapValueOfType<String>(json, r'mail_quota')!,
        mailStatus: mapValueOfType<String>(json, r'mail_status')!,
        mailInvoice: mapValueOfType<String>(json, r'mail_invoice')!,
        mailUsername: mapValueOfType<String>(json, r'mail_username'),
        mailIp: mapValueOfType<String>(json, r'mail_ip'),
        mailCoupon: mapValueOfType<String>(json, r'mail_coupon'),
        mailExtra: mapValueOfType<String>(json, r'mail_extra'),
        mailServerStatus: mapValueOfType<String>(json, r'mail_server_status'),
        mailComment: mapValueOfType<String>(json, r'mail_comment'),
      );
    }
    return null;
  }

  static List<MailServiceInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailServiceInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailServiceInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailServiceInfo> mapFromJson(dynamic json) {
    final map = <String, MailServiceInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailServiceInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailServiceInfo-objects as value to a dart map
  static Map<String, List<MailServiceInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailServiceInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailServiceInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'mail_id',
    'mail_type',
    'mail_currency',
    'mail_order_date',
    'mail_custid',
    'mail_quota',
    'mail_status',
    'mail_invoice',
  };
}

