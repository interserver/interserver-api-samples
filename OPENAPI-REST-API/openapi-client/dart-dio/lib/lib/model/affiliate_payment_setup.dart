//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'affiliate_payment_setup.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AffiliatePaymentSetup {
  /// Returns a new [AffiliatePaymentSetup] instance.
  AffiliatePaymentSetup({

    this.affiliatePaypal = const Optional.absent(),

    this.affiliatePaymentMethod = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'affiliate_paypal',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> affiliatePaypal;



  @OptionalConverter()
  @JsonKey(
    
    name: r'affiliate_payment_method',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> affiliatePaymentMethod;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AffiliatePaymentSetup &&
      runtimeType == other.runtimeType &&
      equals(
        [
            affiliatePaypal,
            affiliatePaymentMethod,
        ],
        [
            other.affiliatePaypal,
            other.affiliatePaymentMethod,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        affiliatePaypal,
        affiliatePaymentMethod,
    ],);

  factory AffiliatePaymentSetup.fromJson(Map<String, dynamic> json) => _$AffiliatePaymentSetupFromJson(json);

  Map<String, dynamic> toJson() => _$AffiliatePaymentSetupToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

