//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'create_firewall_rule.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateFirewallRule {
  /// Returns a new [CreateFirewallRule] instance.
  CreateFirewallRule({

    required  this.protocolId,

    required  this.xdpAction,

    this.destinationPort = const Optional.present(80),

    this.sourceIp = const Optional.present('0.0.0.0'),

    this.sourcePort = const Optional.present(0),
  });

      /// 1 = TCP, 2 = UDP
  @JsonKey(
    
    name: r'protocol_id',
    required: true,
    includeIfNull: false,
  unknownEnumValue: CreateFirewallRuleProtocolIdEnum.unknownDefaultOpenApi,
  )


  final CreateFirewallRuleProtocolIdEnum protocolId;



      /// 1 = Block,  0 = Whitelist
  @JsonKey(
    
    name: r'xdp_action',
    required: true,
    includeIfNull: false,
  unknownEnumValue: CreateFirewallRuleXdpActionEnum.unknownDefaultOpenApi,
  )


  final CreateFirewallRuleXdpActionEnum xdpAction;



  @OptionalConverter()
  @JsonKey(
    defaultValue: 80,
    name: r'destination_port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> destinationPort;



      /// Source IP address to match. Use '0.0.0.0' to match any source.
  @OptionalConverter()
  @JsonKey(
    defaultValue: '0.0.0.0',
    name: r'source_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sourceIp;



  @OptionalConverter()
  @JsonKey(
    defaultValue: 0,
    name: r'source_port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> sourcePort;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is CreateFirewallRule &&
      runtimeType == other.runtimeType &&
      equals(
        [
            protocolId,
            xdpAction,
            destinationPort,
            sourceIp,
            sourcePort,
        ],
        [
            other.protocolId,
            other.xdpAction,
            other.destinationPort,
            other.sourceIp,
            other.sourcePort,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        protocolId,
        xdpAction,
        destinationPort,
        sourceIp,
        sourcePort,
    ],);

  factory CreateFirewallRule.fromJson(Map<String, dynamic> json) => _$CreateFirewallRuleFromJson(json);

  Map<String, dynamic> toJson() => _$CreateFirewallRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// 1 = TCP, 2 = UDP
enum CreateFirewallRuleProtocolIdEnum {
    /// 1 = TCP, 2 = UDP
@JsonValue(1)
number1('1'),
    /// 1 = TCP, 2 = UDP
@JsonValue(2)
number2('2'),
    /// 1 = TCP, 2 = UDP
@JsonValue(11184809)
unknownDefaultOpenApi('11184809');

const CreateFirewallRuleProtocolIdEnum(this.value);

final String value;

@override
String toString() => value;
}


/// 1 = Block,  0 = Whitelist
enum CreateFirewallRuleXdpActionEnum {
    /// 1 = Block,  0 = Whitelist
@JsonValue(0)
number0('0'),
    /// 1 = Block,  0 = Whitelist
@JsonValue(1)
number1('1'),
    /// 1 = Block,  0 = Whitelist
@JsonValue(11184809)
unknownDefaultOpenApi('11184809');

const CreateFirewallRuleXdpActionEnum(this.value);

final String value;

@override
String toString() => value;
}


