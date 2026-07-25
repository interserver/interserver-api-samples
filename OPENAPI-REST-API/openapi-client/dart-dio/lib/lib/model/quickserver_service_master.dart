//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_service_master.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverServiceMaster {
  /// Returns a new [QuickserverServiceMaster] instance.
  QuickserverServiceMaster({

    this.qsId = const Optional.absent(),

    this.qsName = const Optional.absent(),

    this.qsIp = const Optional.absent(),

    this.qsType = const Optional.absent(),

    this.qsHdsize = const Optional.absent(),

    this.qsHdfree = const Optional.absent(),

    this.qsBits = const Optional.absent(),

    this.qsLoad = const Optional.absent(),

    this.qsRam = const Optional.absent(),

    this.qsCpuModel = const Optional.absent(),

    this.qsCpuMhz = const Optional.absent(),

    this.qsLocation = const Optional.absent(),

    this.qsAvailable = const Optional.absent(),

    this.qsCost = const Optional.absent(),

    this.qsLastUpdate = const Optional.absent(),

    this.qsCores = const Optional.absent(),

    this.qsIowait = const Optional.absent(),

    this.qsRaidStatus = const Optional.absent(),

    this.qsDriveType = const Optional.absent(),

    this.qsOrder = const Optional.absent(),

    this.qsRaidBuilding = const Optional.absent(),

    this.qsKernel = const Optional.absent(),

    this.qsIoping = const Optional.absent(),

    this.qsSpeed = const Optional.absent(),

    this.qsDistro = const Optional.absent(),

    this.qsDistroVersion = const Optional.absent(),

    this.qsBytesSecIn = const Optional.absent(),

    this.qsBytesSecOut = const Optional.absent(),

    this.qsPacketsSecIn = const Optional.absent(),

    this.qsPacketsSecOut = const Optional.absent(),

    this.qsLastInstallTime = const Optional.absent(),

    this.qsPartitions = const Optional.absent(),

    this.qsCpuFlags = const Optional.absent(),
  });

      /// Quickserver ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsId;



      /// Quickserver name
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsName;



      /// IP address
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsIp;



      /// Type
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsType;



      /// HDD size
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_hdsize',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsHdsize;



      /// Free HDD space
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_hdfree',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsHdfree;



      /// Bits
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_bits',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsBits;



      /// Load
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_load',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsLoad;



      /// RAM information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_ram',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsRam;



      /// CPU model
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_cpu_model',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsCpuModel;



      /// CPU frequency
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_cpu_mhz',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsCpuMhz;



      /// Location
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_location',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsLocation;



      /// Available information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_available',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsAvailable;



      /// Cost
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsCost;



      /// Last update date
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_last_update',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsLastUpdate;



      /// Number of cores
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_cores',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsCores;



      /// I/O wait
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_iowait',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsIowait;



      /// RAID status
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_raid_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsRaidStatus;



      /// Drive type
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_drive_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsDriveType;



      /// Order number
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_order',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsOrder;



      /// RAID building information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_raid_building',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsRaidBuilding;



      /// Kernel version
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_kernel',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsKernel;



      /// IOPing information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_ioping',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsIoping;



      /// Speed information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_speed',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsSpeed;



      /// Distribution name
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_distro',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsDistro;



      /// Distribution version
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_distro_version',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsDistroVersion;



      /// Bytes/sec in
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_bytes_sec_in',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsBytesSecIn;



      /// Bytes/sec out
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_bytes_sec_out',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsBytesSecOut;



      /// Packets/sec in
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_packets_sec_in',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsPacketsSecIn;



      /// Packets/sec out
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_packets_sec_out',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsPacketsSecOut;



      /// Last install time (null)
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_last_install_time',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsLastInstallTime;



      /// Partitions information (null)
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_partitions',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsPartitions;



      /// CPU flags
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_cpu_flags',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsCpuFlags;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverServiceMaster &&
      runtimeType == other.runtimeType &&
      equals(
        [
            qsId,
            qsName,
            qsIp,
            qsType,
            qsHdsize,
            qsHdfree,
            qsBits,
            qsLoad,
            qsRam,
            qsCpuModel,
            qsCpuMhz,
            qsLocation,
            qsAvailable,
            qsCost,
            qsLastUpdate,
            qsCores,
            qsIowait,
            qsRaidStatus,
            qsDriveType,
            qsOrder,
            qsRaidBuilding,
            qsKernel,
            qsIoping,
            qsSpeed,
            qsDistro,
            qsDistroVersion,
            qsBytesSecIn,
            qsBytesSecOut,
            qsPacketsSecIn,
            qsPacketsSecOut,
            qsLastInstallTime,
            qsPartitions,
            qsCpuFlags,
        ],
        [
            other.qsId,
            other.qsName,
            other.qsIp,
            other.qsType,
            other.qsHdsize,
            other.qsHdfree,
            other.qsBits,
            other.qsLoad,
            other.qsRam,
            other.qsCpuModel,
            other.qsCpuMhz,
            other.qsLocation,
            other.qsAvailable,
            other.qsCost,
            other.qsLastUpdate,
            other.qsCores,
            other.qsIowait,
            other.qsRaidStatus,
            other.qsDriveType,
            other.qsOrder,
            other.qsRaidBuilding,
            other.qsKernel,
            other.qsIoping,
            other.qsSpeed,
            other.qsDistro,
            other.qsDistroVersion,
            other.qsBytesSecIn,
            other.qsBytesSecOut,
            other.qsPacketsSecIn,
            other.qsPacketsSecOut,
            other.qsLastInstallTime,
            other.qsPartitions,
            other.qsCpuFlags,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        qsId,
        qsName,
        qsIp,
        qsType,
        qsHdsize,
        qsHdfree,
        qsBits,
        qsLoad,
        qsRam,
        qsCpuModel,
        qsCpuMhz,
        qsLocation,
        qsAvailable,
        qsCost,
        qsLastUpdate,
        qsCores,
        qsIowait,
        qsRaidStatus,
        qsDriveType,
        qsOrder,
        qsRaidBuilding,
        qsKernel,
        qsIoping,
        qsSpeed,
        qsDistro,
        qsDistroVersion,
        qsBytesSecIn,
        qsBytesSecOut,
        qsPacketsSecIn,
        qsPacketsSecOut,
        qsLastInstallTime,
        qsPartitions,
        qsCpuFlags,
    ],);

  factory QuickserverServiceMaster.fromJson(Map<String, dynamic> json) => _$QuickserverServiceMasterFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverServiceMasterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

