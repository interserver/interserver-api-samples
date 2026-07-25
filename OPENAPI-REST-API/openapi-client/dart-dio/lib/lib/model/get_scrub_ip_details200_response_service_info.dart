//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_scrub_ip_details200_response_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetScrubIpDetails200ResponseServiceInfo {
  /// Returns a new [GetScrubIpDetails200ResponseServiceInfo] instance.
  GetScrubIpDetails200ResponseServiceInfo({

    this.scrubIpId = const Optional.absent(),

    this.scrubIpType = const Optional.absent(),

    this.scrubIpCustid = const Optional.absent(),

    this.scrubIpOrderDate = const Optional.absent(),

    this.scrubIpIp = const Optional.absent(),

    this.scrubIpServiceId = const Optional.absent(),

    this.scrubIpServiceModule = const Optional.absent(),

    this.scrubIpStatus = const Optional.absent(),

    this.scrubIpInvoice = const Optional.absent(),

    this.scrubIpCurrency = const Optional.absent(),

    this.scrubIpCoupon = const Optional.absent(),

    this.scrubIpComment = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_custid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpCustid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_order_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpOrderDate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpIp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_service_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpServiceId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_service_module',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpServiceModule;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum?>.unknownDefaultOpenApi,
  )


  final Optional<GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum?> scrubIpStatus;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_invoice',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpInvoice;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpCurrency;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpCoupon;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpComment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetScrubIpDetails200ResponseServiceInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            scrubIpId,
            scrubIpType,
            scrubIpCustid,
            scrubIpOrderDate,
            scrubIpIp,
            scrubIpServiceId,
            scrubIpServiceModule,
            scrubIpStatus,
            scrubIpInvoice,
            scrubIpCurrency,
            scrubIpCoupon,
            scrubIpComment,
        ],
        [
            other.scrubIpId,
            other.scrubIpType,
            other.scrubIpCustid,
            other.scrubIpOrderDate,
            other.scrubIpIp,
            other.scrubIpServiceId,
            other.scrubIpServiceModule,
            other.scrubIpStatus,
            other.scrubIpInvoice,
            other.scrubIpCurrency,
            other.scrubIpCoupon,
            other.scrubIpComment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        scrubIpId,
        scrubIpType,
        scrubIpCustid,
        scrubIpOrderDate,
        scrubIpIp,
        scrubIpServiceId,
        scrubIpServiceModule,
        scrubIpStatus,
        scrubIpInvoice,
        scrubIpCurrency,
        scrubIpCoupon,
        scrubIpComment,
    ],);

  factory GetScrubIpDetails200ResponseServiceInfo.fromJson(Map<String, dynamic> json) => _$GetScrubIpDetails200ResponseServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$GetScrubIpDetails200ResponseServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum {
@JsonValue(r'active')
active(r'active'),
@JsonValue(r'pending')
pending(r'pending'),
@JsonValue(r'canceled')
canceled(r'canceled'),
@JsonValue(r'expired')
expired(r'expired'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const GetScrubIpDetails200ResponseServiceInfoScrubIpStatusEnum(this.value);

final String value;

@override
String toString() => value;
}


