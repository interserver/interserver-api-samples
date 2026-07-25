//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website_order_put_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsiteOrderPutRequest {
  /// Returns a new [WebsiteOrderPutRequest] instance.
  WebsiteOrderPutRequest({

    required  this.hostname,

    required  this.packageId,

    this.rootpass = const Optional.present(''),

    this.period = const Optional.present(1),

    this.coupon = const Optional.present(''),

    this.serviceOfferId = const Optional.present(0),

    this.script = const Optional.present(0),

    this.comment = const Optional.present(''),

    this.registerDomain = const Optional.present(false),
  });

      /// Primary FQDN for the website. Must pass valid_hostname() and the keyword blocklist.
  @JsonKey(
    
    name: r'hostname',
    required: true,
    includeIfNull: false,
  )


  final String hostname;



      /// Plan id from getNewWebsite.serviceTypes[].services_id (must be buyable).
  @JsonKey(
    
    name: r'packageId',
    required: true,
    includeIfNull: false,
  )


  final int packageId;



      /// Control-panel admin password. If blank, a random password is generated server-side.
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'rootpass',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> rootpass;



      /// Billing cycle in months (1 / 6 / 12 / 24 / 36).
  @OptionalConverter()
  @JsonKey(
    defaultValue: 1,
    name: r'period',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> period;



      /// Coupon code.
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> coupon;



      /// Promo bundle id from getNewWebsite.serviceOffers.
  @OptionalConverter()
  @JsonKey(
    defaultValue: 0,
    name: r'serviceOfferId',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> serviceOfferId;



      /// Auto-installer id (0 = none).
  @OptionalConverter()
  @JsonKey(
    defaultValue: 0,
    name: r'script',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> script;



      /// Free-form note saved on the service row.
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> comment;



      /// When true and enableDomainRegistering=true from the catalog, also registers/transfers the domain through the order.
  @OptionalConverter()
  @JsonKey(
    defaultValue: false,
    name: r'registerDomain',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> registerDomain;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsiteOrderPutRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            hostname,
            packageId,
            rootpass,
            period,
            coupon,
            serviceOfferId,
            script,
            comment,
            registerDomain,
        ],
        [
            other.hostname,
            other.packageId,
            other.rootpass,
            other.period,
            other.coupon,
            other.serviceOfferId,
            other.script,
            other.comment,
            other.registerDomain,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        hostname,
        packageId,
        rootpass,
        period,
        coupon,
        serviceOfferId,
        script,
        comment,
        registerDomain,
    ],);

  factory WebsiteOrderPutRequest.fromJson(Map<String, dynamic> json) => _$WebsiteOrderPutRequestFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteOrderPutRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

