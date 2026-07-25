//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/get_order_detail200_response_ips_inner.dart';
import 'package:interserver_api/lib/model/get_order_detail200_response_package_costs.dart';
import 'package:interserver_api/lib/model/get_order_detail200_response_service_types_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_order_detail200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetOrderDetail200Response {
  /// Returns a new [GetOrderDetail200Response] instance.
  GetOrderDetail200Response({

    this.packageCosts = const Optional.absent(),

    this.serviceTypes = const Optional.absent(),

    this.ips = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'packageCosts',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<GetOrderDetail200ResponsePackageCosts?> packageCosts;



  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceTypes',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<GetOrderDetail200ResponseServiceTypesInner>?> serviceTypes;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<GetOrderDetail200ResponseIpsInner>?> ips;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetOrderDetail200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            packageCosts,
            serviceTypes,
            ips,
        ],
        [
            other.packageCosts,
            other.serviceTypes,
            other.ips,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        packageCosts,
        serviceTypes,
        ips,
    ],);

  factory GetOrderDetail200Response.fromJson(Map<String, dynamic> json) => _$GetOrderDetail200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrderDetail200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

