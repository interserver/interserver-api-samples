//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_order_location_names.dart';
import 'package:interserver_api/lib/model/vps_order_package_costs.dart';
import 'package:interserver_api/lib/model/vps_order_platform_packages.dart';
import 'package:interserver_api/lib/model/vps_order_service_types.dart';
import 'package:interserver_api/lib/model/vps_order_templates.dart';
import 'package:interserver_api/lib/model/vps_order_platform_names.dart';
import 'package:interserver_api/lib/model/vps_order_location_stock.dart';
import 'package:interserver_api/lib/model/vps_order_os_names.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrder {
  /// Returns a new [VpsOrder] instance.
  VpsOrder({

    required  this.vpsSliceSsdOvzCost,

    required  this.vpsSliceOvzCost,

    required  this.vpsSliceSsdVirtuozzoCost,

    required  this.vpsSliceVirtuozzoCost,

    required  this.vpsSliceHypervCost,

    required  this.vpsSliceVmwareCost,

    required  this.vpsSliceLxcCost,

    required  this.vpsSliceXenCost,

    required  this.vpsSliceKvmLCost,

    required  this.vpsSliceKvmStorageCost,

    required  this.vpsNyCost,

    required  this.vpsSliceKvmWCost,

    required  this.cpanelCost,

    required  this.daCost,

    required  this.ramSlice,

    required  this.hdSlice,

    required  this.hdStorageSlice,

    required  this.bwSlice,

    required  this.bwType,

    required  this.bwTotal,

    required  this.maxSlices,

    required  this.platformPackages,

    required  this.platformNames,

    required  this.packageCosts,

    required  this.locationStock,

    required  this.locationNames,

    required  this.osNames,

    required  this.templates,

    required  this.serviceTypes,

    required  this.currency,

    required  this.currencySymbol,
  });

      /// Cost of VPS Slice SSD OVZ
  @JsonKey(
    
    name: r'vpsSliceSsdOvzCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceSsdOvzCost;



      /// Cost of VPS Slice OVZ
  @JsonKey(
    
    name: r'vpsSliceOvzCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceOvzCost;



      /// Cost of VPS Slice SSD Virtuozzo
  @JsonKey(
    
    name: r'vpsSliceSsdVirtuozzoCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceSsdVirtuozzoCost;



      /// Cost of VPS Slice Virtuozzo
  @JsonKey(
    
    name: r'vpsSliceVirtuozzoCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceVirtuozzoCost;



      /// Cost of VPS Slice HyperV
  @JsonKey(
    
    name: r'vpsSliceHypervCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceHypervCost;



      /// Cost of VPS Slice VMware
  @JsonKey(
    
    name: r'vpsSliceVmwareCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceVmwareCost;



      /// Cost of VPS Slice LXC
  @JsonKey(
    
    name: r'vpsSliceLxcCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceLxcCost;



      /// Cost of VPS Slice Xen
  @JsonKey(
    
    name: r'vpsSliceXenCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceXenCost;



      /// Cost of VPS Slice KVM L
  @JsonKey(
    
    name: r'vpsSliceKvmLCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceKvmLCost;



      /// Cost of VPS Slice KVM Storage
  @JsonKey(
    
    name: r'vpsSliceKvmStorageCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceKvmStorageCost;



      /// Cost of VPS in NY
  @JsonKey(
    
    name: r'vpsNyCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsNyCost;



      /// Cost of VPS Slice KVM Windows
  @JsonKey(
    
    name: r'vpsSliceKvmWCost',
    required: true,
    includeIfNull: false,
  )


  final num vpsSliceKvmWCost;



      /// Cost of cPanel
  @JsonKey(
    
    name: r'cpanelCost',
    required: true,
    includeIfNull: false,
  )


  final num cpanelCost;



      /// Cost of DirectAdmin (DA)
  @JsonKey(
    
    name: r'daCost',
    required: true,
    includeIfNull: false,
  )


  final num daCost;



      /// RAM for VPS Slice
  @JsonKey(
    
    name: r'ramSlice',
    required: true,
    includeIfNull: false,
  )


  final String ramSlice;



      /// Hard Disk for VPS Slice
  @JsonKey(
    
    name: r'hdSlice',
    required: true,
    includeIfNull: false,
  )


  final String hdSlice;



      /// Storage Hard Disk for VPS Slice
  @JsonKey(
    
    name: r'hdStorageSlice',
    required: true,
    includeIfNull: false,
  )


  final String hdStorageSlice;



      /// Bandwidth for VPS Slice
  @JsonKey(
    
    name: r'bwSlice',
    required: true,
    includeIfNull: false,
  )


  final String bwSlice;



      /// Bandwidth Type
  @JsonKey(
    
    name: r'bwType',
    required: true,
    includeIfNull: false,
  )


  final String bwType;



      /// Total Bandwidth
  @JsonKey(
    
    name: r'bwTotal',
    required: true,
    includeIfNull: false,
  )


  final num bwTotal;



      /// Maximum Slices
  @JsonKey(
    
    name: r'maxSlices',
    required: true,
    includeIfNull: false,
  )


  final String maxSlices;



  @JsonKey(
    
    name: r'platformPackages',
    required: true,
    includeIfNull: false,
  )


  final VpsOrderPlatformPackages platformPackages;



  @JsonKey(
    
    name: r'platformNames',
    required: true,
    includeIfNull: false,
  )


  final VpsOrderPlatformNames platformNames;



  @JsonKey(
    
    name: r'packageCosts',
    required: true,
    includeIfNull: false,
  )


  final VpsOrderPackageCosts packageCosts;



  @JsonKey(
    
    name: r'locationStock',
    required: true,
    includeIfNull: false,
  )


  final VpsOrderLocationStock locationStock;



  @JsonKey(
    
    name: r'locationNames',
    required: true,
    includeIfNull: false,
  )


  final VpsOrderLocationNames locationNames;



  @JsonKey(
    
    name: r'osNames',
    required: true,
    includeIfNull: false,
  )


  final VpsOrderOsNames osNames;



  @JsonKey(
    
    name: r'templates',
    required: true,
    includeIfNull: false,
  )


  final VpsOrderTemplates templates;



  @JsonKey(
    
    name: r'serviceTypes',
    required: true,
    includeIfNull: false,
  )


  final VpsOrderServiceTypes serviceTypes;



      /// Currency
  @JsonKey(
    
    name: r'currency',
    required: true,
    includeIfNull: false,
  )


  final String currency;



      /// Currency Symbol
  @JsonKey(
    
    name: r'currencySymbol',
    required: true,
    includeIfNull: false,
  )


  final String currencySymbol;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrder &&
      runtimeType == other.runtimeType &&
      equals(
        [
            vpsSliceSsdOvzCost,
            vpsSliceOvzCost,
            vpsSliceSsdVirtuozzoCost,
            vpsSliceVirtuozzoCost,
            vpsSliceHypervCost,
            vpsSliceVmwareCost,
            vpsSliceLxcCost,
            vpsSliceXenCost,
            vpsSliceKvmLCost,
            vpsSliceKvmStorageCost,
            vpsNyCost,
            vpsSliceKvmWCost,
            cpanelCost,
            daCost,
            ramSlice,
            hdSlice,
            hdStorageSlice,
            bwSlice,
            bwType,
            bwTotal,
            maxSlices,
            platformPackages,
            platformNames,
            packageCosts,
            locationStock,
            locationNames,
            osNames,
            templates,
            serviceTypes,
            currency,
            currencySymbol,
        ],
        [
            other.vpsSliceSsdOvzCost,
            other.vpsSliceOvzCost,
            other.vpsSliceSsdVirtuozzoCost,
            other.vpsSliceVirtuozzoCost,
            other.vpsSliceHypervCost,
            other.vpsSliceVmwareCost,
            other.vpsSliceLxcCost,
            other.vpsSliceXenCost,
            other.vpsSliceKvmLCost,
            other.vpsSliceKvmStorageCost,
            other.vpsNyCost,
            other.vpsSliceKvmWCost,
            other.cpanelCost,
            other.daCost,
            other.ramSlice,
            other.hdSlice,
            other.hdStorageSlice,
            other.bwSlice,
            other.bwType,
            other.bwTotal,
            other.maxSlices,
            other.platformPackages,
            other.platformNames,
            other.packageCosts,
            other.locationStock,
            other.locationNames,
            other.osNames,
            other.templates,
            other.serviceTypes,
            other.currency,
            other.currencySymbol,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        vpsSliceSsdOvzCost,
        vpsSliceOvzCost,
        vpsSliceSsdVirtuozzoCost,
        vpsSliceVirtuozzoCost,
        vpsSliceHypervCost,
        vpsSliceVmwareCost,
        vpsSliceLxcCost,
        vpsSliceXenCost,
        vpsSliceKvmLCost,
        vpsSliceKvmStorageCost,
        vpsNyCost,
        vpsSliceKvmWCost,
        cpanelCost,
        daCost,
        ramSlice,
        hdSlice,
        hdStorageSlice,
        bwSlice,
        bwType,
        bwTotal,
        maxSlices,
        platformPackages,
        platformNames,
        packageCosts,
        locationStock,
        locationNames,
        osNames,
        templates,
        serviceTypes,
        currency,
        currencySymbol,
    ],);

  factory VpsOrder.fromJson(Map<String, dynamic> json) => _$VpsOrderFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

