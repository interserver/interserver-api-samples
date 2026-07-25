//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue {
  /// Returns a new [ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue] instance.
  ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue({

    this.invoicesId = const Optional.absent(),

    this.invoicesDescription = const Optional.absent(),

    this.invoicesAmount = const Optional.absent(),

    this.invoicesDate = const Optional.absent(),

    this.invoicesCurrency = const Optional.absent(),

    this.currencySymbol = const Optional.absent(),

    this.invoicesDateFormatted = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> invoicesId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_description',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoicesDescription;



  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_amount',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> invoicesAmount;



  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoicesDate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoicesCurrency;



  @OptionalConverter()
  @JsonKey(
    
    name: r'currency_symbol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> currencySymbol;



  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_date_formatted',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoicesDateFormatted;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue &&
      runtimeType == other.runtimeType &&
      equals(
        [
            invoicesId,
            invoicesDescription,
            invoicesAmount,
            invoicesDate,
            invoicesCurrency,
            currencySymbol,
            invoicesDateFormatted,
        ],
        [
            other.invoicesId,
            other.invoicesDescription,
            other.invoicesAmount,
            other.invoicesDate,
            other.invoicesCurrency,
            other.currencySymbol,
            other.invoicesDateFormatted,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        invoicesId,
        invoicesDescription,
        invoicesAmount,
        invoicesDate,
        invoicesCurrency,
        currencySymbol,
        invoicesDateFormatted,
    ],);

  factory ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue.fromJson(Map<String, dynamic> json) => _$ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValueFromJson(json);

  Map<String, dynamic> toJson() => _$ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

