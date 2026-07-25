//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'service_order_post_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServiceOrderPostResponse {
  /// Returns a new [ServiceOrderPostResponse] instance.
  ServiceOrderPostResponse({

    this.continue_ = const Optional.absent(),

    this.errors = const Optional.absent(),

    this.totalCost = const Optional.absent(),

    this.iid = const Optional.absent(),

    this.iids = const Optional.absent(),

    this.realIids = const Optional.absent(),

    this.serviceId = const Optional.absent(),

    this.invoiceDescription = const Optional.absent(),
  });

      /// Whether the order was accepted and can proceed to payment.
  @OptionalConverter()
  @JsonKey(
    
    name: r'continue',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> continue_;



      /// List of validation errors (empty on success).
  @OptionalConverter()
  @JsonKey(
    
    name: r'errors',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> errors;



      /// Total cost of the order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'total_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> totalCost;



      /// Primary invoice ID for payment.
  @OptionalConverter()
  @JsonKey(
    
    name: r'iid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> iid;



      /// All invoice identifiers associated with the order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'iids',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> iids;



      /// Numeric invoice IDs for use with billing endpoints.
  @OptionalConverter()
  @JsonKey(
    
    name: r'real_iids',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> realIids;



      /// The new service ID created by the order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceId',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> serviceId;



      /// Human-readable description of the invoice.
  @OptionalConverter()
  @JsonKey(
    
    name: r'invoice_description',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> invoiceDescription;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServiceOrderPostResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            continue_,
            errors,
            totalCost,
            iid,
            iids,
            realIids,
            serviceId,
            invoiceDescription,
        ],
        [
            other.continue_,
            other.errors,
            other.totalCost,
            other.iid,
            other.iids,
            other.realIids,
            other.serviceId,
            other.invoiceDescription,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        continue_,
        errors,
        totalCost,
        iid,
        iids,
        realIids,
        serviceId,
        invoiceDescription,
    ],);

  factory ServiceOrderPostResponse.fromJson(Map<String, dynamic> json) => _$ServiceOrderPostResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceOrderPostResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

