//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/website_service_master.dart';
import 'package:interserver_api/lib/model/website_extra_info_tables.dart';
import 'package:interserver_api/lib/model/website_service_info.dart';
import 'package:interserver_api/lib/model/website_client_link.dart';
import 'package:interserver_api/lib/model/website_billing_details.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Website {
  /// Returns a new [Website] instance.
  Website({

    this.serviceInfo = const Optional.absent(),

    this.clientLinks = const Optional.absent(),

    this.billingDetails = const Optional.absent(),

    this.custCurrency = const Optional.absent(),

    this.custCurrencySymbol = const Optional.absent(),

    this.serviceMaster = const Optional.absent(),

    this.package = const Optional.absent(),

    this.serviceExtra = const Optional.absent(),

    this.extraInfoTables = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceInfo',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<WebsiteServiceInfo?> serviceInfo;



  @OptionalConverter()
  @JsonKey(
    
    name: r'client_links',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<WebsiteClientLink>?> clientLinks;



  @OptionalConverter()
  @JsonKey(
    
    name: r'billingDetails',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<WebsiteBillingDetails?> billingDetails;



      /// Customer's currency
  @OptionalConverter()
  @JsonKey(
    
    name: r'custCurrency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> custCurrency;



      /// Customer currency symbol
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
    
    name: r'serviceMaster',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<WebsiteServiceMaster?> serviceMaster;



      /// Package information
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
    
    name: r'serviceExtra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<Object>?> serviceExtra;



  @OptionalConverter()
  @JsonKey(
    
    name: r'extraInfoTables',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<WebsiteExtraInfoTables?> extraInfoTables;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is Website &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceInfo,
            clientLinks,
            billingDetails,
            custCurrency,
            custCurrencySymbol,
            serviceMaster,
            package,
            serviceExtra,
            extraInfoTables,
        ],
        [
            other.serviceInfo,
            other.clientLinks,
            other.billingDetails,
            other.custCurrency,
            other.custCurrencySymbol,
            other.serviceMaster,
            other.package,
            other.serviceExtra,
            other.extraInfoTables,
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
        serviceMaster,
        package,
        serviceExtra,
        extraInfoTables,
    ],);

  factory Website.fromJson(Map<String, dynamic> json) => _$WebsiteFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

