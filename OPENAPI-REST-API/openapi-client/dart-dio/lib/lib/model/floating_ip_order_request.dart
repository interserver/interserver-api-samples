//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'floating_ip_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class FloatingIpOrderRequest {
  /// Returns a new [FloatingIpOrderRequest] instance.
  FloatingIpOrderRequest({

    required  this.serviceType,

    this.coupon = const Optional.present(''),

    this.comment = const Optional.present(''),
  });

      /// Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
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



      /// Free-form note saved on the service row (used on addFloatingIp).
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
      other is FloatingIpOrderRequest &&
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

  factory FloatingIpOrderRequest.fromJson(Map<String, dynamic> json) => _$FloatingIpOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$FloatingIpOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

