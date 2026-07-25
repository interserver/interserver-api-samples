//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'billing_prepay_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BillingPrepayRequest {
  /// Returns a new [BillingPrepayRequest] instance.
  BillingPrepayRequest({

    this.module = const Optional.absent(),

    this.amount = const Optional.absent(),

    this.automaticUse = const Optional.absent(),
  });

      /// Module the prepay should be applied to (for example `default`).
  @OptionalConverter()
  @JsonKey(
    
    name: r'module',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> module;



      /// Amount to add to prepay balance. Minimum is $10.
  @OptionalConverter()
  @JsonKey(
    
    name: r'amount',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> amount;



      /// Whether the prepay balance should be used automatically.
  @OptionalConverter()
  @JsonKey(
    
    name: r'automatic_use',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> automaticUse;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BillingPrepayRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            module,
            amount,
            automaticUse,
        ],
        [
            other.module,
            other.amount,
            other.automaticUse,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        module,
        amount,
        automaticUse,
    ],);

  factory BillingPrepayRequest.fromJson(Map<String, dynamic> json) => _$BillingPrepayRequestFromJson(json);

  Map<String, dynamic> toJson() => _$BillingPrepayRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

