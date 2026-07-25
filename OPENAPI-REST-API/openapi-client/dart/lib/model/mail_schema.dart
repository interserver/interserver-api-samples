//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailSchema {
  /// Returns a new [MailSchema] instance.
  MailSchema({
    required this.serviceInfo,
    this.clientLinks = const [],
    required this.billingDetails,
    required this.custCurrency,
    required this.custCurrencySymbol,
    required this.package,
    required this.extraInfoTables,
    required this.serviceType,
    required this.usageCount,
    this.serviceExtra = const [],
  });

  MailServiceInfo serviceInfo;

  /// Links related to the mail service for clients.
  List<MailClientLink> clientLinks;

  MailBillingDetails billingDetails;

  /// The customer's currency.
  String custCurrency;

  /// The currency symbol for the customer.
  String custCurrencySymbol;

  /// The package of the mail service.
  String package;

  MailSchemaExtraInfoTables extraInfoTables;

  MailServiceType serviceType;

  /// The usage count of the mail service.
  String usageCount;

  /// Extra information for the mail service.
  List<String> serviceExtra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailSchema &&
    other.serviceInfo == serviceInfo &&
    _deepEquality.equals(other.clientLinks, clientLinks) &&
    other.billingDetails == billingDetails &&
    other.custCurrency == custCurrency &&
    other.custCurrencySymbol == custCurrencySymbol &&
    other.package == package &&
    other.extraInfoTables == extraInfoTables &&
    other.serviceType == serviceType &&
    other.usageCount == usageCount &&
    _deepEquality.equals(other.serviceExtra, serviceExtra);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceInfo.hashCode) +
    (clientLinks.hashCode) +
    (billingDetails.hashCode) +
    (custCurrency.hashCode) +
    (custCurrencySymbol.hashCode) +
    (package.hashCode) +
    (extraInfoTables.hashCode) +
    (serviceType.hashCode) +
    (usageCount.hashCode) +
    (serviceExtra.hashCode);

  @override
  String toString() => 'MailSchema[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, package=$package, extraInfoTables=$extraInfoTables, serviceType=$serviceType, usageCount=$usageCount, serviceExtra=$serviceExtra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'serviceInfo'] = this.serviceInfo;
      json[r'client_links'] = this.clientLinks;
      json[r'billingDetails'] = this.billingDetails;
      json[r'custCurrency'] = this.custCurrency;
      json[r'custCurrencySymbol'] = this.custCurrencySymbol;
      json[r'package'] = this.package;
      json[r'extraInfoTables'] = this.extraInfoTables;
      json[r'serviceType'] = this.serviceType;
      json[r'usage_count'] = this.usageCount;
      json[r'serviceExtra'] = this.serviceExtra;
    return json;
  }

  /// Returns a new [MailSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'serviceInfo'), 'Required key "MailSchema[serviceInfo]" is missing from JSON.');
        assert(json[r'serviceInfo'] != null, 'Required key "MailSchema[serviceInfo]" has a null value in JSON.');
        assert(json.containsKey(r'client_links'), 'Required key "MailSchema[client_links]" is missing from JSON.');
        assert(json[r'client_links'] != null, 'Required key "MailSchema[client_links]" has a null value in JSON.');
        assert(json.containsKey(r'billingDetails'), 'Required key "MailSchema[billingDetails]" is missing from JSON.');
        assert(json[r'billingDetails'] != null, 'Required key "MailSchema[billingDetails]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrency'), 'Required key "MailSchema[custCurrency]" is missing from JSON.');
        assert(json[r'custCurrency'] != null, 'Required key "MailSchema[custCurrency]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrencySymbol'), 'Required key "MailSchema[custCurrencySymbol]" is missing from JSON.');
        assert(json[r'custCurrencySymbol'] != null, 'Required key "MailSchema[custCurrencySymbol]" has a null value in JSON.');
        assert(json.containsKey(r'package'), 'Required key "MailSchema[package]" is missing from JSON.');
        assert(json[r'package'] != null, 'Required key "MailSchema[package]" has a null value in JSON.');
        assert(json.containsKey(r'extraInfoTables'), 'Required key "MailSchema[extraInfoTables]" is missing from JSON.');
        assert(json[r'extraInfoTables'] != null, 'Required key "MailSchema[extraInfoTables]" has a null value in JSON.');
        assert(json.containsKey(r'serviceType'), 'Required key "MailSchema[serviceType]" is missing from JSON.');
        assert(json[r'serviceType'] != null, 'Required key "MailSchema[serviceType]" has a null value in JSON.');
        assert(json.containsKey(r'usage_count'), 'Required key "MailSchema[usage_count]" is missing from JSON.');
        assert(json[r'usage_count'] != null, 'Required key "MailSchema[usage_count]" has a null value in JSON.');
        return true;
      }());

      return MailSchema(
        serviceInfo: MailServiceInfo.fromJson(json[r'serviceInfo'])!,
        clientLinks: MailClientLink.listFromJson(json[r'client_links']),
        billingDetails: MailBillingDetails.fromJson(json[r'billingDetails'])!,
        custCurrency: mapValueOfType<String>(json, r'custCurrency')!,
        custCurrencySymbol: mapValueOfType<String>(json, r'custCurrencySymbol')!,
        package: mapValueOfType<String>(json, r'package')!,
        extraInfoTables: MailSchemaExtraInfoTables.fromJson(json[r'extraInfoTables'])!,
        serviceType: MailServiceType.fromJson(json[r'serviceType'])!,
        usageCount: mapValueOfType<String>(json, r'usage_count')!,
        serviceExtra: json[r'serviceExtra'] is Iterable
            ? (json[r'serviceExtra'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<MailSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailSchema> mapFromJson(dynamic json) {
    final map = <String, MailSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailSchema-objects as value to a dart map
  static Map<String, List<MailSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailSchema.listFromJson(entry.value, growable: growable,);
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
    'extraInfoTables',
    'serviceType',
    'usage_count',
  };
}

