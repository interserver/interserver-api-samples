//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LicenseServiceInfo {
  /// Returns a new [LicenseServiceInfo] instance.
  LicenseServiceInfo({
    required this.licenseId,
    required this.licenseType,
    required this.licenseCurrency,
    required this.licenseOrderDate,
    required this.licenseCustid,
    required this.licenseIp,
    required this.licenseStatus,
    required this.licenseInvoice,
    required this.licenseCoupon,
    this.licenseHostname,
    this.licenseKey,
    this.licenseExtra,
  });

  /// License ID
  String licenseId;

  /// License type
  String licenseType;

  /// License currency
  String licenseCurrency;

  /// License order date
  DateTime licenseOrderDate;

  /// Customer ID
  String licenseCustid;

  /// License IP
  String licenseIp;

  /// License status
  String licenseStatus;

  /// License invoice
  String licenseInvoice;

  /// License coupon
  String licenseCoupon;

  /// License hostname
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseHostname;

  /// License key
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseKey;

  /// Additional license information
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseExtra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseServiceInfo &&
    other.licenseId == licenseId &&
    other.licenseType == licenseType &&
    other.licenseCurrency == licenseCurrency &&
    other.licenseOrderDate == licenseOrderDate &&
    other.licenseCustid == licenseCustid &&
    other.licenseIp == licenseIp &&
    other.licenseStatus == licenseStatus &&
    other.licenseInvoice == licenseInvoice &&
    other.licenseCoupon == licenseCoupon &&
    other.licenseHostname == licenseHostname &&
    other.licenseKey == licenseKey &&
    other.licenseExtra == licenseExtra;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (licenseId.hashCode) +
    (licenseType.hashCode) +
    (licenseCurrency.hashCode) +
    (licenseOrderDate.hashCode) +
    (licenseCustid.hashCode) +
    (licenseIp.hashCode) +
    (licenseStatus.hashCode) +
    (licenseInvoice.hashCode) +
    (licenseCoupon.hashCode) +
    (licenseHostname == null ? 0 : licenseHostname!.hashCode) +
    (licenseKey == null ? 0 : licenseKey!.hashCode) +
    (licenseExtra == null ? 0 : licenseExtra!.hashCode);

  @override
  String toString() => 'LicenseServiceInfo[licenseId=$licenseId, licenseType=$licenseType, licenseCurrency=$licenseCurrency, licenseOrderDate=$licenseOrderDate, licenseCustid=$licenseCustid, licenseIp=$licenseIp, licenseStatus=$licenseStatus, licenseInvoice=$licenseInvoice, licenseCoupon=$licenseCoupon, licenseHostname=$licenseHostname, licenseKey=$licenseKey, licenseExtra=$licenseExtra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'license_id'] = this.licenseId;
      json[r'license_type'] = this.licenseType;
      json[r'license_currency'] = this.licenseCurrency;
      json[r'license_order_date'] = this.licenseOrderDate.toUtc().toIso8601String();
      json[r'license_custid'] = this.licenseCustid;
      json[r'license_ip'] = this.licenseIp;
      json[r'license_status'] = this.licenseStatus;
      json[r'license_invoice'] = this.licenseInvoice;
      json[r'license_coupon'] = this.licenseCoupon;
    if (this.licenseHostname != null) {
      json[r'license_hostname'] = this.licenseHostname;
    } else {
      json[r'license_hostname'] = null;
    }
    if (this.licenseKey != null) {
      json[r'license_key'] = this.licenseKey;
    } else {
      json[r'license_key'] = null;
    }
    if (this.licenseExtra != null) {
      json[r'license_extra'] = this.licenseExtra;
    } else {
      json[r'license_extra'] = null;
    }
    return json;
  }

  /// Returns a new [LicenseServiceInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseServiceInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'license_id'), 'Required key "LicenseServiceInfo[license_id]" is missing from JSON.');
        assert(json[r'license_id'] != null, 'Required key "LicenseServiceInfo[license_id]" has a null value in JSON.');
        assert(json.containsKey(r'license_type'), 'Required key "LicenseServiceInfo[license_type]" is missing from JSON.');
        assert(json[r'license_type'] != null, 'Required key "LicenseServiceInfo[license_type]" has a null value in JSON.');
        assert(json.containsKey(r'license_currency'), 'Required key "LicenseServiceInfo[license_currency]" is missing from JSON.');
        assert(json[r'license_currency'] != null, 'Required key "LicenseServiceInfo[license_currency]" has a null value in JSON.');
        assert(json.containsKey(r'license_order_date'), 'Required key "LicenseServiceInfo[license_order_date]" is missing from JSON.');
        assert(json[r'license_order_date'] != null, 'Required key "LicenseServiceInfo[license_order_date]" has a null value in JSON.');
        assert(json.containsKey(r'license_custid'), 'Required key "LicenseServiceInfo[license_custid]" is missing from JSON.');
        assert(json[r'license_custid'] != null, 'Required key "LicenseServiceInfo[license_custid]" has a null value in JSON.');
        assert(json.containsKey(r'license_ip'), 'Required key "LicenseServiceInfo[license_ip]" is missing from JSON.');
        assert(json[r'license_ip'] != null, 'Required key "LicenseServiceInfo[license_ip]" has a null value in JSON.');
        assert(json.containsKey(r'license_status'), 'Required key "LicenseServiceInfo[license_status]" is missing from JSON.');
        assert(json[r'license_status'] != null, 'Required key "LicenseServiceInfo[license_status]" has a null value in JSON.');
        assert(json.containsKey(r'license_invoice'), 'Required key "LicenseServiceInfo[license_invoice]" is missing from JSON.');
        assert(json[r'license_invoice'] != null, 'Required key "LicenseServiceInfo[license_invoice]" has a null value in JSON.');
        assert(json.containsKey(r'license_coupon'), 'Required key "LicenseServiceInfo[license_coupon]" is missing from JSON.');
        assert(json[r'license_coupon'] != null, 'Required key "LicenseServiceInfo[license_coupon]" has a null value in JSON.');
        return true;
      }());

      return LicenseServiceInfo(
        licenseId: mapValueOfType<String>(json, r'license_id')!,
        licenseType: mapValueOfType<String>(json, r'license_type')!,
        licenseCurrency: mapValueOfType<String>(json, r'license_currency')!,
        licenseOrderDate: mapDateTime(json, r'license_order_date', r'')!,
        licenseCustid: mapValueOfType<String>(json, r'license_custid')!,
        licenseIp: mapValueOfType<String>(json, r'license_ip')!,
        licenseStatus: mapValueOfType<String>(json, r'license_status')!,
        licenseInvoice: mapValueOfType<String>(json, r'license_invoice')!,
        licenseCoupon: mapValueOfType<String>(json, r'license_coupon')!,
        licenseHostname: mapValueOfType<String>(json, r'license_hostname'),
        licenseKey: mapValueOfType<String>(json, r'license_key'),
        licenseExtra: mapValueOfType<String>(json, r'license_extra'),
      );
    }
    return null;
  }

  static List<LicenseServiceInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseServiceInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseServiceInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseServiceInfo> mapFromJson(dynamic json) {
    final map = <String, LicenseServiceInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseServiceInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseServiceInfo-objects as value to a dart map
  static Map<String, List<LicenseServiceInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseServiceInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseServiceInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'license_id',
    'license_type',
    'license_currency',
    'license_order_date',
    'license_custid',
    'license_ip',
    'license_status',
    'license_invoice',
    'license_coupon',
  };
}

