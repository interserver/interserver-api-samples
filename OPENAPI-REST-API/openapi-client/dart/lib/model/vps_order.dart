//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsOrder {
  /// Returns a new [VpsOrder] instance.
  VpsOrder({
    required this.vpsSliceSsdOvzCost,
    required this.vpsSliceOvzCost,
    required this.vpsSliceSsdVirtuozzoCost,
    required this.vpsSliceVirtuozzoCost,
    required this.vpsSliceHypervCost,
    required this.vpsSliceVmwareCost,
    required this.vpsSliceLxcCost,
    required this.vpsSliceXenCost,
    required this.vpsSliceKvmLCost,
    required this.vpsSliceKvmStorageCost,
    required this.vpsNyCost,
    required this.vpsSliceKvmWCost,
    required this.cpanelCost,
    required this.daCost,
    required this.ramSlice,
    required this.hdSlice,
    required this.hdStorageSlice,
    required this.bwSlice,
    required this.bwType,
    required this.bwTotal,
    required this.maxSlices,
    required this.platformPackages,
    required this.platformNames,
    required this.packageCosts,
    required this.locationStock,
    required this.locationNames,
    required this.osNames,
    required this.templates,
    required this.serviceTypes,
    required this.currency,
    required this.currencySymbol,
  });

  /// Cost of VPS Slice SSD OVZ
  num vpsSliceSsdOvzCost;

  /// Cost of VPS Slice OVZ
  num vpsSliceOvzCost;

  /// Cost of VPS Slice SSD Virtuozzo
  num vpsSliceSsdVirtuozzoCost;

  /// Cost of VPS Slice Virtuozzo
  num vpsSliceVirtuozzoCost;

  /// Cost of VPS Slice HyperV
  num vpsSliceHypervCost;

  /// Cost of VPS Slice VMware
  num vpsSliceVmwareCost;

  /// Cost of VPS Slice LXC
  num vpsSliceLxcCost;

  /// Cost of VPS Slice Xen
  num vpsSliceXenCost;

  /// Cost of VPS Slice KVM L
  num vpsSliceKvmLCost;

  /// Cost of VPS Slice KVM Storage
  num vpsSliceKvmStorageCost;

  /// Cost of VPS in NY
  num vpsNyCost;

  /// Cost of VPS Slice KVM Windows
  num vpsSliceKvmWCost;

  /// Cost of cPanel
  num cpanelCost;

  /// Cost of DirectAdmin (DA)
  num daCost;

  /// RAM for VPS Slice
  String ramSlice;

  /// Hard Disk for VPS Slice
  String hdSlice;

  /// Storage Hard Disk for VPS Slice
  String hdStorageSlice;

  /// Bandwidth for VPS Slice
  String bwSlice;

  /// Bandwidth Type
  String bwType;

  /// Total Bandwidth
  num bwTotal;

  /// Maximum Slices
  String maxSlices;

  VpsOrderPlatformPackages platformPackages;

  VpsOrderPlatformNames platformNames;

  VpsOrderPackageCosts packageCosts;

  VpsOrderLocationStock locationStock;

  VpsOrderLocationNames locationNames;

  VpsOrderOsNames osNames;

  VpsOrderTemplates templates;

  VpsOrderServiceTypes serviceTypes;

  /// Currency
  String currency;

  /// Currency Symbol
  String currencySymbol;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsOrder &&
    other.vpsSliceSsdOvzCost == vpsSliceSsdOvzCost &&
    other.vpsSliceOvzCost == vpsSliceOvzCost &&
    other.vpsSliceSsdVirtuozzoCost == vpsSliceSsdVirtuozzoCost &&
    other.vpsSliceVirtuozzoCost == vpsSliceVirtuozzoCost &&
    other.vpsSliceHypervCost == vpsSliceHypervCost &&
    other.vpsSliceVmwareCost == vpsSliceVmwareCost &&
    other.vpsSliceLxcCost == vpsSliceLxcCost &&
    other.vpsSliceXenCost == vpsSliceXenCost &&
    other.vpsSliceKvmLCost == vpsSliceKvmLCost &&
    other.vpsSliceKvmStorageCost == vpsSliceKvmStorageCost &&
    other.vpsNyCost == vpsNyCost &&
    other.vpsSliceKvmWCost == vpsSliceKvmWCost &&
    other.cpanelCost == cpanelCost &&
    other.daCost == daCost &&
    other.ramSlice == ramSlice &&
    other.hdSlice == hdSlice &&
    other.hdStorageSlice == hdStorageSlice &&
    other.bwSlice == bwSlice &&
    other.bwType == bwType &&
    other.bwTotal == bwTotal &&
    other.maxSlices == maxSlices &&
    other.platformPackages == platformPackages &&
    other.platformNames == platformNames &&
    other.packageCosts == packageCosts &&
    other.locationStock == locationStock &&
    other.locationNames == locationNames &&
    other.osNames == osNames &&
    other.templates == templates &&
    other.serviceTypes == serviceTypes &&
    other.currency == currency &&
    other.currencySymbol == currencySymbol;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (vpsSliceSsdOvzCost.hashCode) +
    (vpsSliceOvzCost.hashCode) +
    (vpsSliceSsdVirtuozzoCost.hashCode) +
    (vpsSliceVirtuozzoCost.hashCode) +
    (vpsSliceHypervCost.hashCode) +
    (vpsSliceVmwareCost.hashCode) +
    (vpsSliceLxcCost.hashCode) +
    (vpsSliceXenCost.hashCode) +
    (vpsSliceKvmLCost.hashCode) +
    (vpsSliceKvmStorageCost.hashCode) +
    (vpsNyCost.hashCode) +
    (vpsSliceKvmWCost.hashCode) +
    (cpanelCost.hashCode) +
    (daCost.hashCode) +
    (ramSlice.hashCode) +
    (hdSlice.hashCode) +
    (hdStorageSlice.hashCode) +
    (bwSlice.hashCode) +
    (bwType.hashCode) +
    (bwTotal.hashCode) +
    (maxSlices.hashCode) +
    (platformPackages.hashCode) +
    (platformNames.hashCode) +
    (packageCosts.hashCode) +
    (locationStock.hashCode) +
    (locationNames.hashCode) +
    (osNames.hashCode) +
    (templates.hashCode) +
    (serviceTypes.hashCode) +
    (currency.hashCode) +
    (currencySymbol.hashCode);

  @override
  String toString() => 'VpsOrder[vpsSliceSsdOvzCost=$vpsSliceSsdOvzCost, vpsSliceOvzCost=$vpsSliceOvzCost, vpsSliceSsdVirtuozzoCost=$vpsSliceSsdVirtuozzoCost, vpsSliceVirtuozzoCost=$vpsSliceVirtuozzoCost, vpsSliceHypervCost=$vpsSliceHypervCost, vpsSliceVmwareCost=$vpsSliceVmwareCost, vpsSliceLxcCost=$vpsSliceLxcCost, vpsSliceXenCost=$vpsSliceXenCost, vpsSliceKvmLCost=$vpsSliceKvmLCost, vpsSliceKvmStorageCost=$vpsSliceKvmStorageCost, vpsNyCost=$vpsNyCost, vpsSliceKvmWCost=$vpsSliceKvmWCost, cpanelCost=$cpanelCost, daCost=$daCost, ramSlice=$ramSlice, hdSlice=$hdSlice, hdStorageSlice=$hdStorageSlice, bwSlice=$bwSlice, bwType=$bwType, bwTotal=$bwTotal, maxSlices=$maxSlices, platformPackages=$platformPackages, platformNames=$platformNames, packageCosts=$packageCosts, locationStock=$locationStock, locationNames=$locationNames, osNames=$osNames, templates=$templates, serviceTypes=$serviceTypes, currency=$currency, currencySymbol=$currencySymbol]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'vpsSliceSsdOvzCost'] = this.vpsSliceSsdOvzCost;
      json[r'vpsSliceOvzCost'] = this.vpsSliceOvzCost;
      json[r'vpsSliceSsdVirtuozzoCost'] = this.vpsSliceSsdVirtuozzoCost;
      json[r'vpsSliceVirtuozzoCost'] = this.vpsSliceVirtuozzoCost;
      json[r'vpsSliceHypervCost'] = this.vpsSliceHypervCost;
      json[r'vpsSliceVmwareCost'] = this.vpsSliceVmwareCost;
      json[r'vpsSliceLxcCost'] = this.vpsSliceLxcCost;
      json[r'vpsSliceXenCost'] = this.vpsSliceXenCost;
      json[r'vpsSliceKvmLCost'] = this.vpsSliceKvmLCost;
      json[r'vpsSliceKvmStorageCost'] = this.vpsSliceKvmStorageCost;
      json[r'vpsNyCost'] = this.vpsNyCost;
      json[r'vpsSliceKvmWCost'] = this.vpsSliceKvmWCost;
      json[r'cpanelCost'] = this.cpanelCost;
      json[r'daCost'] = this.daCost;
      json[r'ramSlice'] = this.ramSlice;
      json[r'hdSlice'] = this.hdSlice;
      json[r'hdStorageSlice'] = this.hdStorageSlice;
      json[r'bwSlice'] = this.bwSlice;
      json[r'bwType'] = this.bwType;
      json[r'bwTotal'] = this.bwTotal;
      json[r'maxSlices'] = this.maxSlices;
      json[r'platformPackages'] = this.platformPackages;
      json[r'platformNames'] = this.platformNames;
      json[r'packageCosts'] = this.packageCosts;
      json[r'locationStock'] = this.locationStock;
      json[r'locationNames'] = this.locationNames;
      json[r'osNames'] = this.osNames;
      json[r'templates'] = this.templates;
      json[r'serviceTypes'] = this.serviceTypes;
      json[r'currency'] = this.currency;
      json[r'currencySymbol'] = this.currencySymbol;
    return json;
  }

  /// Returns a new [VpsOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'vpsSliceSsdOvzCost'), 'Required key "VpsOrder[vpsSliceSsdOvzCost]" is missing from JSON.');
        assert(json[r'vpsSliceSsdOvzCost'] != null, 'Required key "VpsOrder[vpsSliceSsdOvzCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceOvzCost'), 'Required key "VpsOrder[vpsSliceOvzCost]" is missing from JSON.');
        assert(json[r'vpsSliceOvzCost'] != null, 'Required key "VpsOrder[vpsSliceOvzCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceSsdVirtuozzoCost'), 'Required key "VpsOrder[vpsSliceSsdVirtuozzoCost]" is missing from JSON.');
        assert(json[r'vpsSliceSsdVirtuozzoCost'] != null, 'Required key "VpsOrder[vpsSliceSsdVirtuozzoCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceVirtuozzoCost'), 'Required key "VpsOrder[vpsSliceVirtuozzoCost]" is missing from JSON.');
        assert(json[r'vpsSliceVirtuozzoCost'] != null, 'Required key "VpsOrder[vpsSliceVirtuozzoCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceHypervCost'), 'Required key "VpsOrder[vpsSliceHypervCost]" is missing from JSON.');
        assert(json[r'vpsSliceHypervCost'] != null, 'Required key "VpsOrder[vpsSliceHypervCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceVmwareCost'), 'Required key "VpsOrder[vpsSliceVmwareCost]" is missing from JSON.');
        assert(json[r'vpsSliceVmwareCost'] != null, 'Required key "VpsOrder[vpsSliceVmwareCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceLxcCost'), 'Required key "VpsOrder[vpsSliceLxcCost]" is missing from JSON.');
        assert(json[r'vpsSliceLxcCost'] != null, 'Required key "VpsOrder[vpsSliceLxcCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceXenCost'), 'Required key "VpsOrder[vpsSliceXenCost]" is missing from JSON.');
        assert(json[r'vpsSliceXenCost'] != null, 'Required key "VpsOrder[vpsSliceXenCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceKvmLCost'), 'Required key "VpsOrder[vpsSliceKvmLCost]" is missing from JSON.');
        assert(json[r'vpsSliceKvmLCost'] != null, 'Required key "VpsOrder[vpsSliceKvmLCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceKvmStorageCost'), 'Required key "VpsOrder[vpsSliceKvmStorageCost]" is missing from JSON.');
        assert(json[r'vpsSliceKvmStorageCost'] != null, 'Required key "VpsOrder[vpsSliceKvmStorageCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsNyCost'), 'Required key "VpsOrder[vpsNyCost]" is missing from JSON.');
        assert(json[r'vpsNyCost'] != null, 'Required key "VpsOrder[vpsNyCost]" has a null value in JSON.');
        assert(json.containsKey(r'vpsSliceKvmWCost'), 'Required key "VpsOrder[vpsSliceKvmWCost]" is missing from JSON.');
        assert(json[r'vpsSliceKvmWCost'] != null, 'Required key "VpsOrder[vpsSliceKvmWCost]" has a null value in JSON.');
        assert(json.containsKey(r'cpanelCost'), 'Required key "VpsOrder[cpanelCost]" is missing from JSON.');
        assert(json[r'cpanelCost'] != null, 'Required key "VpsOrder[cpanelCost]" has a null value in JSON.');
        assert(json.containsKey(r'daCost'), 'Required key "VpsOrder[daCost]" is missing from JSON.');
        assert(json[r'daCost'] != null, 'Required key "VpsOrder[daCost]" has a null value in JSON.');
        assert(json.containsKey(r'ramSlice'), 'Required key "VpsOrder[ramSlice]" is missing from JSON.');
        assert(json[r'ramSlice'] != null, 'Required key "VpsOrder[ramSlice]" has a null value in JSON.');
        assert(json.containsKey(r'hdSlice'), 'Required key "VpsOrder[hdSlice]" is missing from JSON.');
        assert(json[r'hdSlice'] != null, 'Required key "VpsOrder[hdSlice]" has a null value in JSON.');
        assert(json.containsKey(r'hdStorageSlice'), 'Required key "VpsOrder[hdStorageSlice]" is missing from JSON.');
        assert(json[r'hdStorageSlice'] != null, 'Required key "VpsOrder[hdStorageSlice]" has a null value in JSON.');
        assert(json.containsKey(r'bwSlice'), 'Required key "VpsOrder[bwSlice]" is missing from JSON.');
        assert(json[r'bwSlice'] != null, 'Required key "VpsOrder[bwSlice]" has a null value in JSON.');
        assert(json.containsKey(r'bwType'), 'Required key "VpsOrder[bwType]" is missing from JSON.');
        assert(json[r'bwType'] != null, 'Required key "VpsOrder[bwType]" has a null value in JSON.');
        assert(json.containsKey(r'bwTotal'), 'Required key "VpsOrder[bwTotal]" is missing from JSON.');
        assert(json[r'bwTotal'] != null, 'Required key "VpsOrder[bwTotal]" has a null value in JSON.');
        assert(json.containsKey(r'maxSlices'), 'Required key "VpsOrder[maxSlices]" is missing from JSON.');
        assert(json[r'maxSlices'] != null, 'Required key "VpsOrder[maxSlices]" has a null value in JSON.');
        assert(json.containsKey(r'platformPackages'), 'Required key "VpsOrder[platformPackages]" is missing from JSON.');
        assert(json[r'platformPackages'] != null, 'Required key "VpsOrder[platformPackages]" has a null value in JSON.');
        assert(json.containsKey(r'platformNames'), 'Required key "VpsOrder[platformNames]" is missing from JSON.');
        assert(json[r'platformNames'] != null, 'Required key "VpsOrder[platformNames]" has a null value in JSON.');
        assert(json.containsKey(r'packageCosts'), 'Required key "VpsOrder[packageCosts]" is missing from JSON.');
        assert(json[r'packageCosts'] != null, 'Required key "VpsOrder[packageCosts]" has a null value in JSON.');
        assert(json.containsKey(r'locationStock'), 'Required key "VpsOrder[locationStock]" is missing from JSON.');
        assert(json[r'locationStock'] != null, 'Required key "VpsOrder[locationStock]" has a null value in JSON.');
        assert(json.containsKey(r'locationNames'), 'Required key "VpsOrder[locationNames]" is missing from JSON.');
        assert(json[r'locationNames'] != null, 'Required key "VpsOrder[locationNames]" has a null value in JSON.');
        assert(json.containsKey(r'osNames'), 'Required key "VpsOrder[osNames]" is missing from JSON.');
        assert(json[r'osNames'] != null, 'Required key "VpsOrder[osNames]" has a null value in JSON.');
        assert(json.containsKey(r'templates'), 'Required key "VpsOrder[templates]" is missing from JSON.');
        assert(json[r'templates'] != null, 'Required key "VpsOrder[templates]" has a null value in JSON.');
        assert(json.containsKey(r'serviceTypes'), 'Required key "VpsOrder[serviceTypes]" is missing from JSON.');
        assert(json[r'serviceTypes'] != null, 'Required key "VpsOrder[serviceTypes]" has a null value in JSON.');
        assert(json.containsKey(r'currency'), 'Required key "VpsOrder[currency]" is missing from JSON.');
        assert(json[r'currency'] != null, 'Required key "VpsOrder[currency]" has a null value in JSON.');
        assert(json.containsKey(r'currencySymbol'), 'Required key "VpsOrder[currencySymbol]" is missing from JSON.');
        assert(json[r'currencySymbol'] != null, 'Required key "VpsOrder[currencySymbol]" has a null value in JSON.');
        return true;
      }());

      return VpsOrder(
        vpsSliceSsdOvzCost: num.parse('${json[r'vpsSliceSsdOvzCost']}'),
        vpsSliceOvzCost: num.parse('${json[r'vpsSliceOvzCost']}'),
        vpsSliceSsdVirtuozzoCost: num.parse('${json[r'vpsSliceSsdVirtuozzoCost']}'),
        vpsSliceVirtuozzoCost: num.parse('${json[r'vpsSliceVirtuozzoCost']}'),
        vpsSliceHypervCost: num.parse('${json[r'vpsSliceHypervCost']}'),
        vpsSliceVmwareCost: num.parse('${json[r'vpsSliceVmwareCost']}'),
        vpsSliceLxcCost: num.parse('${json[r'vpsSliceLxcCost']}'),
        vpsSliceXenCost: num.parse('${json[r'vpsSliceXenCost']}'),
        vpsSliceKvmLCost: num.parse('${json[r'vpsSliceKvmLCost']}'),
        vpsSliceKvmStorageCost: num.parse('${json[r'vpsSliceKvmStorageCost']}'),
        vpsNyCost: num.parse('${json[r'vpsNyCost']}'),
        vpsSliceKvmWCost: num.parse('${json[r'vpsSliceKvmWCost']}'),
        cpanelCost: num.parse('${json[r'cpanelCost']}'),
        daCost: num.parse('${json[r'daCost']}'),
        ramSlice: mapValueOfType<String>(json, r'ramSlice')!,
        hdSlice: mapValueOfType<String>(json, r'hdSlice')!,
        hdStorageSlice: mapValueOfType<String>(json, r'hdStorageSlice')!,
        bwSlice: mapValueOfType<String>(json, r'bwSlice')!,
        bwType: mapValueOfType<String>(json, r'bwType')!,
        bwTotal: num.parse('${json[r'bwTotal']}'),
        maxSlices: mapValueOfType<String>(json, r'maxSlices')!,
        platformPackages: VpsOrderPlatformPackages.fromJson(json[r'platformPackages'])!,
        platformNames: VpsOrderPlatformNames.fromJson(json[r'platformNames'])!,
        packageCosts: VpsOrderPackageCosts.fromJson(json[r'packageCosts'])!,
        locationStock: VpsOrderLocationStock.fromJson(json[r'locationStock'])!,
        locationNames: VpsOrderLocationNames.fromJson(json[r'locationNames'])!,
        osNames: VpsOrderOsNames.fromJson(json[r'osNames'])!,
        templates: VpsOrderTemplates.fromJson(json[r'templates'])!,
        serviceTypes: VpsOrderServiceTypes.fromJson(json[r'serviceTypes'])!,
        currency: mapValueOfType<String>(json, r'currency')!,
        currencySymbol: mapValueOfType<String>(json, r'currencySymbol')!,
      );
    }
    return null;
  }

  static List<VpsOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsOrder> mapFromJson(dynamic json) {
    final map = <String, VpsOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsOrder-objects as value to a dart map
  static Map<String, List<VpsOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'vpsSliceSsdOvzCost',
    'vpsSliceOvzCost',
    'vpsSliceSsdVirtuozzoCost',
    'vpsSliceVirtuozzoCost',
    'vpsSliceHypervCost',
    'vpsSliceVmwareCost',
    'vpsSliceLxcCost',
    'vpsSliceXenCost',
    'vpsSliceKvmLCost',
    'vpsSliceKvmStorageCost',
    'vpsNyCost',
    'vpsSliceKvmWCost',
    'cpanelCost',
    'daCost',
    'ramSlice',
    'hdSlice',
    'hdStorageSlice',
    'bwSlice',
    'bwType',
    'bwTotal',
    'maxSlices',
    'platformPackages',
    'platformNames',
    'packageCosts',
    'locationStock',
    'locationNames',
    'osNames',
    'templates',
    'serviceTypes',
    'currency',
    'currencySymbol',
  };
}

