//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_network_info_switchports.dart';
import 'package:interserver_api/lib/model/server_network_info_assets.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_network_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerNetworkInfo {
  /// Returns a new [ServerNetworkInfo] instance.
  ServerNetworkInfo({

    required  this.vlans,

    required  this.vlans6,

    required  this.assets,

    required  this.switchports,
  });

      /// List of VLANs.
  @JsonKey(
    
    name: r'vlans',
    required: true,
    includeIfNull: false,
  )


  final List<String> vlans;



      /// List of IPv6 VLANs.
  @JsonKey(
    
    name: r'vlans6',
    required: true,
    includeIfNull: false,
  )


  final List<String> vlans6;



  @JsonKey(
    
    name: r'assets',
    required: true,
    includeIfNull: false,
  )


  final ServerNetworkInfoAssets assets;



  @JsonKey(
    
    name: r'switchports',
    required: true,
    includeIfNull: false,
  )


  final ServerNetworkInfoSwitchports switchports;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerNetworkInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            vlans,
            vlans6,
            assets,
            switchports,
        ],
        [
            other.vlans,
            other.vlans6,
            other.assets,
            other.switchports,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        vlans,
        vlans6,
        assets,
        switchports,
    ],);

  factory ServerNetworkInfo.fromJson(Map<String, dynamic> json) => _$ServerNetworkInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ServerNetworkInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

