//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupRow {
  /// Returns a new [BackupRow] instance.
  BackupRow({

    this.backupId = const Optional.absent(),

    this.backupName = const Optional.absent(),

    this.backupCost = const Optional.absent(),

    this.backupUsername = const Optional.absent(),

    this.backupStatus = const Optional.absent(),

    this.servicesName = const Optional.absent(),
  });

      /// The id of the backup.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupId;



      /// The name of the backup.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupName;



      /// The cost of the backup.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupCost;



      /// The username of the backup.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupUsername;



      /// The status of the backup.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupStatus;



      /// The services name of the backup.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesName;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            backupId,
            backupName,
            backupCost,
            backupUsername,
            backupStatus,
            servicesName,
        ],
        [
            other.backupId,
            other.backupName,
            other.backupCost,
            other.backupUsername,
            other.backupStatus,
            other.servicesName,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        backupId,
        backupName,
        backupCost,
        backupUsername,
        backupStatus,
        servicesName,
    ],);

  factory BackupRow.fromJson(Map<String, dynamic> json) => _$BackupRowFromJson(json);

  Map<String, dynamic> toJson() => _$BackupRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

