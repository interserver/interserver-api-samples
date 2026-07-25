//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/licenses_order_service_types.dart';
import 'package:interserver_api/lib/model/licenses_order_service_categories.dart';
import 'package:interserver_api/lib/model/licenses_order_package_costs.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'licenses_order.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicensesOrder {
  /// Returns a new [LicensesOrder] instance.
  LicensesOrder({

    this.serviceCategories = const Optional.absent(),

    this.packageCosts = const Optional.absent(),

    this.serviceTypes = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceCategories',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<LicensesOrderServiceCategories?> serviceCategories;



  @OptionalConverter()
  @JsonKey(
    
    name: r'packageCosts',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<LicensesOrderPackageCosts?> packageCosts;



  @OptionalConverter()
  @JsonKey(
    
    name: r'serviceTypes',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<LicensesOrderServiceTypes?> serviceTypes;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicensesOrder &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceCategories,
            packageCosts,
            serviceTypes,
        ],
        [
            other.serviceCategories,
            other.packageCosts,
            other.serviceTypes,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceCategories,
        packageCosts,
        serviceTypes,
    ],);

  factory LicensesOrder.fromJson(Map<String, dynamic> json) => _$LicensesOrderFromJson(json);

  Map<String, dynamic> toJson() => _$LicensesOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

