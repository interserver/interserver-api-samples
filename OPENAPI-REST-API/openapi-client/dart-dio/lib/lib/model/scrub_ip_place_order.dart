//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'scrub_ip_place_order.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScrubIpPlaceOrder {
  /// Returns a new [ScrubIpPlaceOrder] instance.
  ScrubIpPlaceOrder({

    required  this.serviceType,

    required  this.ip,
  });

  @JsonKey(
    
    name: r'service_type',
    required: true,
    includeIfNull: false,
  )


  final int serviceType;



  @JsonKey(
    
    name: r'ip',
    required: true,
    includeIfNull: false,
  )


  final String ip;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ScrubIpPlaceOrder &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceType,
            ip,
        ],
        [
            other.serviceType,
            other.ip,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceType,
        ip,
    ],);

  factory ScrubIpPlaceOrder.fromJson(Map<String, dynamic> json) => _$ScrubIpPlaceOrderFromJson(json);

  Map<String, dynamic> toJson() => _$ScrubIpPlaceOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

