//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_order_detail200_response_package_costs.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetOrderDetail200ResponsePackageCosts {
  /// Returns a new [GetOrderDetail200ResponsePackageCosts] instance.
  GetOrderDetail200ResponsePackageCosts({

    this.packageId = const Optional.absent(),

    this.packageCost = const Optional.absent(),

    this.currency = const Optional.absent(),

    this.currencySymbol = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'package_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> packageId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'package_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> packageCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> currency;



  @OptionalConverter()
  @JsonKey(
    
    name: r'currencySymbol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> currencySymbol;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetOrderDetail200ResponsePackageCosts &&
      runtimeType == other.runtimeType &&
      equals(
        [
            packageId,
            packageCost,
            currency,
            currencySymbol,
        ],
        [
            other.packageId,
            other.packageCost,
            other.currency,
            other.currencySymbol,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        packageId,
        packageCost,
        currency,
        currencySymbol,
    ],);

  factory GetOrderDetail200ResponsePackageCosts.fromJson(Map<String, dynamic> json) => _$GetOrderDetail200ResponsePackageCostsFromJson(json);

  Map<String, dynamic> toJson() => _$GetOrderDetail200ResponsePackageCostsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

