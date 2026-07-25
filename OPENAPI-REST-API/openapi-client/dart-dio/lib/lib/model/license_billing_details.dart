//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:time_machine/time_machine.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'license_billing_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseBillingDetails {
  /// Returns a new [LicenseBillingDetails] instance.
  LicenseBillingDetails({

    this.serviceLastInvoiceDate = const Optional.absent(),

    this.servicePaymentStatus = const Optional.absent(),

    this.serviceFrequency = const Optional.absent(),

    this.nextDate = const Optional.absent(),

    this.serviceNextInvoiceDate = const Optional.absent(),

    this.serviceCurrency = const Optional.absent(),

    this.serviceCurrencySymbol = const Optional.absent(),

    this.serviceCoupon = const Optional.absent(),

    this.serviceCostInfo = const Optional.absent(),

    this.serviceExtra = const Optional.absent(),

    this.serviceExtraJson = const Optional.absent(),
  });

      /// Last invoice date
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_last_invoice_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceLastInvoiceDate;



      /// Payment status
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_payment_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicePaymentStatus;



      /// Service frequency
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_frequency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceFrequency;



      /// Next date
  @OptionalConverter()
  @JsonKey(
    
    name: r'next_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<OffsetDateTime?> nextDate;



      /// Next invoice date
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_next_invoice_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceNextInvoiceDate;



      /// Service currency
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceCurrency;



      /// Service currency symbol
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_currency_symbol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceCurrencySymbol;



      /// Service coupon
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceCoupon;



      /// Service cost information
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_cost_info',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceCostInfo;



      /// Additional service information
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> serviceExtra;



      /// Additional service information in JSON format
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_extra_json',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceExtraJson;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicenseBillingDetails &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceLastInvoiceDate,
            servicePaymentStatus,
            serviceFrequency,
            nextDate,
            serviceNextInvoiceDate,
            serviceCurrency,
            serviceCurrencySymbol,
            serviceCoupon,
            serviceCostInfo,
            serviceExtra,
            serviceExtraJson,
        ],
        [
            other.serviceLastInvoiceDate,
            other.servicePaymentStatus,
            other.serviceFrequency,
            other.nextDate,
            other.serviceNextInvoiceDate,
            other.serviceCurrency,
            other.serviceCurrencySymbol,
            other.serviceCoupon,
            other.serviceCostInfo,
            other.serviceExtra,
            other.serviceExtraJson,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceLastInvoiceDate,
        servicePaymentStatus,
        serviceFrequency,
        nextDate,
        serviceNextInvoiceDate,
        serviceCurrency,
        serviceCurrencySymbol,
        serviceCoupon,
        serviceCostInfo,
        serviceExtra,
        serviceExtraJson,
    ],);

  factory LicenseBillingDetails.fromJson(Map<String, dynamic> json) => _$LicenseBillingDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseBillingDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

