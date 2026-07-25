//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_scrub_ip_details200_response_filter_firewall_filters_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetScrubIpDetails200ResponseFilterFirewallFiltersInner {
  /// Returns a new [GetScrubIpDetails200ResponseFilterFirewallFiltersInner] instance.
  GetScrubIpDetails200ResponseFilterFirewallFiltersInner({

    this.daddr = const Optional.absent(),

    this.dest = const Optional.absent(),

    this.filterName = const Optional.absent(),

    this.destinationIp = const Optional.absent(),

    this.filter = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'daddr',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> daddr;



  @OptionalConverter()
  @JsonKey(
    
    name: r'dest',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> dest;



  @OptionalConverter()
  @JsonKey(
    
    name: r'filter_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> filterName;



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
    
    name: r'filter',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> filter;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetScrubIpDetails200ResponseFilterFirewallFiltersInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            daddr,
            dest,
            filterName,
            destinationIp,
            filter,
        ],
        [
            other.daddr,
            other.dest,
            other.filterName,
            other.destinationIp,
            other.filter,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        daddr,
        dest,
        filterName,
        destinationIp,
        filter,
    ],);

  factory GetScrubIpDetails200ResponseFilterFirewallFiltersInner.fromJson(Map<String, dynamic> json) => _$GetScrubIpDetails200ResponseFilterFirewallFiltersInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrubIpDetails200ResponseFilterFirewallFiltersInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

