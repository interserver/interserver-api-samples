//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class Vps {
  /// Returns a new [Vps] instance.
  Vps({
    required this.serviceInfo,
    this.clientLinks = const [],
    required this.billingDetails,
    required this.custCurrency,
    required this.custCurrencySymbol,
    required this.serviceMaster,
    required this.package,
    required this.serviceExtra,
    required this.extraInfoTables,
    required this.module,
    required this.token,
    required this.daLink,
    required this.srLink,
    required this.cpData,
    required this.daData,
    required this.plesk12Data,
    required this.serviceAddons,
    this.osTemplate,
    this.cpuGraphData,
  });

  VpsServiceInfo serviceInfo;

  List<VpsClientLink> clientLinks;

  VpsBillingDetails billingDetails;

  String custCurrency;

  String custCurrencySymbol;

  VpsServiceMaster serviceMaster;

  String package;

  VpsServiceExtra serviceExtra;

  VpsExtraInfoTables extraInfoTables;

  String module;

  String token;

  int daLink;

  int srLink;

  VpsCPData cpData;

  VpsDAData daData;

  VpsPlesk12Data plesk12Data;

  VpsServiceAddons serviceAddons;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? osTemplate;

  Object? cpuGraphData;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Vps &&
    other.serviceInfo == serviceInfo &&
    _deepEquality.equals(other.clientLinks, clientLinks) &&
    other.billingDetails == billingDetails &&
    other.custCurrency == custCurrency &&
    other.custCurrencySymbol == custCurrencySymbol &&
    other.serviceMaster == serviceMaster &&
    other.package == package &&
    other.serviceExtra == serviceExtra &&
    other.extraInfoTables == extraInfoTables &&
    other.module == module &&
    other.token == token &&
    other.daLink == daLink &&
    other.srLink == srLink &&
    other.cpData == cpData &&
    other.daData == daData &&
    other.plesk12Data == plesk12Data &&
    other.serviceAddons == serviceAddons &&
    other.osTemplate == osTemplate &&
    other.cpuGraphData == cpuGraphData;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceInfo.hashCode) +
    (clientLinks.hashCode) +
    (billingDetails.hashCode) +
    (custCurrency.hashCode) +
    (custCurrencySymbol.hashCode) +
    (serviceMaster.hashCode) +
    (package.hashCode) +
    (serviceExtra.hashCode) +
    (extraInfoTables.hashCode) +
    (module.hashCode) +
    (token.hashCode) +
    (daLink.hashCode) +
    (srLink.hashCode) +
    (cpData.hashCode) +
    (daData.hashCode) +
    (plesk12Data.hashCode) +
    (serviceAddons.hashCode) +
    (osTemplate == null ? 0 : osTemplate!.hashCode) +
    (cpuGraphData == null ? 0 : cpuGraphData!.hashCode);

  @override
  String toString() => 'Vps[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, serviceMaster=$serviceMaster, package=$package, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, module=$module, token=$token, daLink=$daLink, srLink=$srLink, cpData=$cpData, daData=$daData, plesk12Data=$plesk12Data, serviceAddons=$serviceAddons, osTemplate=$osTemplate, cpuGraphData=$cpuGraphData]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'serviceInfo'] = this.serviceInfo;
      json[r'client_links'] = this.clientLinks;
      json[r'billingDetails'] = this.billingDetails;
      json[r'custCurrency'] = this.custCurrency;
      json[r'custCurrencySymbol'] = this.custCurrencySymbol;
      json[r'serviceMaster'] = this.serviceMaster;
      json[r'package'] = this.package;
      json[r'serviceExtra'] = this.serviceExtra;
      json[r'extraInfoTables'] = this.extraInfoTables;
      json[r'module'] = this.module;
      json[r'token'] = this.token;
      json[r'da_link'] = this.daLink;
      json[r'sr_link'] = this.srLink;
      json[r'cp_data'] = this.cpData;
      json[r'da_data'] = this.daData;
      json[r'plesk12_data'] = this.plesk12Data;
      json[r'serviceAddons'] = this.serviceAddons;
    if (this.osTemplate != null) {
      json[r'os_template'] = this.osTemplate;
    } else {
      json[r'os_template'] = null;
    }
    if (this.cpuGraphData != null) {
      json[r'cpu_graph_data'] = this.cpuGraphData;
    } else {
      json[r'cpu_graph_data'] = null;
    }
    return json;
  }

  /// Returns a new [Vps] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Vps? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'serviceInfo'), 'Required key "Vps[serviceInfo]" is missing from JSON.');
        assert(json[r'serviceInfo'] != null, 'Required key "Vps[serviceInfo]" has a null value in JSON.');
        assert(json.containsKey(r'client_links'), 'Required key "Vps[client_links]" is missing from JSON.');
        assert(json[r'client_links'] != null, 'Required key "Vps[client_links]" has a null value in JSON.');
        assert(json.containsKey(r'billingDetails'), 'Required key "Vps[billingDetails]" is missing from JSON.');
        assert(json[r'billingDetails'] != null, 'Required key "Vps[billingDetails]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrency'), 'Required key "Vps[custCurrency]" is missing from JSON.');
        assert(json[r'custCurrency'] != null, 'Required key "Vps[custCurrency]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrencySymbol'), 'Required key "Vps[custCurrencySymbol]" is missing from JSON.');
        assert(json[r'custCurrencySymbol'] != null, 'Required key "Vps[custCurrencySymbol]" has a null value in JSON.');
        assert(json.containsKey(r'serviceMaster'), 'Required key "Vps[serviceMaster]" is missing from JSON.');
        assert(json[r'serviceMaster'] != null, 'Required key "Vps[serviceMaster]" has a null value in JSON.');
        assert(json.containsKey(r'package'), 'Required key "Vps[package]" is missing from JSON.');
        assert(json[r'package'] != null, 'Required key "Vps[package]" has a null value in JSON.');
        assert(json.containsKey(r'serviceExtra'), 'Required key "Vps[serviceExtra]" is missing from JSON.');
        assert(json[r'serviceExtra'] != null, 'Required key "Vps[serviceExtra]" has a null value in JSON.');
        assert(json.containsKey(r'extraInfoTables'), 'Required key "Vps[extraInfoTables]" is missing from JSON.');
        assert(json[r'extraInfoTables'] != null, 'Required key "Vps[extraInfoTables]" has a null value in JSON.');
        assert(json.containsKey(r'module'), 'Required key "Vps[module]" is missing from JSON.');
        assert(json[r'module'] != null, 'Required key "Vps[module]" has a null value in JSON.');
        assert(json.containsKey(r'token'), 'Required key "Vps[token]" is missing from JSON.');
        assert(json[r'token'] != null, 'Required key "Vps[token]" has a null value in JSON.');
        assert(json.containsKey(r'da_link'), 'Required key "Vps[da_link]" is missing from JSON.');
        assert(json[r'da_link'] != null, 'Required key "Vps[da_link]" has a null value in JSON.');
        assert(json.containsKey(r'sr_link'), 'Required key "Vps[sr_link]" is missing from JSON.');
        assert(json[r'sr_link'] != null, 'Required key "Vps[sr_link]" has a null value in JSON.');
        assert(json.containsKey(r'cp_data'), 'Required key "Vps[cp_data]" is missing from JSON.');
        assert(json[r'cp_data'] != null, 'Required key "Vps[cp_data]" has a null value in JSON.');
        assert(json.containsKey(r'da_data'), 'Required key "Vps[da_data]" is missing from JSON.');
        assert(json[r'da_data'] != null, 'Required key "Vps[da_data]" has a null value in JSON.');
        assert(json.containsKey(r'plesk12_data'), 'Required key "Vps[plesk12_data]" is missing from JSON.');
        assert(json[r'plesk12_data'] != null, 'Required key "Vps[plesk12_data]" has a null value in JSON.');
        assert(json.containsKey(r'serviceAddons'), 'Required key "Vps[serviceAddons]" is missing from JSON.');
        assert(json[r'serviceAddons'] != null, 'Required key "Vps[serviceAddons]" has a null value in JSON.');
        return true;
      }());

      return Vps(
        serviceInfo: VpsServiceInfo.fromJson(json[r'serviceInfo'])!,
        clientLinks: VpsClientLink.listFromJson(json[r'client_links']),
        billingDetails: VpsBillingDetails.fromJson(json[r'billingDetails'])!,
        custCurrency: mapValueOfType<String>(json, r'custCurrency')!,
        custCurrencySymbol: mapValueOfType<String>(json, r'custCurrencySymbol')!,
        serviceMaster: VpsServiceMaster.fromJson(json[r'serviceMaster'])!,
        package: mapValueOfType<String>(json, r'package')!,
        serviceExtra: VpsServiceExtra.fromJson(json[r'serviceExtra'])!,
        extraInfoTables: VpsExtraInfoTables.fromJson(json[r'extraInfoTables'])!,
        module: mapValueOfType<String>(json, r'module')!,
        token: mapValueOfType<String>(json, r'token')!,
        daLink: mapValueOfType<int>(json, r'da_link')!,
        srLink: mapValueOfType<int>(json, r'sr_link')!,
        cpData: VpsCPData.fromJson(json[r'cp_data'])!,
        daData: VpsDAData.fromJson(json[r'da_data'])!,
        plesk12Data: VpsPlesk12Data.fromJson(json[r'plesk12_data'])!,
        serviceAddons: VpsServiceAddons.fromJson(json[r'serviceAddons'])!,
        osTemplate: mapValueOfType<String>(json, r'os_template'),
        cpuGraphData: mapValueOfType<Object>(json, r'cpu_graph_data'),
      );
    }
    return null;
  }

  static List<Vps> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Vps>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Vps.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Vps> mapFromJson(dynamic json) {
    final map = <String, Vps>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Vps.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Vps-objects as value to a dart map
  static Map<String, List<Vps>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Vps>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Vps.listFromJson(entry.value, growable: growable,);
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
    'serviceMaster',
    'package',
    'serviceExtra',
    'extraInfoTables',
    'module',
    'token',
    'da_link',
    'sr_link',
    'cp_data',
    'da_data',
    'plesk12_data',
    'serviceAddons',
  };
}

