//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/charge_invoice_rows_invoices_value_paid_invoices_value.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'charge_invoice_rows_invoices_value.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChargeInvoiceRowsInvoicesValue {
  /// Returns a new [ChargeInvoiceRowsInvoicesValue] instance.
  ChargeInvoiceRowsInvoicesValue({

    this.invoicesId = const Optional.absent(),

    this.invoicesDescription = const Optional.absent(),

    this.invoicesAmount = const Optional.absent(),

    this.invoicesDate = const Optional.absent(),

    this.invoicesPaid = const Optional.absent(),

    this.invoicesDueDate = const Optional.absent(),

    this.invoicesCurrency = const Optional.absent(),

    this.currencySymbol = const Optional.absent(),

    this.invoicesDateFormatted = const Optional.absent(),

    this.paidInvoices = const Optional.absent(),
  });

      /// Unique invoice ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> invoicesId;



      /// Description of the invoice charge.
  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_description',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoicesDescription;



      /// Invoice amount.
  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_amount',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> invoicesAmount;



      /// Invoice date.
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
    
    name: r'invoices_paid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum?>.unknownDefaultOpenApi,
  )


  final Optional<ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum?> invoicesPaid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices_due_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoicesDueDate;



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



      /// This is optional when invoices_paid = 1 this array will show
  @OptionalConverter()
  @JsonKey(
    
    name: r'paid_invoices',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Map<String, ChargeInvoiceRowsInvoicesValuePaidInvoicesValue>?> paidInvoices;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ChargeInvoiceRowsInvoicesValue &&
      runtimeType == other.runtimeType &&
      equals(
        [
            invoicesId,
            invoicesDescription,
            invoicesAmount,
            invoicesDate,
            invoicesPaid,
            invoicesDueDate,
            invoicesCurrency,
            currencySymbol,
            invoicesDateFormatted,
            paidInvoices,
        ],
        [
            other.invoicesId,
            other.invoicesDescription,
            other.invoicesAmount,
            other.invoicesDate,
            other.invoicesPaid,
            other.invoicesDueDate,
            other.invoicesCurrency,
            other.currencySymbol,
            other.invoicesDateFormatted,
            other.paidInvoices,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        invoicesId,
        invoicesDescription,
        invoicesAmount,
        invoicesDate,
        invoicesPaid,
        invoicesDueDate,
        invoicesCurrency,
        currencySymbol,
        invoicesDateFormatted,
        paidInvoices,
    ],);

  factory ChargeInvoiceRowsInvoicesValue.fromJson(Map<String, dynamic> json) => _$ChargeInvoiceRowsInvoicesValueFromJson(json);

  Map<String, dynamic> toJson() => _$ChargeInvoiceRowsInvoicesValueToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum {
@JsonValue('0')
n0(''0''),
@JsonValue('1')
n1(''1''),
@JsonValue('11184809')
unknownDefaultOpenApi(''11184809'');

const ChargeInvoiceRowsInvoicesValueInvoicesPaidEnum(this.value);

final String value;

@override
String toString() => value;
}


