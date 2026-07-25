//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'billing_verify_cc_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BillingVerifyCcRequest {
  /// Returns a new [BillingVerifyCcRequest] instance.
  BillingVerifyCcRequest({

    this.idx = const Optional.absent(),

    this.ccCcv2 = const Optional.absent(),

    this.ccAmount1 = const Optional.absent(),

    this.ccAmount2 = const Optional.absent(),

    this.terms = const Optional.absent(),
  });

      /// Card index to verify.
  @OptionalConverter()
  @JsonKey(
    
    name: r'idx',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> idx;



      /// CVV code for verification.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_ccv2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccCcv2;



      /// First micro-charge amount for verification.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_amount1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccAmount1;



      /// Second micro-charge amount for verification.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cc_amount2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ccAmount2;



      /// Whether terms were accepted for verification.
  @OptionalConverter()
  @JsonKey(
    
    name: r'terms',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> terms;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BillingVerifyCcRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            idx,
            ccCcv2,
            ccAmount1,
            ccAmount2,
            terms,
        ],
        [
            other.idx,
            other.ccCcv2,
            other.ccAmount1,
            other.ccAmount2,
            other.terms,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        idx,
        ccCcv2,
        ccAmount1,
        ccAmount2,
        terms,
    ],);

  factory BillingVerifyCcRequest.fromJson(Map<String, dynamic> json) => _$BillingVerifyCcRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BillingVerifyCcRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

