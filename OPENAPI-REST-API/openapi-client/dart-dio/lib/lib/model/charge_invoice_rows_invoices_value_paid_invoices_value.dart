//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/charge_invoice_rows_invoices_value_paid_invoices_value_refund_invoices_value.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'charge_invoice_rows_invoices_value_paid_invoices_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChargeInvoiceRowsInvoicesValuePaidInvoicesValue {
  /// Returns a new [ChargeInvoiceRowsInvoicesValuePaidInvoicesValue] instance.
  ChargeInvoiceRowsInvoicesValuePaidInvoicesValue({

    this.invoicesId = const Optional.absent(),

    this.invoicesDescription = const Optional.absent(),

    this.invoicesAmount = const Optional.absent(),

    this.invoicesDate = const Optional.absent(),

    this.invoicesCurrency = const Optional.absent(),

    this.currencySymbol = const Optional.absent(),

    this.invoicesDateFormatted = const Optional.absent(),

    this.paymentType = const Optional.absent(),

    this.refundInvoices = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoicesId;



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



  @OptionalConverter()
  @JsonKey(
    
    name: r'payment_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> paymentType;



      /// This is optional when refund is present this will show
  @OptionalConverter()
  @JsonKey(
    
    name: r'refund_invoices',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValueRefundInvoicesValue>?> refundInvoices;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ChargeInvoiceRowsInvoicesValuePaidInvoicesValue &&
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
            paymentType,
            refundInvoices,
        ],
        [
            other.invoicesId,
            other.invoicesDescription,
            other.invoicesAmount,
            other.invoicesDate,
            other.invoicesCurrency,
            other.currencySymbol,
            other.invoicesDateFormatted,
            other.paymentType,
            other.refundInvoices,
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
        paymentType,
        refundInvoices,
    ],);

  factory ChargeInvoiceRowsInvoicesValuePaidInvoicesValue.fromJson(Map<String, dynamic> json) => _$ChargeInvoiceRowsInvoicesValuePaidInvoicesValueFromJson(json);

  Map<String, dynamic> toJson() => _$ChargeInvoiceRowsInvoicesValuePaidInvoicesValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

