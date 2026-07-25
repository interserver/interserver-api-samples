//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'patch_billing_credit_card_verify_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchBillingCreditCardVerifyRequest {
  /// Returns a new [PatchBillingCreditCardVerifyRequest] instance.
  PatchBillingCreditCardVerifyRequest({

    required  this.ccCcv2,
  });

      /// The CVV/CVC code on the back of the credit card.
  @JsonKey(
    
    name: r'cc_ccv2',
    required: true,
    includeIfNull: false,
  )


  final String ccCcv2;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PatchBillingCreditCardVerifyRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ccCcv2,
        ],
        [
            other.ccCcv2,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ccCcv2,
    ],);

  factory PatchBillingCreditCardVerifyRequest.fromJson(Map<String, dynamic> json) => _$PatchBillingCreditCardVerifyRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchBillingCreditCardVerifyRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

