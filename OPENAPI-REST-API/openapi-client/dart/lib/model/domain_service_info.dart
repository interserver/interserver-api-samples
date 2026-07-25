//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainServiceInfo {
  /// Returns a new [DomainServiceInfo] instance.
  DomainServiceInfo({
    this.domainId,
    this.domainHostname,
    this.domainUsername,
    this.domainPassword,
    this.domainType,
    this.domainCurrency,
    this.domainExpireDate,
    this.domainOrderDate,
    this.domainCustid,
    this.domainStatus,
    this.domainInvoice,
    this.domainCoupon,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainHostname;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainCurrency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainExpireDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainOrderDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainCustid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainInvoice;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainCoupon;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainServiceInfo &&
    other.domainId == domainId &&
    other.domainHostname == domainHostname &&
    other.domainUsername == domainUsername &&
    other.domainPassword == domainPassword &&
    other.domainType == domainType &&
    other.domainCurrency == domainCurrency &&
    other.domainExpireDate == domainExpireDate &&
    other.domainOrderDate == domainOrderDate &&
    other.domainCustid == domainCustid &&
    other.domainStatus == domainStatus &&
    other.domainInvoice == domainInvoice &&
    other.domainCoupon == domainCoupon;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainId == null ? 0 : domainId!.hashCode) +
    (domainHostname == null ? 0 : domainHostname!.hashCode) +
    (domainUsername == null ? 0 : domainUsername!.hashCode) +
    (domainPassword == null ? 0 : domainPassword!.hashCode) +
    (domainType == null ? 0 : domainType!.hashCode) +
    (domainCurrency == null ? 0 : domainCurrency!.hashCode) +
    (domainExpireDate == null ? 0 : domainExpireDate!.hashCode) +
    (domainOrderDate == null ? 0 : domainOrderDate!.hashCode) +
    (domainCustid == null ? 0 : domainCustid!.hashCode) +
    (domainStatus == null ? 0 : domainStatus!.hashCode) +
    (domainInvoice == null ? 0 : domainInvoice!.hashCode) +
    (domainCoupon == null ? 0 : domainCoupon!.hashCode);

  @override
  String toString() => 'DomainServiceInfo[domainId=$domainId, domainHostname=$domainHostname, domainUsername=$domainUsername, domainPassword=$domainPassword, domainType=$domainType, domainCurrency=$domainCurrency, domainExpireDate=$domainExpireDate, domainOrderDate=$domainOrderDate, domainCustid=$domainCustid, domainStatus=$domainStatus, domainInvoice=$domainInvoice, domainCoupon=$domainCoupon]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domainId != null) {
      json[r'domain_id'] = this.domainId;
    } else {
      json[r'domain_id'] = null;
    }
    if (this.domainHostname != null) {
      json[r'domain_hostname'] = this.domainHostname;
    } else {
      json[r'domain_hostname'] = null;
    }
    if (this.domainUsername != null) {
      json[r'domain_username'] = this.domainUsername;
    } else {
      json[r'domain_username'] = null;
    }
    if (this.domainPassword != null) {
      json[r'domain_password'] = this.domainPassword;
    } else {
      json[r'domain_password'] = null;
    }
    if (this.domainType != null) {
      json[r'domain_type'] = this.domainType;
    } else {
      json[r'domain_type'] = null;
    }
    if (this.domainCurrency != null) {
      json[r'domain_currency'] = this.domainCurrency;
    } else {
      json[r'domain_currency'] = null;
    }
    if (this.domainExpireDate != null) {
      json[r'domain_expire_date'] = this.domainExpireDate;
    } else {
      json[r'domain_expire_date'] = null;
    }
    if (this.domainOrderDate != null) {
      json[r'domain_order_date'] = this.domainOrderDate;
    } else {
      json[r'domain_order_date'] = null;
    }
    if (this.domainCustid != null) {
      json[r'domain_custid'] = this.domainCustid;
    } else {
      json[r'domain_custid'] = null;
    }
    if (this.domainStatus != null) {
      json[r'domain_status'] = this.domainStatus;
    } else {
      json[r'domain_status'] = null;
    }
    if (this.domainInvoice != null) {
      json[r'domain_invoice'] = this.domainInvoice;
    } else {
      json[r'domain_invoice'] = null;
    }
    if (this.domainCoupon != null) {
      json[r'domain_coupon'] = this.domainCoupon;
    } else {
      json[r'domain_coupon'] = null;
    }
    return json;
  }

  /// Returns a new [DomainServiceInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainServiceInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainServiceInfo(
        domainId: mapValueOfType<String>(json, r'domain_id'),
        domainHostname: mapValueOfType<String>(json, r'domain_hostname'),
        domainUsername: mapValueOfType<String>(json, r'domain_username'),
        domainPassword: mapValueOfType<String>(json, r'domain_password'),
        domainType: mapValueOfType<String>(json, r'domain_type'),
        domainCurrency: mapValueOfType<String>(json, r'domain_currency'),
        domainExpireDate: mapValueOfType<String>(json, r'domain_expire_date'),
        domainOrderDate: mapValueOfType<String>(json, r'domain_order_date'),
        domainCustid: mapValueOfType<String>(json, r'domain_custid'),
        domainStatus: mapValueOfType<String>(json, r'domain_status'),
        domainInvoice: mapValueOfType<String>(json, r'domain_invoice'),
        domainCoupon: mapValueOfType<String>(json, r'domain_coupon'),
      );
    }
    return null;
  }

  static List<DomainServiceInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainServiceInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainServiceInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainServiceInfo> mapFromJson(dynamic json) {
    final map = <String, DomainServiceInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainServiceInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainServiceInfo-objects as value to a dart map
  static Map<String, List<DomainServiceInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainServiceInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainServiceInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

