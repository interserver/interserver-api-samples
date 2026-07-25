//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/charge_invoice_rows_invoices_value.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'charge_invoice_rows.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ChargeInvoiceRows {
  /// Returns a new [ChargeInvoiceRows] instance.
  ChargeInvoiceRows({

    this.success = const Optional.absent(),

    this.invoices = const Optional.absent(),
  });

      /// Whether the invoice retrieval was successful.
  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;



      /// List of invoices for the service.
  @OptionalConverter()
  @JsonKey(
    
    name: r'invoices',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Map<String, ChargeInvoiceRowsInvoicesValue>?> invoices;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ChargeInvoiceRows &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            invoices,
        ],
        [
            other.success,
            other.invoices,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        invoices,
    ],);

  factory ChargeInvoiceRows.fromJson(Map<String, dynamic> json) => _$ChargeInvoiceRowsFromJson(json);

  Map<String, dynamic> toJson() => _$ChargeInvoiceRowsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

