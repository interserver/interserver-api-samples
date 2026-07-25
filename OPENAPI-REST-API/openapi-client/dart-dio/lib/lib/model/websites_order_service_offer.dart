//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order_service_offer.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrderServiceOffer {
  /// Returns a new [WebsitesOrderServiceOffer] instance.
  WebsitesOrderServiceOffer({

    required  this.serviceOfferId,

    required  this.serviceId,

    required  this.introCost,

    required  this.renewalCost,

    required  this.introFrequency,

    required  this.renewalFrequency,

    required  this.allowCoupon,

    required  this.serviceModule,

    required  this.createdAt,

    this.updatedAt = const Optional.absent(),

    this.deletedAt = const Optional.absent(),
  });

      /// The ID of the service offer.
  @JsonKey(
    
    name: r'service_offer_id',
    required: true,
    includeIfNull: false,
  )


  final String serviceOfferId;



      /// The ID of the associated service.
  @JsonKey(
    
    name: r'service_id',
    required: true,
    includeIfNull: false,
  )


  final String serviceId;



      /// The introductory cost of the service offer.
  @JsonKey(
    
    name: r'intro_cost',
    required: true,
    includeIfNull: false,
  )


  final String introCost;



      /// The renewal cost of the service offer.
  @JsonKey(
    
    name: r'renewal_cost',
    required: true,
    includeIfNull: false,
  )


  final String renewalCost;



      /// The introductory frequency of the service offer.
  @JsonKey(
    
    name: r'intro_frequency',
    required: true,
    includeIfNull: false,
  )


  final String introFrequency;



      /// The renewal frequency of the service offer.
  @JsonKey(
    
    name: r'renewal_frequency',
    required: true,
    includeIfNull: false,
  )


  final String renewalFrequency;



      /// Indicates if coupons are allowed (1 for yes, 0 for no).
  @JsonKey(
    
    name: r'allow_coupon',
    required: true,
    includeIfNull: false,
  )


  final String allowCoupon;



      /// The module of the service offer.
  @JsonKey(
    
    name: r'service_module',
    required: true,
    includeIfNull: false,
  )


  final String serviceModule;



      /// The creation timestamp of the service offer.
  @JsonKey(
    
    name: r'created_at',
    required: true,
    includeIfNull: false,
  )


  final String createdAt;



      /// The update timestamp of the service offer.
  @OptionalConverter()
  @JsonKey(
    
    name: r'updated_at',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> updatedAt;



      /// The deletion timestamp of the service offer.
  @OptionalConverter()
  @JsonKey(
    
    name: r'deleted_at',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> deletedAt;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsitesOrderServiceOffer &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceOfferId,
            serviceId,
            introCost,
            renewalCost,
            introFrequency,
            renewalFrequency,
            allowCoupon,
            serviceModule,
            createdAt,
            updatedAt,
            deletedAt,
        ],
        [
            other.serviceOfferId,
            other.serviceId,
            other.introCost,
            other.renewalCost,
            other.introFrequency,
            other.renewalFrequency,
            other.allowCoupon,
            other.serviceModule,
            other.createdAt,
            other.updatedAt,
            other.deletedAt,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceOfferId,
        serviceId,
        introCost,
        renewalCost,
        introFrequency,
        renewalFrequency,
        allowCoupon,
        serviceModule,
        createdAt,
        updatedAt,
        deletedAt,
    ],);

  factory WebsitesOrderServiceOffer.fromJson(Map<String, dynamic> json) => _$WebsitesOrderServiceOfferFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderServiceOfferToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

