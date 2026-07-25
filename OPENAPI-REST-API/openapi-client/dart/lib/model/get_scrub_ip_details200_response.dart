//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetScrubIpDetails200Response {
  /// Returns a new [GetScrubIpDetails200Response] instance.
  GetScrubIpDetails200Response({
    this.serviceInfo,
    this.clientLinks = const [],
    this.billingDetails,
    this.custCurrency,
    this.custCurrencySymbol,
    this.package,
    this.extraInfoTables,
    this.filterFirewall,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetScrubIpDetails200ResponseServiceInfo? serviceInfo;

  List<GetScrubIpDetails200ResponseClientLinksInner> clientLinks;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetScrubIpDetails200ResponseBillingDetails? billingDetails;

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
  String? package;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetScrubIpDetails200ResponseExtraInfoTables? extraInfoTables;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetScrubIpDetails200ResponseFilterFirewall? filterFirewall;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetScrubIpDetails200Response &&
    other.serviceInfo == serviceInfo &&
    _deepEquality.equals(other.clientLinks, clientLinks) &&
    other.billingDetails == billingDetails &&
    other.custCurrency == custCurrency &&
    other.custCurrencySymbol == custCurrencySymbol &&
    other.package == package &&
    other.extraInfoTables == extraInfoTables &&
    other.filterFirewall == filterFirewall;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceInfo == null ? 0 : serviceInfo!.hashCode) +
    (clientLinks.hashCode) +
    (billingDetails == null ? 0 : billingDetails!.hashCode) +
    (custCurrency == null ? 0 : custCurrency!.hashCode) +
    (custCurrencySymbol == null ? 0 : custCurrencySymbol!.hashCode) +
    (package == null ? 0 : package!.hashCode) +
    (extraInfoTables == null ? 0 : extraInfoTables!.hashCode) +
    (filterFirewall == null ? 0 : filterFirewall!.hashCode);

  @override
  String toString() => 'GetScrubIpDetails200Response[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, package=$package, extraInfoTables=$extraInfoTables, filterFirewall=$filterFirewall]';

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
    if (this.package != null) {
      json[r'package'] = this.package;
    } else {
      json[r'package'] = null;
    }
    if (this.extraInfoTables != null) {
      json[r'extraInfoTables'] = this.extraInfoTables;
    } else {
      json[r'extraInfoTables'] = null;
    }
    if (this.filterFirewall != null) {
      json[r'filter_firewall'] = this.filterFirewall;
    } else {
      json[r'filter_firewall'] = null;
    }
    return json;
  }

  /// Returns a new [GetScrubIpDetails200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetScrubIpDetails200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetScrubIpDetails200Response(
        serviceInfo: GetScrubIpDetails200ResponseServiceInfo.fromJson(json[r'serviceInfo']),
        clientLinks: GetScrubIpDetails200ResponseClientLinksInner.listFromJson(json[r'client_links']),
        billingDetails: GetScrubIpDetails200ResponseBillingDetails.fromJson(json[r'billingDetails']),
        custCurrency: mapValueOfType<String>(json, r'custCurrency'),
        custCurrencySymbol: mapValueOfType<String>(json, r'custCurrencySymbol'),
        package: mapValueOfType<String>(json, r'package'),
        extraInfoTables: GetScrubIpDetails200ResponseExtraInfoTables.fromJson(json[r'extraInfoTables']),
        filterFirewall: GetScrubIpDetails200ResponseFilterFirewall.fromJson(json[r'filter_firewall']),
      );
    }
    return null;
  }

  static List<GetScrubIpDetails200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetScrubIpDetails200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetScrubIpDetails200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetScrubIpDetails200Response> mapFromJson(dynamic json) {
    final map = <String, GetScrubIpDetails200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetScrubIpDetails200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetScrubIpDetails200Response-objects as value to a dart map
  static Map<String, List<GetScrubIpDetails200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetScrubIpDetails200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetScrubIpDetails200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

