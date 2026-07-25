//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order_json_service_offers_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrderJsonServiceOffersItem {
  /// Returns a new [WebsitesOrderJsonServiceOffersItem] instance.
  WebsitesOrderJsonServiceOffersItem({

    this.serviceOfferId = const Optional.absent(),

    this.serviceId = const Optional.absent(),

    this.introCost = const Optional.absent(),

    this.renewalCost = const Optional.absent(),

    this.introFrequency = const Optional.absent(),

    this.renewalFrequency = const Optional.absent(),

    this.allowCoupon = const Optional.absent(),

    this.serviceModule = const Optional.absent(),

    this.createdAt = const Optional.absent(),

    this.updatedAt = const Optional.absent(),

    this.deletedAt = const Optional.absent(),

    this.currencySymbol = const Optional.absent(),
  });

      /// Service offer ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_offer_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceOfferId;



      /// Service ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceId;



      /// Introductory cost
  @OptionalConverter()
  @JsonKey(
    
    name: r'intro_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> introCost;



      /// Renewal cost
  @OptionalConverter()
  @JsonKey(
    
    name: r'renewal_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> renewalCost;



      /// Introductory frequency
  @OptionalConverter()
  @JsonKey(
    
    name: r'intro_frequency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> introFrequency;



      /// Renewal frequency
  @OptionalConverter()
  @JsonKey(
    
    name: r'renewal_frequency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> renewalFrequency;



      /// Allow coupon
  @OptionalConverter()
  @JsonKey(
    
    name: r'allow_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> allowCoupon;



      /// Service module
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_module',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceModule;



      /// Creation date
  @OptionalConverter()
  @JsonKey(
    
    name: r'created_at',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> createdAt;



      /// Update date
  @OptionalConverter()
  @JsonKey(
    
    name: r'updated_at',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> updatedAt;



      /// Deletion date
  @OptionalConverter()
  @JsonKey(
    
    name: r'deleted_at',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> deletedAt;



      /// Currency symbol
  @OptionalConverter()
  @JsonKey(
    
    name: r'currencySymbol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> currencySymbol;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsitesOrderJsonServiceOffersItem &&
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
            currencySymbol,
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
            other.currencySymbol,
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
        currencySymbol,
    ],);

  factory WebsitesOrderJsonServiceOffersItem.fromJson(Map<String, dynamic> json) => _$WebsitesOrderJsonServiceOffersItemFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderJsonServiceOffersItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

