//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class Quickserver {
  /// Returns a new [Quickserver] instance.
  Quickserver({
    required this.serviceInfo,
    this.clientLinks = const [],
    required this.billingDetails,
    required this.custCurrency,
    required this.custCurrencySymbol,
    required this.serviceMaster,
    required this.package,
    required this.osTemplate,
    required this.serviceExtra,
    required this.extraInfoTables,
    required this.cpuGraphData,
    required this.bandwidthXaxis,
    required this.bandwidthYaxis,
    required this.module,
    required this.token,
    required this.serviceDiskUsed,
    required this.serviceDiskTotal,
    required this.diskPercentage,
    required this.memory,
    required this.hdd,
    this.serviceOverviewExtra = const [],
  });

  QuickserverServiceInfo serviceInfo;

  List<QuickserverClientLink> clientLinks;

  QuickserverBillingDetails billingDetails;

  /// Currency of the customer
  String custCurrency;

  /// Currency symbol of the customer
  String custCurrencySymbol;

  QuickserverServiceMaster serviceMaster;

  /// Package name
  String package;

  /// Operating system template
  String osTemplate;

  QuickserverServiceExtra serviceExtra;

  QuickserverExtraInfoTables extraInfoTables;

  /// CPU graph data
  String cpuGraphData;

  /// Bandwidth x-axis data
  String bandwidthXaxis;

  /// Bandwidth y-axis data
  String bandwidthYaxis;

  /// Module information
  String module;

  /// Authentication token
  String token;

  /// Used disk space
  String serviceDiskUsed;

  /// Total disk space
  String serviceDiskTotal;

  /// Disk usage percentage
  num diskPercentage;

  /// Memory information
  String memory;

  /// HDD information
  String hdd;

  List<String> serviceOverviewExtra;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Quickserver &&
    other.serviceInfo == serviceInfo &&
    _deepEquality.equals(other.clientLinks, clientLinks) &&
    other.billingDetails == billingDetails &&
    other.custCurrency == custCurrency &&
    other.custCurrencySymbol == custCurrencySymbol &&
    other.serviceMaster == serviceMaster &&
    other.package == package &&
    other.osTemplate == osTemplate &&
    other.serviceExtra == serviceExtra &&
    other.extraInfoTables == extraInfoTables &&
    other.cpuGraphData == cpuGraphData &&
    other.bandwidthXaxis == bandwidthXaxis &&
    other.bandwidthYaxis == bandwidthYaxis &&
    other.module == module &&
    other.token == token &&
    other.serviceDiskUsed == serviceDiskUsed &&
    other.serviceDiskTotal == serviceDiskTotal &&
    other.diskPercentage == diskPercentage &&
    other.memory == memory &&
    other.hdd == hdd &&
    _deepEquality.equals(other.serviceOverviewExtra, serviceOverviewExtra);

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
    (osTemplate.hashCode) +
    (serviceExtra.hashCode) +
    (extraInfoTables.hashCode) +
    (cpuGraphData.hashCode) +
    (bandwidthXaxis.hashCode) +
    (bandwidthYaxis.hashCode) +
    (module.hashCode) +
    (token.hashCode) +
    (serviceDiskUsed.hashCode) +
    (serviceDiskTotal.hashCode) +
    (diskPercentage.hashCode) +
    (memory.hashCode) +
    (hdd.hashCode) +
    (serviceOverviewExtra.hashCode);

  @override
  String toString() => 'Quickserver[serviceInfo=$serviceInfo, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, serviceMaster=$serviceMaster, package=$package, osTemplate=$osTemplate, serviceExtra=$serviceExtra, extraInfoTables=$extraInfoTables, cpuGraphData=$cpuGraphData, bandwidthXaxis=$bandwidthXaxis, bandwidthYaxis=$bandwidthYaxis, module=$module, token=$token, serviceDiskUsed=$serviceDiskUsed, serviceDiskTotal=$serviceDiskTotal, diskPercentage=$diskPercentage, memory=$memory, hdd=$hdd, serviceOverviewExtra=$serviceOverviewExtra]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'serviceInfo'] = this.serviceInfo;
      json[r'client_links'] = this.clientLinks;
      json[r'billingDetails'] = this.billingDetails;
      json[r'custCurrency'] = this.custCurrency;
      json[r'custCurrencySymbol'] = this.custCurrencySymbol;
      json[r'serviceMaster'] = this.serviceMaster;
      json[r'package'] = this.package;
      json[r'os_template'] = this.osTemplate;
      json[r'serviceExtra'] = this.serviceExtra;
      json[r'extraInfoTables'] = this.extraInfoTables;
      json[r'cpu_graph_data'] = this.cpuGraphData;
      json[r'bandwidth_xaxis'] = this.bandwidthXaxis;
      json[r'bandwidth_yaxis'] = this.bandwidthYaxis;
      json[r'module'] = this.module;
      json[r'token'] = this.token;
      json[r'service_disk_used'] = this.serviceDiskUsed;
      json[r'service_disk_total'] = this.serviceDiskTotal;
      json[r'disk_percentage'] = this.diskPercentage;
      json[r'memory'] = this.memory;
      json[r'hdd'] = this.hdd;
      json[r'service_overview_extra'] = this.serviceOverviewExtra;
    return json;
  }

  /// Returns a new [Quickserver] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Quickserver? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'serviceInfo'), 'Required key "Quickserver[serviceInfo]" is missing from JSON.');
        assert(json[r'serviceInfo'] != null, 'Required key "Quickserver[serviceInfo]" has a null value in JSON.');
        assert(json.containsKey(r'client_links'), 'Required key "Quickserver[client_links]" is missing from JSON.');
        assert(json[r'client_links'] != null, 'Required key "Quickserver[client_links]" has a null value in JSON.');
        assert(json.containsKey(r'billingDetails'), 'Required key "Quickserver[billingDetails]" is missing from JSON.');
        assert(json[r'billingDetails'] != null, 'Required key "Quickserver[billingDetails]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrency'), 'Required key "Quickserver[custCurrency]" is missing from JSON.');
        assert(json[r'custCurrency'] != null, 'Required key "Quickserver[custCurrency]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrencySymbol'), 'Required key "Quickserver[custCurrencySymbol]" is missing from JSON.');
        assert(json[r'custCurrencySymbol'] != null, 'Required key "Quickserver[custCurrencySymbol]" has a null value in JSON.');
        assert(json.containsKey(r'serviceMaster'), 'Required key "Quickserver[serviceMaster]" is missing from JSON.');
        assert(json[r'serviceMaster'] != null, 'Required key "Quickserver[serviceMaster]" has a null value in JSON.');
        assert(json.containsKey(r'package'), 'Required key "Quickserver[package]" is missing from JSON.');
        assert(json[r'package'] != null, 'Required key "Quickserver[package]" has a null value in JSON.');
        assert(json.containsKey(r'os_template'), 'Required key "Quickserver[os_template]" is missing from JSON.');
        assert(json[r'os_template'] != null, 'Required key "Quickserver[os_template]" has a null value in JSON.');
        assert(json.containsKey(r'serviceExtra'), 'Required key "Quickserver[serviceExtra]" is missing from JSON.');
        assert(json[r'serviceExtra'] != null, 'Required key "Quickserver[serviceExtra]" has a null value in JSON.');
        assert(json.containsKey(r'extraInfoTables'), 'Required key "Quickserver[extraInfoTables]" is missing from JSON.');
        assert(json[r'extraInfoTables'] != null, 'Required key "Quickserver[extraInfoTables]" has a null value in JSON.');
        assert(json.containsKey(r'cpu_graph_data'), 'Required key "Quickserver[cpu_graph_data]" is missing from JSON.');
        assert(json[r'cpu_graph_data'] != null, 'Required key "Quickserver[cpu_graph_data]" has a null value in JSON.');
        assert(json.containsKey(r'bandwidth_xaxis'), 'Required key "Quickserver[bandwidth_xaxis]" is missing from JSON.');
        assert(json[r'bandwidth_xaxis'] != null, 'Required key "Quickserver[bandwidth_xaxis]" has a null value in JSON.');
        assert(json.containsKey(r'bandwidth_yaxis'), 'Required key "Quickserver[bandwidth_yaxis]" is missing from JSON.');
        assert(json[r'bandwidth_yaxis'] != null, 'Required key "Quickserver[bandwidth_yaxis]" has a null value in JSON.');
        assert(json.containsKey(r'module'), 'Required key "Quickserver[module]" is missing from JSON.');
        assert(json[r'module'] != null, 'Required key "Quickserver[module]" has a null value in JSON.');
        assert(json.containsKey(r'token'), 'Required key "Quickserver[token]" is missing from JSON.');
        assert(json[r'token'] != null, 'Required key "Quickserver[token]" has a null value in JSON.');
        assert(json.containsKey(r'service_disk_used'), 'Required key "Quickserver[service_disk_used]" is missing from JSON.');
        assert(json[r'service_disk_used'] != null, 'Required key "Quickserver[service_disk_used]" has a null value in JSON.');
        assert(json.containsKey(r'service_disk_total'), 'Required key "Quickserver[service_disk_total]" is missing from JSON.');
        assert(json[r'service_disk_total'] != null, 'Required key "Quickserver[service_disk_total]" has a null value in JSON.');
        assert(json.containsKey(r'disk_percentage'), 'Required key "Quickserver[disk_percentage]" is missing from JSON.');
        assert(json[r'disk_percentage'] != null, 'Required key "Quickserver[disk_percentage]" has a null value in JSON.');
        assert(json.containsKey(r'memory'), 'Required key "Quickserver[memory]" is missing from JSON.');
        assert(json[r'memory'] != null, 'Required key "Quickserver[memory]" has a null value in JSON.');
        assert(json.containsKey(r'hdd'), 'Required key "Quickserver[hdd]" is missing from JSON.');
        assert(json[r'hdd'] != null, 'Required key "Quickserver[hdd]" has a null value in JSON.');
        assert(json.containsKey(r'service_overview_extra'), 'Required key "Quickserver[service_overview_extra]" is missing from JSON.');
        assert(json[r'service_overview_extra'] != null, 'Required key "Quickserver[service_overview_extra]" has a null value in JSON.');
        return true;
      }());

      return Quickserver(
        serviceInfo: QuickserverServiceInfo.fromJson(json[r'serviceInfo'])!,
        clientLinks: QuickserverClientLink.listFromJson(json[r'client_links']),
        billingDetails: QuickserverBillingDetails.fromJson(json[r'billingDetails'])!,
        custCurrency: mapValueOfType<String>(json, r'custCurrency')!,
        custCurrencySymbol: mapValueOfType<String>(json, r'custCurrencySymbol')!,
        serviceMaster: QuickserverServiceMaster.fromJson(json[r'serviceMaster'])!,
        package: mapValueOfType<String>(json, r'package')!,
        osTemplate: mapValueOfType<String>(json, r'os_template')!,
        serviceExtra: QuickserverServiceExtra.fromJson(json[r'serviceExtra'])!,
        extraInfoTables: QuickserverExtraInfoTables.fromJson(json[r'extraInfoTables'])!,
        cpuGraphData: mapValueOfType<String>(json, r'cpu_graph_data')!,
        bandwidthXaxis: mapValueOfType<String>(json, r'bandwidth_xaxis')!,
        bandwidthYaxis: mapValueOfType<String>(json, r'bandwidth_yaxis')!,
        module: mapValueOfType<String>(json, r'module')!,
        token: mapValueOfType<String>(json, r'token')!,
        serviceDiskUsed: mapValueOfType<String>(json, r'service_disk_used')!,
        serviceDiskTotal: mapValueOfType<String>(json, r'service_disk_total')!,
        diskPercentage: num.parse('${json[r'disk_percentage']}'),
        memory: mapValueOfType<String>(json, r'memory')!,
        hdd: mapValueOfType<String>(json, r'hdd')!,
        serviceOverviewExtra: json[r'service_overview_extra'] is Iterable
            ? (json[r'service_overview_extra'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<Quickserver> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Quickserver>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Quickserver.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Quickserver> mapFromJson(dynamic json) {
    final map = <String, Quickserver>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Quickserver.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Quickserver-objects as value to a dart map
  static Map<String, List<Quickserver>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Quickserver>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Quickserver.listFromJson(entry.value, growable: growable,);
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
    'os_template',
    'serviceExtra',
    'extraInfoTables',
    'cpu_graph_data',
    'bandwidth_xaxis',
    'bandwidth_yaxis',
    'module',
    'token',
    'service_disk_used',
    'service_disk_total',
    'disk_percentage',
    'memory',
    'hdd',
    'service_overview_extra',
  };
}

