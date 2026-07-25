//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_asset.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_network_info_assets.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerNetworkInfoAssets {
  /// Returns a new [ServerNetworkInfoAssets] instance.
  ServerNetworkInfoAssets({

    required  this.n3497,
  });

  @JsonKey(
    
    name: r'3497',
    required: true,
    includeIfNull: false,
  )


  final ServerAsset n3497;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerNetworkInfoAssets &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n3497,
        ],
        [
            other.n3497,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n3497,
    ],);

  factory ServerNetworkInfoAssets.fromJson(Map<String, dynamic> json) => _$ServerNetworkInfoAssetsFromJson(json);

  Map<String, dynamic> toJson() => _$ServerNetworkInfoAssetsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

