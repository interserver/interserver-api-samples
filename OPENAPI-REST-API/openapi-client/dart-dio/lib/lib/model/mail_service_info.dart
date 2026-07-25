//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailServiceInfo {
  /// Returns a new [MailServiceInfo] instance.
  MailServiceInfo({

    required  this.mailId,

    required  this.mailType,

    required  this.mailCurrency,

    required  this.mailOrderDate,

    required  this.mailCustid,

    required  this.mailQuota,

    required  this.mailStatus,

    required  this.mailInvoice,

    this.mailUsername = const Optional.absent(),

    this.mailIp = const Optional.absent(),

    this.mailCoupon = const Optional.absent(),

    this.mailExtra = const Optional.absent(),

    this.mailServerStatus = const Optional.absent(),

    this.mailComment = const Optional.absent(),
  });

      /// The ID of the mail service.
  @JsonKey(
    
    name: r'mail_id',
    required: true,
    includeIfNull: false,
  )


  final String mailId;



      /// The type of mail service.
  @JsonKey(
    
    name: r'mail_type',
    required: true,
    includeIfNull: false,
  )


  final String mailType;



      /// The currency of the mail service.
  @JsonKey(
    
    name: r'mail_currency',
    required: true,
    includeIfNull: false,
  )


  final String mailCurrency;



      /// The order date of the mail service.
  @JsonKey(
    
    name: r'mail_order_date',
    required: true,
    includeIfNull: false,
  )


  final String mailOrderDate;



      /// The customer ID associated with the mail service.
  @JsonKey(
    
    name: r'mail_custid',
    required: true,
    includeIfNull: false,
  )


  final String mailCustid;



      /// The mail quota for the service.
  @JsonKey(
    
    name: r'mail_quota',
    required: true,
    includeIfNull: false,
  )


  final String mailQuota;



      /// The status of the mail service.
  @JsonKey(
    
    name: r'mail_status',
    required: true,
    includeIfNull: false,
  )


  final String mailStatus;



      /// The invoice ID of the mail service.
  @JsonKey(
    
    name: r'mail_invoice',
    required: true,
    includeIfNull: false,
  )


  final String mailInvoice;



      /// The username associated with the mail service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mail_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mailUsername;



      /// The IP address associated with the mail service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mail_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mailIp;



      /// The coupon associated with the mail service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mail_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mailCoupon;



      /// Additional information for the mail service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mail_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mailExtra;



      /// The server status of the mail service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mail_server_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mailServerStatus;



      /// Additional comments for the mail service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mail_comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mailComment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailServiceInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            mailId,
            mailType,
            mailCurrency,
            mailOrderDate,
            mailCustid,
            mailQuota,
            mailStatus,
            mailInvoice,
            mailUsername,
            mailIp,
            mailCoupon,
            mailExtra,
            mailServerStatus,
            mailComment,
        ],
        [
            other.mailId,
            other.mailType,
            other.mailCurrency,
            other.mailOrderDate,
            other.mailCustid,
            other.mailQuota,
            other.mailStatus,
            other.mailInvoice,
            other.mailUsername,
            other.mailIp,
            other.mailCoupon,
            other.mailExtra,
            other.mailServerStatus,
            other.mailComment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        mailId,
        mailType,
        mailCurrency,
        mailOrderDate,
        mailCustid,
        mailQuota,
        mailStatus,
        mailInvoice,
        mailUsername,
        mailIp,
        mailCoupon,
        mailExtra,
        mailServerStatus,
        mailComment,
    ],);

  factory MailServiceInfo.fromJson(Map<String, dynamic> json) => _$MailServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$MailServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

