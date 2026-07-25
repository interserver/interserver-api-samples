//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_scrub_ip_details200_response_filter_firewall_rules_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetScrubIpDetails200ResponseFilterFirewallRulesInner {
  /// Returns a new [GetScrubIpDetails200ResponseFilterFirewallRulesInner] instance.
  GetScrubIpDetails200ResponseFilterFirewallRulesInner({

    this.id = const Optional.absent(),

    this.sourceIp = const Optional.absent(),

    this.destinationIp = const Optional.absent(),

    this.protocolId = const Optional.absent(),

    this.sourcePort = const Optional.absent(),

    this.destinationPort = const Optional.absent(),

    this.xdpAction = const Optional.absent(),

    this.globalDrop = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> id;



  @OptionalConverter()
  @JsonKey(
    
    name: r'source_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sourceIp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'destination_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> destinationIp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'protocol_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> protocolId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'source_port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sourcePort;



  @OptionalConverter()
  @JsonKey(
    
    name: r'destination_port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> destinationPort;



  @OptionalConverter()
  @JsonKey(
    
    name: r'xdp_action',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> xdpAction;



  @OptionalConverter()
  @JsonKey(
    
    name: r'global_drop',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> globalDrop;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetScrubIpDetails200ResponseFilterFirewallRulesInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            sourceIp,
            destinationIp,
            protocolId,
            sourcePort,
            destinationPort,
            xdpAction,
            globalDrop,
        ],
        [
            other.id,
            other.sourceIp,
            other.destinationIp,
            other.protocolId,
            other.sourcePort,
            other.destinationPort,
            other.xdpAction,
            other.globalDrop,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        sourceIp,
        destinationIp,
        protocolId,
        sourcePort,
        destinationPort,
        xdpAction,
        globalDrop,
    ],);

  factory GetScrubIpDetails200ResponseFilterFirewallRulesInner.fromJson(Map<String, dynamic> json) => _$GetScrubIpDetails200ResponseFilterFirewallRulesInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrubIpDetails200ResponseFilterFirewallRulesInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

