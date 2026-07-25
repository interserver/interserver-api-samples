part of swagger.api;

class VpsOrder {
  /* Cost of VPS Slice SSD OVZ */
  double vpsSliceSsdOvzCost = null;
/* Cost of VPS Slice OVZ */
  double vpsSliceOvzCost = null;
/* Cost of VPS Slice SSD Virtuozzo */
  double vpsSliceSsdVirtuozzoCost = null;
/* Cost of VPS Slice Virtuozzo */
  double vpsSliceVirtuozzoCost = null;
/* Cost of VPS Slice HyperV */
  double vpsSliceHypervCost = null;
/* Cost of VPS Slice VMware */
  double vpsSliceVmwareCost = null;
/* Cost of VPS Slice LXC */
  double vpsSliceLxcCost = null;
/* Cost of VPS Slice Xen */
  double vpsSliceXenCost = null;
/* Cost of VPS Slice KVM L */
  double vpsSliceKvmLCost = null;
/* Cost of VPS Slice KVM Storage */
  double vpsSliceKvmStorageCost = null;
/* Cost of VPS in NY */
  double vpsNyCost = null;
/* Cost of VPS Slice KVM Windows */
  double vpsSliceKvmWCost = null;
/* Cost of cPanel */
  double cpanelCost = null;
/* Cost of DirectAdmin (DA) */
  double daCost = null;
/* RAM for VPS Slice */
  String ramSlice = null;
/* Hard Disk for VPS Slice */
  String hdSlice = null;
/* Storage Hard Disk for VPS Slice */
  String hdStorageSlice = null;
/* Bandwidth for VPS Slice */
  String bwSlice = null;
/* Bandwidth Type */
  String bwType = null;
/* Total Bandwidth */
  double bwTotal = null;
/* Maximum Slices */
  String maxSlices = null;

  VpsOrderPlatformPackages platformPackages = null;

  VpsOrderPlatformNames platformNames = null;

  VpsOrderPackageCosts packageCosts = null;

  VpsOrderLocationStock locationStock = null;

  VpsOrderLocationNames locationNames = null;

  VpsOrderOsNames osNames = null;

  VpsOrderTemplates templates = null;

  VpsOrderServiceTypes serviceTypes = null;
/* Currency */
  String currency = null;
/* Currency Symbol */
  String currencySymbol = null;

  VpsOrder();

  @override
  String toString() {
    return 'VpsOrder[vpsSliceSsdOvzCost=$vpsSliceSsdOvzCost, vpsSliceOvzCost=$vpsSliceOvzCost, vpsSliceSsdVirtuozzoCost=$vpsSliceSsdVirtuozzoCost, vpsSliceVirtuozzoCost=$vpsSliceVirtuozzoCost, vpsSliceHypervCost=$vpsSliceHypervCost, vpsSliceVmwareCost=$vpsSliceVmwareCost, vpsSliceLxcCost=$vpsSliceLxcCost, vpsSliceXenCost=$vpsSliceXenCost, vpsSliceKvmLCost=$vpsSliceKvmLCost, vpsSliceKvmStorageCost=$vpsSliceKvmStorageCost, vpsNyCost=$vpsNyCost, vpsSliceKvmWCost=$vpsSliceKvmWCost, cpanelCost=$cpanelCost, daCost=$daCost, ramSlice=$ramSlice, hdSlice=$hdSlice, hdStorageSlice=$hdStorageSlice, bwSlice=$bwSlice, bwType=$bwType, bwTotal=$bwTotal, maxSlices=$maxSlices, platformPackages=$platformPackages, platformNames=$platformNames, packageCosts=$packageCosts, locationStock=$locationStock, locationNames=$locationNames, osNames=$osNames, templates=$templates, serviceTypes=$serviceTypes, currency=$currency, currencySymbol=$currencySymbol, ]';
  }

