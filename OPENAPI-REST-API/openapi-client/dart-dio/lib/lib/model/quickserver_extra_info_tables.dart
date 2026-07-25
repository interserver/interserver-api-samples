//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/quickserver_ip_info.dart';
import 'package:interserver_api/lib/model/quickserver_addons.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_extra_info_tables.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverExtraInfoTables {
  /// Returns a new [QuickserverExtraInfoTables] instance.
  QuickserverExtraInfoTables({

    this.ipInfo = const Optional.absent(),

    this.addons = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'ip_info',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverIpInfo?> ipInfo;



  @OptionalConverter()
  @JsonKey(
    
    name: r'addons',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<QuickserverAddons?> addons;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverExtraInfoTables &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ipInfo,
            addons,
        ],
        [
            other.ipInfo,
            other.addons,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ipInfo,
        addons,
    ],);

  factory QuickserverExtraInfoTables.fromJson(Map<String, dynamic> json) => _$QuickserverExtraInfoTablesFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverExtraInfoTablesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

