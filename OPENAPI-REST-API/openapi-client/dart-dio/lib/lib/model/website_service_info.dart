//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsiteServiceInfo {
  /// Returns a new [WebsiteServiceInfo] instance.
  WebsiteServiceInfo({

    this.websiteId = const Optional.absent(),

    this.websiteServer = const Optional.absent(),

    this.websiteType = const Optional.absent(),

    this.websiteCurrency = const Optional.absent(),

    this.websiteOrderDate = const Optional.absent(),

    this.websiteCustid = const Optional.absent(),

    this.websiteIp = const Optional.absent(),

    this.websiteStatus = const Optional.absent(),

    this.websiteInvoice = const Optional.absent(),

    this.websiteCoupon = const Optional.absent(),

    this.websiteExtra = const Optional.absent(),

    this.websiteHostname = const Optional.absent(),

    this.websiteComment = const Optional.absent(),

    this.websiteUsername = const Optional.absent(),

    this.websiteServerStatus = const Optional.absent(),
  });

      /// Website ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteId;



      /// Website server
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_server',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteServer;



      /// Website type
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteType;



      /// Currency of the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteCurrency;



      /// Order date of the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_order_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteOrderDate;



      /// Customer ID of the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_custid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteCustid;



      /// IP address of the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteIp;



      /// Status of the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteStatus;



      /// Invoice of the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_invoice',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteInvoice;



      /// Coupon for the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteCoupon;



      /// Extra information in JSON format for the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteExtra;



      /// Hostname of the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteHostname;



      /// Comment for the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteComment;



      /// Username for the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteUsername;



      /// Server status of the website
  @OptionalConverter()
  @JsonKey(
    
    name: r'website_server_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> websiteServerStatus;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsiteServiceInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            websiteId,
            websiteServer,
            websiteType,
            websiteCurrency,
            websiteOrderDate,
            websiteCustid,
            websiteIp,
            websiteStatus,
            websiteInvoice,
            websiteCoupon,
            websiteExtra,
            websiteHostname,
            websiteComment,
            websiteUsername,
            websiteServerStatus,
        ],
        [
            other.websiteId,
            other.websiteServer,
            other.websiteType,
            other.websiteCurrency,
            other.websiteOrderDate,
            other.websiteCustid,
            other.websiteIp,
            other.websiteStatus,
            other.websiteInvoice,
            other.websiteCoupon,
            other.websiteExtra,
            other.websiteHostname,
            other.websiteComment,
            other.websiteUsername,
            other.websiteServerStatus,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        websiteId,
        websiteServer,
        websiteType,
        websiteCurrency,
        websiteOrderDate,
        websiteCustid,
        websiteIp,
        websiteStatus,
        websiteInvoice,
        websiteCoupon,
        websiteExtra,
        websiteHostname,
        websiteComment,
        websiteUsername,
        websiteServerStatus,
    ],);

  factory WebsiteServiceInfo.fromJson(Map<String, dynamic> json) => _$WebsiteServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

