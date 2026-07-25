//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_ipmi_live_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerIpmiLiveRequest {
  /// Returns a new [ServerIpmiLiveRequest] instance.
  ServerIpmiLiveRequest({

    required  this.ip,

    this.asset = const Optional.absent(),
  });

      /// Your IP Address you wish to connect to the IPMI system from.
  @JsonKey(
    
    name: r'ip',
    required: true,
    includeIfNull: false,
  )


  final String ip;



      /// Asset ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'asset',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> asset;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerIpmiLiveRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ip,
            asset,
        ],
        [
            other.ip,
            other.asset,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ip,
        asset,
    ],);

  factory ServerIpmiLiveRequest.fromJson(Map<String, dynamic> json) => _$ServerIpmiLiveRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ServerIpmiLiveRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

