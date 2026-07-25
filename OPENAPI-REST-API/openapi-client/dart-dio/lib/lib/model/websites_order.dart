//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/websites_order_json_services.dart';
import 'package:interserver_api/lib/model/websites_order_packages.dart';
import 'package:interserver_api/lib/model/websites_order_packges.dart';
import 'package:interserver_api/lib/model/websites_order_service_offers.dart';
import 'package:interserver_api/lib/model/websites_order_json_service_offers.dart';
import 'package:interserver_api/lib/model/websites_order_service_types.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrder {
  /// Returns a new [WebsitesOrder] instance.
  WebsitesOrder({

    required  this.step,

    required  this.website,

    required  this.period,

    required  this.serviceOfferId,

    required  this.packages,

    required  this.enableDomainRegistering,

    required  this.jsonServices,

    required  this.jsonServiceOffers,

    required  this.serviceTypes,

    required  this.serviceOffers,

    this.packges = const Optional.absent(),
  });

      /// Step description
  @JsonKey(
    
    name: r'step',
    required: true,
    includeIfNull: false,
  )


  final String step;



      /// Website description
  @JsonKey(
    
    name: r'website',
    required: true,
    includeIfNull: false,
  )


  final String website;



      /// Period description
  @JsonKey(
    
    name: r'period',
    required: true,
    includeIfNull: false,
  )


  final int period;



      /// Service offer ID description
  @JsonKey(
    
    name: r'serviceOfferId',
    required: true,
    includeIfNull: false,
  )


  final int serviceOfferId;



  @JsonKey(
    
    name: r'packages',
    required: true,
    includeIfNull: false,
  )


  final WebsitesOrderPackages packages;



      /// Enable domain registering description
  @JsonKey(
    
    name: r'enableDomainRegistering',
    required: true,
    includeIfNull: false,
  )


  final bool enableDomainRegistering;



  @JsonKey(
    
    name: r'jsonServices',
    required: true,
    includeIfNull: false,
  )


  final WebsitesOrderJsonServices jsonServices;



  @JsonKey(
    
    name: r'jsonServiceOffers',
    required: true,
    includeIfNull: false,
  )


  final WebsitesOrderJsonServiceOffers jsonServiceOffers;



  @JsonKey(
    
    name: r'serviceTypes',
    required: true,
    includeIfNull: false,
  )


  final WebsitesOrderServiceTypes serviceTypes;



  @JsonKey(
    
    name: r'serviceOffers',
    required: true,
    includeIfNull: false,
  )


  final WebsitesOrderServiceOffers serviceOffers;



  @OptionalConverter()
  @JsonKey(
    
    name: r'packges',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<WebsitesOrderPackges?> packges;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsitesOrder &&
      runtimeType == other.runtimeType &&
      equals(
        [
            step,
            website,
            period,
            serviceOfferId,
            packages,
            enableDomainRegistering,
            jsonServices,
            jsonServiceOffers,
            serviceTypes,
            serviceOffers,
            packges,
        ],
        [
            other.step,
            other.website,
            other.period,
            other.serviceOfferId,
            other.packages,
            other.enableDomainRegistering,
            other.jsonServices,
            other.jsonServiceOffers,
            other.serviceTypes,
            other.serviceOffers,
            other.packges,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        step,
        website,
        period,
        serviceOfferId,
        packages,
        enableDomainRegistering,
        jsonServices,
        jsonServiceOffers,
        serviceTypes,
        serviceOffers,
        packges,
    ],);

  factory WebsitesOrder.fromJson(Map<String, dynamic> json) => _$WebsitesOrderFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

