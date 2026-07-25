//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class Server {
  /// Returns a new [Server] instance.
  Server({
    required this.ipmiAuth,
    this.clientLinks = const [],
    required this.billingDetails,
    required this.custCurrency,
    required this.custCurrencySymbol,
    required this.package,
    this.serviceExtra = const [],
    required this.locations,
    required this.networkInfo,
    required this.extraInfoTables,
    required this.serviceInfo,
  });

  bool ipmiAuth;

  List<ServerClientLink> clientLinks;

  ServerBillingDetails billingDetails;

  String custCurrency;

  String custCurrencySymbol;

  String package;

  List<String> serviceExtra;

  ServerLocations locations;

  ServerNetworkInfo networkInfo;

  ServerExtraInfoTables extraInfoTables;

  ServerServiceInfo serviceInfo;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Server &&
    other.ipmiAuth == ipmiAuth &&
    _deepEquality.equals(other.clientLinks, clientLinks) &&
    other.billingDetails == billingDetails &&
    other.custCurrency == custCurrency &&
    other.custCurrencySymbol == custCurrencySymbol &&
    other.package == package &&
    _deepEquality.equals(other.serviceExtra, serviceExtra) &&
    other.locations == locations &&
    other.networkInfo == networkInfo &&
    other.extraInfoTables == extraInfoTables &&
    other.serviceInfo == serviceInfo;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ipmiAuth.hashCode) +
    (clientLinks.hashCode) +
    (billingDetails.hashCode) +
    (custCurrency.hashCode) +
    (custCurrencySymbol.hashCode) +
    (package.hashCode) +
    (serviceExtra.hashCode) +
    (locations.hashCode) +
    (networkInfo.hashCode) +
    (extraInfoTables.hashCode) +
    (serviceInfo.hashCode);

  @override
  String toString() => 'Server[ipmiAuth=$ipmiAuth, clientLinks=$clientLinks, billingDetails=$billingDetails, custCurrency=$custCurrency, custCurrencySymbol=$custCurrencySymbol, package=$package, serviceExtra=$serviceExtra, locations=$locations, networkInfo=$networkInfo, extraInfoTables=$extraInfoTables, serviceInfo=$serviceInfo]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ipmiAuth'] = this.ipmiAuth;
      json[r'client_links'] = this.clientLinks;
      json[r'billingDetails'] = this.billingDetails;
      json[r'custCurrency'] = this.custCurrency;
      json[r'custCurrencySymbol'] = this.custCurrencySymbol;
      json[r'package'] = this.package;
      json[r'serviceExtra'] = this.serviceExtra;
      json[r'locations'] = this.locations;
      json[r'networkInfo'] = this.networkInfo;
      json[r'extraInfoTables'] = this.extraInfoTables;
      json[r'serviceInfo'] = this.serviceInfo;
    return json;
  }

  /// Returns a new [Server] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Server? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'ipmiAuth'), 'Required key "Server[ipmiAuth]" is missing from JSON.');
        assert(json[r'ipmiAuth'] != null, 'Required key "Server[ipmiAuth]" has a null value in JSON.');
        assert(json.containsKey(r'client_links'), 'Required key "Server[client_links]" is missing from JSON.');
        assert(json[r'client_links'] != null, 'Required key "Server[client_links]" has a null value in JSON.');
        assert(json.containsKey(r'billingDetails'), 'Required key "Server[billingDetails]" is missing from JSON.');
        assert(json[r'billingDetails'] != null, 'Required key "Server[billingDetails]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrency'), 'Required key "Server[custCurrency]" is missing from JSON.');
        assert(json[r'custCurrency'] != null, 'Required key "Server[custCurrency]" has a null value in JSON.');
        assert(json.containsKey(r'custCurrencySymbol'), 'Required key "Server[custCurrencySymbol]" is missing from JSON.');
        assert(json[r'custCurrencySymbol'] != null, 'Required key "Server[custCurrencySymbol]" has a null value in JSON.');
        assert(json.containsKey(r'package'), 'Required key "Server[package]" is missing from JSON.');
        assert(json[r'package'] != null, 'Required key "Server[package]" has a null value in JSON.');
        assert(json.containsKey(r'serviceExtra'), 'Required key "Server[serviceExtra]" is missing from JSON.');
        assert(json[r'serviceExtra'] != null, 'Required key "Server[serviceExtra]" has a null value in JSON.');
        assert(json.containsKey(r'locations'), 'Required key "Server[locations]" is missing from JSON.');
        assert(json[r'locations'] != null, 'Required key "Server[locations]" has a null value in JSON.');
        assert(json.containsKey(r'networkInfo'), 'Required key "Server[networkInfo]" is missing from JSON.');
        assert(json[r'networkInfo'] != null, 'Required key "Server[networkInfo]" has a null value in JSON.');
        assert(json.containsKey(r'extraInfoTables'), 'Required key "Server[extraInfoTables]" is missing from JSON.');
        assert(json[r'extraInfoTables'] != null, 'Required key "Server[extraInfoTables]" has a null value in JSON.');
        assert(json.containsKey(r'serviceInfo'), 'Required key "Server[serviceInfo]" is missing from JSON.');
        assert(json[r'serviceInfo'] != null, 'Required key "Server[serviceInfo]" has a null value in JSON.');
        return true;
      }());

      return Server(
        ipmiAuth: mapValueOfType<bool>(json, r'ipmiAuth')!,
        clientLinks: ServerClientLink.listFromJson(json[r'client_links']),
        billingDetails: ServerBillingDetails.fromJson(json[r'billingDetails'])!,
        custCurrency: mapValueOfType<String>(json, r'custCurrency')!,
        custCurrencySymbol: mapValueOfType<String>(json, r'custCurrencySymbol')!,
        package: mapValueOfType<String>(json, r'package')!,
        serviceExtra: json[r'serviceExtra'] is Iterable
            ? (json[r'serviceExtra'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        locations: ServerLocations.fromJson(json[r'locations'])!,
        networkInfo: ServerNetworkInfo.fromJson(json[r'networkInfo'])!,
        extraInfoTables: ServerExtraInfoTables.fromJson(json[r'extraInfoTables'])!,
        serviceInfo: ServerServiceInfo.fromJson(json[r'serviceInfo'])!,
      );
    }
    return null;
  }

  static List<Server> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Server>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Server.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Server> mapFromJson(dynamic json) {
    final map = <String, Server>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Server.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Server-objects as value to a dart map
  static Map<String, List<Server>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Server>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Server.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ipmiAuth',
    'client_links',
    'billingDetails',
    'custCurrency',
    'custCurrencySymbol',
    'package',
    'serviceExtra',
    'locations',
    'networkInfo',
    'extraInfoTables',
    'serviceInfo',
  };
}

