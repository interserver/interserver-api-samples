//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/backup_ip_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_extra_info_tables.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupExtraInfoTables {
  /// Returns a new [BackupExtraInfoTables] instance.
  BackupExtraInfoTables({

    this.ipInfo = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_info',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<BackupIPInfo?> ipInfo;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupExtraInfoTables &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ipInfo,
        ],
        [
            other.ipInfo,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ipInfo,
    ],);

  factory BackupExtraInfoTables.fromJson(Map<String, dynamic> json) => _$BackupExtraInfoTablesFromJson(json);

  Map<String, dynamic> toJson() => _$BackupExtraInfoTablesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

