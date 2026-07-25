//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_service_master.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupServiceMaster {
  /// Returns a new [BackupServiceMaster] instance.
  BackupServiceMaster({

    this.backupId = const Optional.absent(),

    this.backupName = const Optional.absent(),

    this.backupIp = const Optional.absent(),

    this.backupType = const Optional.absent(),

    this.backupHdsize = const Optional.absent(),

    this.backupHdfree = const Optional.absent(),

    this.backupLastUpdate = const Optional.absent(),

    this.backupAvailable = const Optional.absent(),

    this.backupIowait = const Optional.absent(),

    this.backupOrder = const Optional.absent(),
  });

      /// Backup ID of the service master.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> backupId;



      /// Name of the backup service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupName;



      /// IP address of the backup service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupIp;



      /// Type of the backup service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> backupType;



      /// Size of the backup service's hard drive.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_hdsize',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> backupHdsize;



      /// Amount of free space on the backup service's hard drive.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_hdfree',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> backupHdfree;



      /// Last update timestamp of the backup service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_last_update',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupLastUpdate;



      /// Availability status of the backup service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_available',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> backupAvailable;



      /// I/O wait status of the backup service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_iowait',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> backupIowait;



      /// Order associated with the backup service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_order',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> backupOrder;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupServiceMaster &&
      runtimeType == other.runtimeType &&
      equals(
        [
            backupId,
            backupName,
            backupIp,
            backupType,
            backupHdsize,
            backupHdfree,
            backupLastUpdate,
            backupAvailable,
            backupIowait,
            backupOrder,
        ],
        [
            other.backupId,
            other.backupName,
            other.backupIp,
            other.backupType,
            other.backupHdsize,
            other.backupHdfree,
            other.backupLastUpdate,
            other.backupAvailable,
            other.backupIowait,
            other.backupOrder,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        backupId,
        backupName,
        backupIp,
        backupType,
        backupHdsize,
        backupHdfree,
        backupLastUpdate,
        backupAvailable,
        backupIowait,
        backupOrder,
    ],);

  factory BackupServiceMaster.fromJson(Map<String, dynamic> json) => _$BackupServiceMasterFromJson(json);

  Map<String, dynamic> toJson() => _$BackupServiceMasterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

