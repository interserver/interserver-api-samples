//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_service_master.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsServiceMaster {
  /// Returns a new [VpsServiceMaster] instance.
  VpsServiceMaster({

    this.vpsId = const Optional.absent(),

    this.vpsName = const Optional.absent(),

    this.vpsIp = const Optional.absent(),

    this.vpsType = const Optional.absent(),

    this.vpsHdsize = const Optional.absent(),

    this.vpsHdfree = const Optional.absent(),

    this.vpsBits = const Optional.absent(),

    this.vpsLoad = const Optional.absent(),

    this.vpsRam = const Optional.absent(),

    this.vpsCpuModel = const Optional.absent(),

    this.vpsCpuMhz = const Optional.absent(),

    this.vpsLocation = const Optional.absent(),

    this.vpsLastUpdate = const Optional.absent(),

    this.vpsRaidBuilding = const Optional.absent(),

    this.vpsKernel = const Optional.absent(),

    this.vpsAvailable = const Optional.absent(),

    this.vpsCores = const Optional.absent(),

    this.vpsIowait = const Optional.absent(),

    this.vpsRaidStatus = const Optional.absent(),

    this.vpsMounts = const Optional.absent(),

    this.vpsServerMax = const Optional.absent(),

    this.vpsServerMaxSlices = const Optional.absent(),

    this.vpsDriveType = const Optional.absent(),

    this.vpsOrder = const Optional.absent(),
  });

      /// VPS ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsId;



      /// VPS name
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsName;



      /// IP address of the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsIp;



      /// VPS type
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsType;



      /// Hard drive size
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_hdsize',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsHdsize;



      /// Free hard drive space
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_hdfree',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsHdfree;



      /// Bits
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_bits',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsBits;



      /// CPU load
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_load',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsLoad;



      /// RAM
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_ram',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsRam;



      /// CPU model
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_cpu_model',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsCpuModel;



      /// CPU frequency in MHz
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_cpu_mhz',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsCpuMhz;



      /// Location of the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_location',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsLocation;



      /// Last update date
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_last_update',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsLastUpdate;



      /// RAID building status
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_raid_building',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsRaidBuilding;



      /// Kernel version
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_kernel',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsKernel;



      /// Available
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_available',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsAvailable;



      /// Number of CPU cores
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_cores',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsCores;



      /// I/O wait
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_iowait',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsIowait;



      /// RAID status
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_raid_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsRaidStatus;



      /// Mounts
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_mounts',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsMounts;



      /// Maximum number of servers
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_server_max',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsServerMax;



      /// Maximum number of server slices
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_server_max_slices',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsServerMaxSlices;



      /// Drive type
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_drive_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsDriveType;



      /// Order number
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_order',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsOrder;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsServiceMaster &&
      runtimeType == other.runtimeType &&
      equals(
        [
            vpsId,
            vpsName,
            vpsIp,
            vpsType,
            vpsHdsize,
            vpsHdfree,
            vpsBits,
            vpsLoad,
            vpsRam,
            vpsCpuModel,
            vpsCpuMhz,
            vpsLocation,
            vpsLastUpdate,
            vpsRaidBuilding,
            vpsKernel,
            vpsAvailable,
            vpsCores,
            vpsIowait,
            vpsRaidStatus,
            vpsMounts,
            vpsServerMax,
            vpsServerMaxSlices,
            vpsDriveType,
            vpsOrder,
        ],
        [
            other.vpsId,
            other.vpsName,
            other.vpsIp,
            other.vpsType,
            other.vpsHdsize,
            other.vpsHdfree,
            other.vpsBits,
            other.vpsLoad,
            other.vpsRam,
            other.vpsCpuModel,
            other.vpsCpuMhz,
            other.vpsLocation,
            other.vpsLastUpdate,
            other.vpsRaidBuilding,
            other.vpsKernel,
            other.vpsAvailable,
            other.vpsCores,
            other.vpsIowait,
            other.vpsRaidStatus,
            other.vpsMounts,
            other.vpsServerMax,
            other.vpsServerMaxSlices,
            other.vpsDriveType,
            other.vpsOrder,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        vpsId,
        vpsName,
        vpsIp,
        vpsType,
        vpsHdsize,
        vpsHdfree,
        vpsBits,
        vpsLoad,
        vpsRam,
        vpsCpuModel,
        vpsCpuMhz,
        vpsLocation,
        vpsLastUpdate,
        vpsRaidBuilding,
        vpsKernel,
        vpsAvailable,
        vpsCores,
        vpsIowait,
        vpsRaidStatus,
        vpsMounts,
        vpsServerMax,
        vpsServerMaxSlices,
        vpsDriveType,
        vpsOrder,
    ],);

  factory VpsServiceMaster.fromJson(Map<String, dynamic> json) => _$VpsServiceMasterFromJson(json);

  Map<String, dynamic> toJson() => _$VpsServiceMasterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

