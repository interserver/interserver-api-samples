//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class Website {
  /// Returns a new [Website] instance.
  Website({
    this.serviceInfo,
    this.clientLinks = const [],
    this.billingDetails,
    this.custCurrency,
    this.custCurrencySymbol,
    this.serviceMaster,
    this.package,
    this.serviceExtra = const [],
    this.extraInfoTables,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WebsiteServiceInfo? serviceInfo;

  List<WebsiteClientLink> clientLinks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WebsiteBillingDetails? billingDetails;

  /// Customer's currency
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? custCurrency;

  /// Customer currency symbol
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
  WebsiteServiceMaster? serviceMaster;

  /// Package information
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? package;

  List<Object> serviceExtra;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  WebsiteExtraInfoTables? extraInfoTables;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Website &&
    other.serviceInfo == serviceInfo &&
    _deepEquality.equals(other.clientLinks, clientLinks) &&
    other.billingDetails == billingDetails &&
    other.custCurrency == custCurrency &&
    other.custCurrencySymbol == custCurrencySymbol &&
    other.serviceMaster == serviceMaster &&
    other.package == package &&
    _deepEquality.equals(other.serviceExtra, serviceExtra) &&
    other.extraInfoTables == extraInfoTables;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceInfo == null ? 0 : serviceInfo!.hashCode) +
    (clientLinks.hashCode) +
    (billingDetails == null ? 0 : billingDetails!.hashCode) +
    (custCurrency == null ? 0 : custCurrency!.hashCode) +
    (custCurrencySymbol == null ? 0 : custCurrencySymbol!.hashCode) +
    (serviceMaster == null ? 0 : serviceMaster!.hashCode) +
    (package == null ? 0 : package!.hashCode) +
    (serviceExtra.hashCode) +
    (extraInfoTables == null ? 0 : extraInfoTables!.hashCode);

  @override
  String toString() => 'Website[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, serviceMaster=$serviceMaster, package=$package, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.serviceInfo != null) {
      json[r'serviceInfo'] = this.serviceInfo;
    } else {
      json[r'serviceInfo'] = null;
    }
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
    if (this.serviceMaster != null) {
      json[r'serviceMaster'] = this.serviceMaster;
    } else {
      json[r'serviceMaster'] = null;
    }
    if (this.package != null) {
      json[r'package'] = this.package;
    } else {
      json[r'package'] = null;
    }
      json[r'serviceExtra'] = this.serviceExtra;
    if (this.extraInfoTables != null) {
      json[r'extraInfoTables'] = this.extraInfoTables;
    } else {
      json[r'extraInfoTables'] = null;
    }
    return json;
  }

  /// Returns a new [Website] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Website? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return Website(
        serviceInfo: WebsiteServiceInfo.fromJson(json[r'serviceInfo']),
        clientLinks: WebsiteClientLink.listFromJson(json[r'client_links']),
        billingDetails: WebsiteBillingDetails.fromJson(json[r'billingDetails']),
        custCurrency: mapValueOfType<String>(json, r'custCurrency'),
        custCurrencySymbol: mapValueOfType<String>(json, r'custCurrencySymbol'),
        serviceMaster: WebsiteServiceMaster.fromJson(json[r'serviceMaster']),
        package: mapValueOfType<String>(json, r'package'),
        serviceExtra: json[r'serviceExtra'] is Iterable
            ? (json[r'serviceExtra'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        extraInfoTables: WebsiteExtraInfoTables.fromJson(json[r'extraInfoTables']),
      );
    }
    return null;
  }

  static List<Website> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Website>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Website.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Website> mapFromJson(dynamic json) {
    final map = <String, Website>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Website.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Website-objects as value to a dart map
  static Map<String, List<Website>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Website>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Website.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

