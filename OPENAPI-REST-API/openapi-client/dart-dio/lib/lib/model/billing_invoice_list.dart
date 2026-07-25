//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'billing_invoice_list.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BillingInvoiceList {
  /// Returns a new [BillingInvoiceList] instance.
  BillingInvoiceList({

    this.rows = const Optional.absent(),

    this.summary = const Optional.absent(),
  });

      /// Invoice rows returned for the account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'rows',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<Object>?> rows;



      /// Totals and summary data for the invoices list.
  @OptionalConverter()
  @JsonKey(
    
    name: r'summary',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Object?> summary;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BillingInvoiceList &&
      runtimeType == other.runtimeType &&
      equals(
        [
            rows,
            summary,
        ],
        [
            other.rows,
            other.summary,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        rows,
        summary,
    ],);

  factory BillingInvoiceList.fromJson(Map<String, dynamic> json) => _$BillingInvoiceListFromJson(json);

  Map<String, dynamic> toJson() => _$BillingInvoiceListToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

