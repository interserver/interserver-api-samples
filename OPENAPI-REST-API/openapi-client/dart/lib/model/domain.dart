//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class Domain {
  /// Returns a new [Domain] instance.
  Domain({
    this.serviceInfo,
    this.serviceTypes = const {},
    this.clientLinks = const [],
    this.billingDetails,
    this.custCurrency,
    this.custCurrencySymbol,
    this.serviceExtra,
    this.extraInfoTables,
    this.serviceType,
    this.contactDetails,
    this.pwarning,
    this.transferInfo,
    this.errors,
    this.domainLogs = const [],
    this.allInfo,
    this.registrarStatus,
    this.locked,
    this.whoisPrivacy,
    this.autoRenew,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainServiceInfo? serviceInfo;

  Map<String, DomainServiceType> serviceTypes;

  List<DomainClientLink> clientLinks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainBillingDetails? billingDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custCurrency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custCurrencySymbol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainBillingExtra? serviceExtra;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BackupExtraInfoTables? extraInfoTables;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainServiceType? serviceType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainContactDetails? contactDetails;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? pwarning;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transferInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? errors;

  List<String> domainLogs;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainAllInfo? allInfo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? registrarStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? whoisPrivacy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? autoRenew;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Domain &&
    other.serviceInfo == serviceInfo &&
    _deepEquality.equals(other.serviceTypes, serviceTypes) &&
    _deepEquality.equals(other.clientLinks, clientLinks) &&
    other.billingDetails == billingDetails &&
    other.custCurrency == custCurrency &&
    other.custCurrencySymbol == custCurrencySymbol &&
    other.serviceExtra == serviceExtra &&
    other.extraInfoTables == extraInfoTables &&
    other.serviceType == serviceType &&
    other.contactDetails == contactDetails &&
    other.pwarning == pwarning &&
    other.transferInfo == transferInfo &&
    other.errors == errors &&
    _deepEquality.equals(other.domainLogs, domainLogs) &&
    other.allInfo == allInfo &&
    other.registrarStatus == registrarStatus &&
    other.locked == locked &&
    other.whoisPrivacy == whoisPrivacy &&
    other.autoRenew == autoRenew;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceInfo == null ? 0 : serviceInfo!.hashCode) +
    (serviceTypes.hashCode) +
    (clientLinks.hashCode) +
    (billingDetails == null ? 0 : billingDetails!.hashCode) +
    (custCurrency == null ? 0 : custCurrency!.hashCode) +
    (custCurrencySymbol == null ? 0 : custCurrencySymbol!.hashCode) +
    (serviceExtra == null ? 0 : serviceExtra!.hashCode) +
    (extraInfoTables == null ? 0 : extraInfoTables!.hashCode) +
    (serviceType == null ? 0 : serviceType!.hashCode) +
    (contactDetails == null ? 0 : contactDetails!.hashCode) +
    (pwarning == null ? 0 : pwarning!.hashCode) +
    (transferInfo == null ? 0 : transferInfo!.hashCode) +
    (errors == null ? 0 : errors!.hashCode) +
    (domainLogs.hashCode) +
    (allInfo == null ? 0 : allInfo!.hashCode) +
    (registrarStatus == null ? 0 : registrarStatus!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (whoisPrivacy == null ? 0 : whoisPrivacy!.hashCode) +
    (autoRenew == null ? 0 : autoRenew!.hashCode);

  @override
  String toString() => 'Domain[serviceInfo=$serviceInfo, serviceTypes=$serviceTypes, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, serviceType=$serviceType, contactDetails=$contactDetails, pwarning=$pwarning, transferInfo=$transferInfo, errors=$errors, domainLogs=$domainLogs, allInfo=$allInfo, registrarStatus=$registrarStatus, locked=$locked, whoisPrivacy=$whoisPrivacy, autoRenew=$autoRenew]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.serviceInfo != null) {
      json[r'serviceInfo'] = this.serviceInfo;
    } else {
      json[r'serviceInfo'] = null;
    }
      json[r'serviceTypes'] = this.serviceTypes;
      json[r'client_links'] = this.clientLinks;
    if (this.billingDetails != null) {
      json[r'billingDetails'] = this.billingDetails;
    } else {
      json[r'billingDetails'] = null;
    }
    if (this.custCurrency != null) {
      json[r'custCurrency'] = this.custCurrency;
    } else {
      json[r'custCurrency'] = null;
    }
    if (this.custCurrencySymbol != null) {
      json[r'custCurrencySymbol'] = this.custCurrencySymbol;
    } else {
      json[r'custCurrencySymbol'] = null;
    }
    if (this.serviceExtra != null) {
      json[r'serviceExtra'] = this.serviceExtra;
    } else {
      json[r'serviceExtra'] = null;
    }
    if (this.extraInfoTables != null) {
      json[r'extraInfoTables'] = this.extraInfoTables;
    } else {
      json[r'extraInfoTables'] = null;
    }
    if (this.serviceType != null) {
      json[r'serviceType'] = this.serviceType;
    } else {
      json[r'serviceType'] = null;
    }
    if (this.contactDetails != null) {
      json[r'contact_details'] = this.contactDetails;
    } else {
      json[r'contact_details'] = null;
    }
    if (this.pwarning != null) {
      json[r'pwarning'] = this.pwarning;
    } else {
      json[r'pwarning'] = null;
    }
    if (this.transferInfo != null) {
      json[r'transfer_info'] = this.transferInfo;
    } else {
      json[r'transfer_info'] = null;
    }
    if (this.errors != null) {
      json[r'errors'] = this.errors;
    } else {
      json[r'errors'] = null;
    }
      json[r'domain_logs'] = this.domainLogs;
    if (this.allInfo != null) {
      json[r'allInfo'] = this.allInfo;
    } else {
      json[r'allInfo'] = null;
    }
    if (this.registrarStatus != null) {
      json[r'registrarStatus'] = this.registrarStatus;
    } else {
      json[r'registrarStatus'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.whoisPrivacy != null) {
      json[r'whoisPrivacy'] = this.whoisPrivacy;
    } else {
      json[r'whoisPrivacy'] = null;
    }
    if (this.autoRenew != null) {
      json[r'autoRenew'] = this.autoRenew;
    } else {
      json[r'autoRenew'] = null;
    }
    return json;
  }

  /// Returns a new [Domain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Domain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Domain(
        serviceInfo: DomainServiceInfo.fromJson(json[r'serviceInfo']),
        serviceTypes: DomainServiceType.mapFromJson(json[r'serviceTypes']),
        clientLinks: DomainClientLink.listFromJson(json[r'client_links']),
        billingDetails: DomainBillingDetails.fromJson(json[r'billingDetails']),
        custCurrency: mapValueOfType<String>(json, r'custCurrency'),
        custCurrencySymbol: mapValueOfType<String>(json, r'custCurrencySymbol'),
        serviceExtra: DomainBillingExtra.fromJson(json[r'serviceExtra']),
        extraInfoTables: BackupExtraInfoTables.fromJson(json[r'extraInfoTables']),
        serviceType: DomainServiceType.fromJson(json[r'serviceType']),
        contactDetails: DomainContactDetails.fromJson(json[r'contact_details']),
        pwarning: mapValueOfType<String>(json, r'pwarning'),
        transferInfo: mapValueOfType<String>(json, r'transfer_info'),
        errors: mapValueOfType<bool>(json, r'errors'),
        domainLogs: json[r'domain_logs'] is Iterable
            ? (json[r'domain_logs'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        allInfo: DomainAllInfo.fromJson(json[r'allInfo']),
        registrarStatus: mapValueOfType<String>(json, r'registrarStatus'),
        locked: mapValueOfType<String>(json, r'locked'),
        whoisPrivacy: mapValueOfType<String>(json, r'whoisPrivacy'),
        autoRenew: mapValueOfType<String>(json, r'autoRenew'),
      );
    }
    return null;
  }

  static List<Domain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Domain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Domain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Domain> mapFromJson(dynamic json) {
    final map = <String, Domain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Domain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Domain-objects as value to a dart map
  static Map<String, List<Domain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Domain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Domain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

