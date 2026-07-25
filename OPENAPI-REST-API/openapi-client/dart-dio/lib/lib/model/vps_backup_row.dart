//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_backup_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsBackupRow {
  /// Returns a new [VpsBackupRow] instance.
  VpsBackupRow({

    required  this.type,

    required  this.service,

    required  this.name,

    required  this.size,

    required  this.date,
  });

      /// Backup Type
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  )


  final String type;



      /// The service id such as vps  id.
  @JsonKey(
    
    name: r'service',
    required: true,
    includeIfNull: false,
  )


  final int service;



      /// The name of the backup.
  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



      /// Size of the file in bytes
  @JsonKey(
    
    name: r'size',
    required: true,
    includeIfNull: false,
  )


  final int size;



      /// The creation date of the backup in a unix timestamp.
  @JsonKey(
    
    name: r'date',
    required: true,
    includeIfNull: false,
  )


  final int date;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsBackupRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            type,
            service,
            name,
            size,
            date,
        ],
        [
            other.type,
            other.service,
            other.name,
            other.size,
            other.date,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        type,
        service,
        name,
        size,
        date,
    ],);

  factory VpsBackupRow.fromJson(Map<String, dynamic> json) => _$VpsBackupRowFromJson(json);

  Map<String, dynamic> toJson() => _$VpsBackupRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

