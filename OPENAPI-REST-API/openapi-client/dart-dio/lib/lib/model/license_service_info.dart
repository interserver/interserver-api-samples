//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:time_machine/time_machine.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'license_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseServiceInfo {
  /// Returns a new [LicenseServiceInfo] instance.
  LicenseServiceInfo({

    required  this.licenseId,

    required  this.licenseType,

    required  this.licenseCurrency,

    required  this.licenseOrderDate,

    required  this.licenseCustid,

    required  this.licenseIp,

    required  this.licenseStatus,

    required  this.licenseInvoice,

    required  this.licenseCoupon,

    this.licenseHostname = const Optional.absent(),

    this.licenseKey = const Optional.absent(),

    this.licenseExtra = const Optional.absent(),
  });

      /// License ID
  @JsonKey(
    
    name: r'license_id',
    required: true,
    includeIfNull: false,
  )


  final String licenseId;



      /// License type
  @JsonKey(
    
    name: r'license_type',
    required: true,
    includeIfNull: false,
  )


  final String licenseType;



      /// License currency
  @JsonKey(
    
    name: r'license_currency',
    required: true,
    includeIfNull: false,
  )


  final String licenseCurrency;



      /// License order date
  @JsonKey(
    
    name: r'license_order_date',
    required: true,
    includeIfNull: false,
  )


  final OffsetDateTime licenseOrderDate;



      /// Customer ID
  @JsonKey(
    
    name: r'license_custid',
    required: true,
    includeIfNull: false,
  )


  final String licenseCustid;



      /// License IP
  @JsonKey(
    
    name: r'license_ip',
    required: true,
    includeIfNull: false,
  )


  final String licenseIp;



      /// License status
  @JsonKey(
    
    name: r'license_status',
    required: true,
    includeIfNull: false,
  )


  final String licenseStatus;



      /// License invoice
  @JsonKey(
    
    name: r'license_invoice',
    required: true,
    includeIfNull: false,
  )


  final String licenseInvoice;



      /// License coupon
  @JsonKey(
    
    name: r'license_coupon',
    required: true,
    includeIfNull: false,
  )


  final String licenseCoupon;



      /// License hostname
  @OptionalConverter()
  @JsonKey(
    
    name: r'license_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> licenseHostname;



      /// License key
  @OptionalConverter()
  @JsonKey(
    
    name: r'license_key',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> licenseKey;



      /// Additional license information
  @OptionalConverter()
  @JsonKey(
    
    name: r'license_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> licenseExtra;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicenseServiceInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            licenseId,
            licenseType,
            licenseCurrency,
            licenseOrderDate,
            licenseCustid,
            licenseIp,
            licenseStatus,
            licenseInvoice,
            licenseCoupon,
            licenseHostname,
            licenseKey,
            licenseExtra,
        ],
        [
            other.licenseId,
            other.licenseType,
            other.licenseCurrency,
            other.licenseOrderDate,
            other.licenseCustid,
            other.licenseIp,
            other.licenseStatus,
            other.licenseInvoice,
            other.licenseCoupon,
            other.licenseHostname,
            other.licenseKey,
            other.licenseExtra,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        licenseId,
        licenseType,
        licenseCurrency,
        licenseOrderDate,
        licenseCustid,
        licenseIp,
        licenseStatus,
        licenseInvoice,
        licenseCoupon,
        licenseHostname,
        licenseKey,
        licenseExtra,
    ],);

  factory LicenseServiceInfo.fromJson(Map<String, dynamic> json) => _$LicenseServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

