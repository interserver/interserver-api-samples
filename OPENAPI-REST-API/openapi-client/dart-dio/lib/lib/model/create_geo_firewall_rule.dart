//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'create_geo_firewall_rule.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateGeoFirewallRule {
  /// Returns a new [CreateGeoFirewallRule] instance.
  CreateGeoFirewallRule({

    required  this.xdpAction,

    this.destinationPort = const Optional.present(80),

    this.countryCode = const Optional.absent(),

    this.asn = const Optional.absent(),
  });

      /// 1 = Block,  0 = Whitelist
  @JsonKey(
    
    name: r'xdp_action',
    required: true,
    includeIfNull: false,
  unknownEnumValue: CreateGeoFirewallRuleXdpActionEnum.unknownDefaultOpenApi,
  )


  final CreateGeoFirewallRuleXdpActionEnum xdpAction;



  @OptionalConverter()
  @JsonKey(
    defaultValue: 80,
    name: r'destination_port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> destinationPort;



      /// To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode
  @OptionalConverter()
  @JsonKey(
    
    name: r'country_code',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> countryCode;



      /// ASN number
  @OptionalConverter()
  @JsonKey(
    
    name: r'asn',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> asn;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is CreateGeoFirewallRule &&
      runtimeType == other.runtimeType &&
      equals(
        [
            xdpAction,
            destinationPort,
            countryCode,
            asn,
        ],
        [
            other.xdpAction,
            other.destinationPort,
            other.countryCode,
            other.asn,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        xdpAction,
        destinationPort,
        countryCode,
        asn,
    ],);

  factory CreateGeoFirewallRule.fromJson(Map<String, dynamic> json) => _$CreateGeoFirewallRuleFromJson(json);

  Map<String, dynamic> toJson() => _$CreateGeoFirewallRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// 1 = Block,  0 = Whitelist
enum CreateGeoFirewallRuleXdpActionEnum {
    /// 1 = Block,  0 = Whitelist
@JsonValue(0)
number0('0'),
    /// 1 = Block,  0 = Whitelist
@JsonValue(1)
number1('1'),
    /// 1 = Block,  0 = Whitelist
@JsonValue(11184809)
unknownDefaultOpenApi('11184809');

const CreateGeoFirewallRuleXdpActionEnum(this.value);

final String value;

@override
String toString() => value;
}


