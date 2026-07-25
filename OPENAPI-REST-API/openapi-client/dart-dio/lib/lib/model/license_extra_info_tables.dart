//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/license_ip_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'license_extra_info_tables.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseExtraInfoTables {
  /// Returns a new [LicenseExtraInfoTables] instance.
  LicenseExtraInfoTables({

    this.ipInfo = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_info',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<LicenseIpInfo?> ipInfo;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicenseExtraInfoTables &&
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

  factory LicenseExtraInfoTables.fromJson(Map<String, dynamic> json) => _$LicenseExtraInfoTablesFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseExtraInfoTablesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

