//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_service_info.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_billing_details.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_extra_info_tables.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_filter_firewall.dart';
import 'package:interserver_api/lib/model/get_scrub_ip_details200_response_client_links_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_scrub_ip_details200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetScrubIpDetails200Response {
  /// Returns a new [GetScrubIpDetails200Response] instance.
  GetScrubIpDetails200Response({

    this.serviceInfo = const Optional.absent(),

    this.clientLinks = const Optional.absent(),

    this.billingDetails = const Optional.absent(),

    this.custCurrency = const Optional.absent(),

    this.custCurrencySymbol = const Optional.absent(),

    this.package = const Optional.absent(),

    this.extraInfoTables = const Optional.absent(),

    this.filterFirewall = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceInfo',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<GetScrubIpDetails200ResponseServiceInfo?> serviceInfo;



  @OptionalConverter()
  @JsonKey(
    
    name: r'client_links',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<GetScrubIpDetails200ResponseClientLinksInner>?> clientLinks;



  @OptionalConverter()
  @JsonKey(
    
    name: r'billingDetails',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<GetScrubIpDetails200ResponseBillingDetails?> billingDetails;



  @OptionalConverter()
  @JsonKey(
    
    name: r'custCurrency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> custCurrency;



  @OptionalConverter()
  @JsonKey(
    
    name: r'custCurrencySymbol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> custCurrencySymbol;



  @OptionalConverter()
  @JsonKey(
    
    name: r'package',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> package;



  @OptionalConverter()
  @JsonKey(
    
    name: r'extraInfoTables',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<GetScrubIpDetails200ResponseExtraInfoTables?> extraInfoTables;



  @OptionalConverter()
  @JsonKey(
    
    name: r'filter_firewall',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<GetScrubIpDetails200ResponseFilterFirewall?> filterFirewall;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetScrubIpDetails200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceInfo,
            clientLinks,
            billingDetails,
            custCurrency,
            custCurrencySymbol,
            package,
            extraInfoTables,
            filterFirewall,
        ],
        [
            other.serviceInfo,
            other.clientLinks,
            other.billingDetails,
            other.custCurrency,
            other.custCurrencySymbol,
            other.package,
            other.extraInfoTables,
            other.filterFirewall,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceInfo,
        clientLinks,
        billingDetails,
        custCurrency,
        custCurrencySymbol,
        package,
        extraInfoTables,
        filterFirewall,
    ],);

  factory GetScrubIpDetails200Response.fromJson(Map<String, dynamic> json) => _$GetScrubIpDetails200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrubIpDetails200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

