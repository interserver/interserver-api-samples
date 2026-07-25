//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_ipmi_power_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerIpmiPowerRequest {
  /// Returns a new [ServerIpmiPowerRequest] instance.
  ServerIpmiPowerRequest({

    required  this.action,

    this.asset = const Optional.absent(),
  });

      /// The power action to send to the ipmi controller.
  @JsonKey(
    
    name: r'action',
    required: true,
    includeIfNull: false,
  unknownEnumValue: ServerIpmiPowerRequestActionEnum.unknownDefaultOpenApi,
  )


  final ServerIpmiPowerRequestActionEnum action;



      /// The Asset ID
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
      other is ServerIpmiPowerRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            action,
            asset,
        ],
        [
            other.action,
            other.asset,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        action,
        asset,
    ],);

  factory ServerIpmiPowerRequest.fromJson(Map<String, dynamic> json) => _$ServerIpmiPowerRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ServerIpmiPowerRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// The power action to send to the ipmi controller.
enum ServerIpmiPowerRequestActionEnum {
    /// The power action to send to the ipmi controller.
@JsonValue(r'cycle')
cycle(r'cycle'),
    /// The power action to send to the ipmi controller.
@JsonValue(r'reset')
reset(r'reset'),
    /// The power action to send to the ipmi controller.
@JsonValue(r'on')
on_(r'on'),
    /// The power action to send to the ipmi controller.
@JsonValue(r'off')
off(r'off'),
    /// The power action to send to the ipmi controller.
@JsonValue(r'soft')
soft(r'soft'),
    /// The power action to send to the ipmi controller.
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const ServerIpmiPowerRequestActionEnum(this.value);

final String value;

@override
String toString() => value;
}


