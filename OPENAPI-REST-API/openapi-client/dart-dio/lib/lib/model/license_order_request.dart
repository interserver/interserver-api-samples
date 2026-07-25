//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'license_order_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicenseOrderRequest {
  /// Returns a new [LicenseOrderRequest] instance.
  LicenseOrderRequest({

    required  this.package,

    required  this.ip,

    required  this.tos,

    this.frequency = const Optional.present(1),

    this.coupon = const Optional.present(''),

    this.comment = const Optional.present(''),
  });

      /// License service type id from getNewLicense.serviceTypes (must be buyable).
  @JsonKey(
    
    name: r'package',
    required: true,
    includeIfNull: false,
  )


  final int package;



      /// IP address the license is bound to.
  @JsonKey(
    
    name: r'ip',
    required: true,
    includeIfNull: false,
  )


  final String ip;



      /// Terms-of-service acceptance. Must be true to place the order.
  @JsonKey(
    
    name: r'tos',
    required: true,
    includeIfNull: false,
  )


  final bool tos;



      /// Billing frequency in months.
  @OptionalConverter()
  @JsonKey(
    defaultValue: 1,
    name: r'frequency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> frequency;



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



      /// Free-form note saved on the service row.
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
      other is LicenseOrderRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            package,
            ip,
            tos,
            frequency,
            coupon,
            comment,
        ],
        [
            other.package,
            other.ip,
            other.tos,
            other.frequency,
            other.coupon,
            other.comment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        package,
        ip,
        tos,
        frequency,
        coupon,
        comment,
    ],);

  factory LicenseOrderRequest.fromJson(Map<String, dynamic> json) => _$LicenseOrderRequestFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseOrderRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

