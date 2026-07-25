//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainServiceInfo {
  /// Returns a new [DomainServiceInfo] instance.
  DomainServiceInfo({

    this.domainId = const Optional.absent(),

    this.domainHostname = const Optional.absent(),

    this.domainUsername = const Optional.absent(),

    this.domainPassword = const Optional.absent(),

    this.domainType = const Optional.absent(),

    this.domainCurrency = const Optional.absent(),

    this.domainExpireDate = const Optional.absent(),

    this.domainOrderDate = const Optional.absent(),

    this.domainCustid = const Optional.absent(),

    this.domainStatus = const Optional.absent(),

    this.domainInvoice = const Optional.absent(),

    this.domainCoupon = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainHostname;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainUsername;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainPassword;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainCurrency;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_expire_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainExpireDate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_order_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainOrderDate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_custid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainCustid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainStatus;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_invoice',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainInvoice;



  @OptionalConverter()
  @JsonKey(
    
    name: r'domain_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domainCoupon;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainServiceInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            domainId,
            domainHostname,
            domainUsername,
            domainPassword,
            domainType,
            domainCurrency,
            domainExpireDate,
            domainOrderDate,
            domainCustid,
            domainStatus,
            domainInvoice,
            domainCoupon,
        ],
        [
            other.domainId,
            other.domainHostname,
            other.domainUsername,
            other.domainPassword,
            other.domainType,
            other.domainCurrency,
            other.domainExpireDate,
            other.domainOrderDate,
            other.domainCustid,
            other.domainStatus,
            other.domainInvoice,
            other.domainCoupon,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        domainId,
        domainHostname,
        domainUsername,
        domainPassword,
        domainType,
        domainCurrency,
        domainExpireDate,
        domainOrderDate,
        domainCustid,
        domainStatus,
        domainInvoice,
        domainCoupon,
    ],);

  factory DomainServiceInfo.fromJson(Map<String, dynamic> json) => _$DomainServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DomainServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

