//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_filter_firewall_filters_inner.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_filter_firewall_rules_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_scrub_ip_details200_response_filter_firewall.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetScrubIpDetails200ResponseFilterFirewall {
  /// Returns a new [GetScrubIpDetails200ResponseFilterFirewall] instance.
  GetScrubIpDetails200ResponseFilterFirewall({

    this.rules = const Optional.absent(),

    this.filters = const Optional.absent(),

    this.scrubEnabled = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'rules',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<GetScrubIpDetails200ResponseFilterFirewallRulesInner>?> rules;



  @OptionalConverter()
  @JsonKey(
    
    name: r'filters',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<GetScrubIpDetails200ResponseFilterFirewallFiltersInner>?> filters;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_enabled',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> scrubEnabled;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetScrubIpDetails200ResponseFilterFirewall &&
      runtimeType == other.runtimeType &&
      equals(
        [
            rules,
            filters,
            scrubEnabled,
        ],
        [
            other.rules,
            other.filters,
            other.scrubEnabled,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        rules,
        filters,
        scrubEnabled,
    ],);

  factory GetScrubIpDetails200ResponseFilterFirewall.fromJson(Map<String, dynamic> json) => _$GetScrubIpDetails200ResponseFilterFirewallFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrubIpDetails200ResponseFilterFirewallToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

