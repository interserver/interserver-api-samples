//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_billing_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupBillingDetails {
  /// Returns a new [BackupBillingDetails] instance.
  BackupBillingDetails({

    this.serviceLastInvoiceDate = const Optional.absent(),

    this.servicePaymentStatus = const Optional.absent(),

    this.serviceFrequency = const Optional.absent(),

    this.nextDate = const Optional.absent(),

    this.serviceNextInvoiceDate = const Optional.absent(),

    this.serviceCurrency = const Optional.absent(),

    this.serviceCurrencySymbol = const Optional.absent(),

    this.serviceCostInfo = const Optional.absent(),

    this.serviceExtra = const Optional.absent(),

    this.serviceExtraJson = const Optional.absent(),
  });

      /// Last invoice date of the service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_last_invoice_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceLastInvoiceDate;



      /// Payment status of the service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_payment_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicePaymentStatus;



      /// Billing frequency of the service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_frequency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceFrequency;



      /// Next billing date of the service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'next_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> nextDate;



      /// Next invoice date of the service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_next_invoice_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceNextInvoiceDate;



      /// Currency of the service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceCurrency;



      /// Currency symbol of the service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_currency_symbol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceCurrencySymbol;



      /// Cost information of the service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_cost_info',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceCostInfo;



      /// Service Extra Info
  @OptionalConverter()
  @JsonKey(
    
    name: r'service_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceExtra;



      /// JSON representation of extra service information.
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
      other is BackupBillingDetails &&
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
        serviceCostInfo,
        serviceExtra,
        serviceExtraJson,
    ],);

  factory BackupBillingDetails.fromJson(Map<String, dynamic> json) => _$BackupBillingDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$BackupBillingDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

