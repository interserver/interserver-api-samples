//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_order_detail200_response_ips_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetOrderDetail200ResponseIpsInner {
  /// Returns a new [GetOrderDetail200ResponseIpsInner] instance.
  GetOrderDetail200ResponseIpsInner({

    this.serviceId = const Optional.absent(),

    this.serviceModule = const Optional.absent(),

    this.serviceHostname = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'service_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> serviceId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'service_module',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceModule;



  @OptionalConverter()
  @JsonKey(
    
    name: r'service_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serviceHostname;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetOrderDetail200ResponseIpsInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceId,
            serviceModule,
            serviceHostname,
        ],
        [
            other.serviceId,
            other.serviceModule,
            other.serviceHostname,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceId,
        serviceModule,
        serviceHostname,
    ],);

  factory GetOrderDetail200ResponseIpsInner.fromJson(Map<String, dynamic> json) => _$GetOrderDetail200ResponseIpsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrderDetail200ResponseIpsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

