//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_switchport.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_network_info_switchports.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerNetworkInfoSwitchports {
  /// Returns a new [ServerNetworkInfoSwitchports] instance.
  ServerNetworkInfoSwitchports({

    required  this.n10414,
  });

  @JsonKey(
    
    name: r'10414',
    required: true,
    includeIfNull: false,
  )


  final ServerSwitchport n10414;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerNetworkInfoSwitchports &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n10414,
        ],
        [
            other.n10414,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n10414,
    ],);

  factory ServerNetworkInfoSwitchports.fromJson(Map<String, dynamic> json) => _$ServerNetworkInfoSwitchportsFromJson(json);

  Map<String, dynamic> toJson() => _$ServerNetworkInfoSwitchportsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