  VpsOrder.fromJson(Map<String, dynamic> json) {
    if (json == null) return;
    vpsSliceSsdOvzCost = json['vpsSliceSsdOvzCost'];
    vpsSliceOvzCost = json['vpsSliceOvzCost'];
    vpsSliceSsdVirtuozzoCost = json['vpsSliceSsdVirtuozzoCost'];
    vpsSliceVirtuozzoCost = json['vpsSliceVirtuozzoCost'];
    vpsSliceHypervCost = json['vpsSliceHypervCost'];
    vpsSliceVmwareCost = json['vpsSliceVmwareCost'];
    vpsSliceLxcCost = json['vpsSliceLxcCost'];
    vpsSliceXenCost = json['vpsSliceXenCost'];
    vpsSliceKvmLCost = json['vpsSliceKvmLCost'];
    vpsSliceKvmStorageCost = json['vpsSliceKvmStorageCost'];
    vpsNyCost = json['vpsNyCost'];
    vpsSliceKvmWCost = json['vpsSliceKvmWCost'];
    cpanelCost = json['cpanelCost'];
    daCost = json['daCost'];
    ramSlice = json['ramSlice'];
    hdSlice = json['hdSlice'];
    hdStorageSlice = json['hdStorageSlice'];
    bwSlice = json['bwSlice'];
    bwType = json['bwType'];
    bwTotal = json['bwTotal'];
    maxSlices = json['maxSlices'];
    platformPackages = new VpsOrderPlatformPackages.fromJson(json['platformPackages']);
    platformNames = new VpsOrderPlatformNames.fromJson(json['platformNames']);
    packageCosts = new VpsOrderPackageCosts.fromJson(json['packageCosts']);
    locationStock = new VpsOrderLocationStock.fromJson(json['locationStock']);
    locationNames = new VpsOrderLocationNames.fromJson(json['locationNames']);
    osNames = new VpsOrderOsNames.fromJson(json['osNames']);
    templates = new VpsOrderTemplates.fromJson(json['templates']);
    serviceTypes = new VpsOrderServiceTypes.fromJson(json['serviceTypes']);
    currency = json['currency'];
    currencySymbol = json['currencySymbol'];
  }

  Map<String, dynamic> toJson() {
    return {
      'vpsSliceSsdOvzCost': vpsSliceSsdOvzCost,
      'vpsSliceOvzCost': vpsSliceOvzCost,
      'vpsSliceSsdVirtuozzoCost': vpsSliceSsdVirtuozzoCost,
      'vpsSliceVirtuozzoCost': vpsSliceVirtuozzoCost,
      'vpsSliceHypervCost': vpsSliceHypervCost,
      'vpsSliceVmwareCost': vpsSliceVmwareCost,
      'vpsSliceLxcCost': vpsSliceLxcCost,
      'vpsSliceXenCost': vpsSliceXenCost,
      'vpsSliceKvmLCost': vpsSliceKvmLCost,
      'vpsSliceKvmStorageCost': vpsSliceKvmStorageCost,
      'vpsNyCost': vpsNyCost,
      'vpsSliceKvmWCost': vpsSliceKvmWCost,
      'cpanelCost': cpanelCost,
      'daCost': daCost,
      'ramSlice': ramSlice,
      'hdSlice': hdSlice,
      'hdStorageSlice': hdStorageSlice,
      'bwSlice': bwSlice,
      'bwType': bwType,
      'bwTotal': bwTotal,
      'maxSlices': maxSlices,
      'platformPackages': platformPackages,
      'platformNames': platformNames,
      'packageCosts': packageCosts,
      'locationStock': locationStock,
      'locationNames': locationNames,
      'osNames': osNames,
      'templates': templates,
      'serviceTypes': serviceTypes,
      'currency': currency,
      'currencySymbol': currencySymbol
     };
  }

  static List<VpsOrder> listFromJson(List<dynamic> json) {
    return json == null ? new List<VpsOrder>() : json.map((value) => new VpsOrder.fromJson(value)).toList();
  }

  static Map<String, VpsOrder> mapFromJson(Map<String, Map<String, dynamic>> json) {
    var map = new Map<String, VpsOrder>();
    if (json != null && json.length > 0) {
      json.forEach((String key, Map<String, dynamic> value) => map[key] = new VpsOrder.fromJson(value));
    }
    return map;
  }
}
