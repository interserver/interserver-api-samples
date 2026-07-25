//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_assets.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_extra_info_tables.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerExtraInfoTables {
  /// Returns a new [ServerExtraInfoTables] instance.
  ServerExtraInfoTables({

    required  this.assets,
  });

  @JsonKey(
    
    name: r'assets',
    required: true,
    includeIfNull: false,
  )


  final ServerAssets assets;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerExtraInfoTables &&
      runtimeType == other.runtimeType &&
      equals(
        [
            assets,
        ],
        [
            other.assets,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        assets,
    ],);

  factory ServerExtraInfoTables.fromJson(Map<String, dynamic> json) => _$ServerExtraInfoTablesFromJson(json);

  Map<String, dynamic> toJson() => _$ServerExtraInfoTablesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

