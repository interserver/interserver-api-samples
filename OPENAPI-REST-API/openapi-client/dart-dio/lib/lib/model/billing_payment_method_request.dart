//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'billing_payment_method_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BillingPaymentMethodRequest {
  /// Returns a new [BillingPaymentMethodRequest] instance.
  BillingPaymentMethodRequest({

    this.paymentMethod = const Optional.absent(),

    this.ccAuto = const Optional.absent(),
  });

      /// Payment method identifier (cc, paypal, or cc{index}).
  @OptionalConverter()
  @JsonKey(
    
    name: r'payment_method',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> paymentMethod;



      /// Whether automatic credit card payments are enabled.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_auto',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccAuto;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BillingPaymentMethodRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            paymentMethod,
            ccAuto,
        ],
        [
            other.paymentMethod,
            other.ccAuto,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        paymentMethod,
        ccAuto,
    ],);

  factory BillingPaymentMethodRequest.fromJson(Map<String, dynamic> json) => _$BillingPaymentMethodRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BillingPaymentMethodRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

