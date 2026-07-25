//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class License {
  /// Returns a new [License] instance.
  License({
    required this.serviceInfo,
    this.clientLinks = const [],
    required this.billingDetails,
    required this.custCurrency,
    required this.custCurrencySymbol,
    required this.package,
    this.serviceExtra = const [],
    required this.extraInfoTables,
    required this.serviceOverviewExtra,
    required this.serviceType,
    required this.licenseKey,
  });

  LicenseServiceInfo serviceInfo;

  List<LicenseClientLink> clientLinks;

  LicenseBillingDetails billingDetails;

  /// Customer's currency
  String custCurrency;

  /// Currency symbol for customer
  String custCurrencySymbol;

  /// Package name
  String package;

  /// Extra service information
  List<String> serviceExtra;

  LicenseExtraInfoTables extraInfoTables;

  /// Extra service overview information
  String serviceOverviewExtra;

  LicenseServiceType serviceType;

  /// License key
  String licenseKey;

  @override
  bool operator ==(Object other) => identical(this, other) || other is License &&
    other.serviceInfo == serviceInfo &&
    _deepEquality.equals(other.clientLinks, clientLinks) &&
    other.billingDetails == billingDetails &&
    other.custCurrency == custCurrency &&
    other.custCurrencySymbol == custCurrencySymbol &&
    other.package == package &&
    _deepEquality.equals(other.serviceExtra, serviceExtra) &&
    other.extraInfoTables == extraInfoTables &&
    other.serviceOverviewExtra == serviceOverviewExtra &&
    other.serviceType == serviceType &&
    other.licenseKey == licenseKey;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceInfo.hashCode) +
    (clientLinks.hashCode) +
    (billingDetails.hashCode) +
    (custCurrency.hashCode) +
    (custCurrencySymbol.hashCode) +
    (package.hashCode) +
    (serviceExtra.hashCode) +
    (extraInfoTables.hashCode) +
    (serviceOverviewExtra.hashCode) +
    (serviceType.hashCode) +
    (licenseKey.hashCode);

  @override
  String toString() => 'License[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, package=$package, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, serviceOverviewExtra=$serviceOverviewExtra, serviceType=$serviceType, licenseKey=$licenseKey]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'serviceInfo'] = this.serviceInfo;
      json[r'client_links'] = this.clientLinks;
      json[r'billingDetails'] = this.billingDetails;
      json[r'custCurrency'] = this.custCurrency;
      json[r'custCurrencySymbol'] = this.custCurrencySymbol;
      json[r'package'] = this.package;
      json[r'serviceExtra'] = this.serviceExtra;
      json[r'extraInfoTables'] = this.extraInfoTables;
      json[r'service_overview_extra'] = this.serviceOverviewExtra;
      json[r'serviceType'] = this.serviceType;
      json[r'license_key'] = this.licenseKey;
    return json;
  }

  /// Returns a new [License] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static License? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'serviceInfo'), 'Required key "License[serviceInfo]" is missing from JSON.');
        assert(json[r'serviceInfo'] != null, 'Required key "License[serviceInfo]" has a null value in JSON.');
        assert(json.containsKey(r'client_links'), 'Required key "License[client_links]" is missing from JSON.');
        assert(json[r'client_links'] != null, 'Required key "License[client_links]" has a null value in JSON.');
        assert(json.containsKey(r'billingDetails'), 'Required key "License[billingDetails]" is missing from JSON.');
        assert(json[r'billingDetails'] != null, 'Required key "License[billingDetails]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrency'), 'Required key "License[custCurrency]" is missing from JSON.');
        assert(json[r'custCurrency'] != null, 'Required key "License[custCurrency]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrencySymbol'), 'Required key "License[custCurrencySymbol]" is missing from JSON.');
        assert(json[r'custCurrencySymbol'] != null, 'Required key "License[custCurrencySymbol]" has a null value in JSON.');
        assert(json.containsKey(r'package'), 'Required key "License[package]" is missing from JSON.');
        assert(json[r'package'] != null, 'Required key "License[package]" has a null value in JSON.');
        assert(json.containsKey(r'serviceExtra'), 'Required key "License[serviceExtra]" is missing from JSON.');
        assert(json[r'serviceExtra'] != null, 'Required key "License[serviceExtra]" has a null value in JSON.');
        assert(json.containsKey(r'extraInfoTables'), 'Required key "License[extraInfoTables]" is missing from JSON.');
        assert(json[r'extraInfoTables'] != null, 'Required key "License[extraInfoTables]" has a null value in JSON.');
        assert(json.containsKey(r'service_overview_extra'), 'Required key "License[service_overview_extra]" is missing from JSON.');
        assert(json[r'service_overview_extra'] != null, 'Required key "License[service_overview_extra]" has a null value in JSON.');
        assert(json.containsKey(r'serviceType'), 'Required key "License[serviceType]" is missing from JSON.');
        assert(json[r'serviceType'] != null, 'Required key "License[serviceType]" has a null value in JSON.');
        assert(json.containsKey(r'license_key'), 'Required key "License[license_key]" is missing from JSON.');
        assert(json[r'license_key'] != null, 'Required key "License[license_key]" has a null value in JSON.');
        return true;
      }());

      return License(
        serviceInfo: LicenseServiceInfo.fromJson(json[r'serviceInfo'])!,
        clientLinks: LicenseClientLink.listFromJson(json[r'client_links']),
        billingDetails: LicenseBillingDetails.fromJson(json[r'billingDetails'])!,
        custCurrency: mapValueOfType<String>(json, r'custCurrency')!,
        custCurrencySymbol: mapValueOfType<String>(json, r'custCurrencySymbol')!,
        package: mapValueOfType<String>(json, r'package')!,
        serviceExtra: json[r'serviceExtra'] is Iterable
            ? (json[r'serviceExtra'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        extraInfoTables: LicenseExtraInfoTables.fromJson(json[r'extraInfoTables'])!,
        serviceOverviewExtra: mapValueOfType<String>(json, r'service_overview_extra')!,
        serviceType: LicenseServiceType.fromJson(json[r'serviceType'])!,
        licenseKey: mapValueOfType<String>(json, r'license_key')!,
      );
    }
    return null;
  }

  static List<License> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <License>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = License.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, License> mapFromJson(dynamic json) {
    final map = <String, License>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = License.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of License-objects as value to a dart map
  static Map<String, List<License>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<License>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = License.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'serviceInfo',
    'client_links',
    'billingDetails',
    'custCurrency',
    'custCurrencySymbol',
    'package',
    'serviceExtra',
    'extraInfoTables',
    'service_overview_extra',
    'serviceType',
    'license_key',
  };
}

