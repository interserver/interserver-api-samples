//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailOrderRequest {
  /// Returns a new [MailOrderRequest] instance.
  MailOrderRequest({

    required  this.serviceType,

    this.coupon = const Optional.present(''),

    this.comment = const Optional.present(''),
  });

      /// Mail plan service type id from getNewMail.serviceTypes (must be buyable).
  @JsonKey(
    
    name: r'serviceType',
    required: true,
    includeIfNull: false,
  )


  final int serviceType;



      /// Coupon code.
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> coupon;



      /// Free-form note saved on the service row (used on addMail).
  @OptionalConverter()
  @JsonKey(
    defaultValue: '',
    name: r'comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> comment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailOrderRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceType,
            coupon,
            comment,
        ],
        [
            other.serviceType,
            other.coupon,
            other.comment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceType,
        coupon,
        comment,
    ],);

  factory MailOrderRequest.fromJson(Map<String, dynamic> json) => _$MailOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MailOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

