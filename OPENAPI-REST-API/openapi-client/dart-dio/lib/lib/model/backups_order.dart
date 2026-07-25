//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/backups_order_service_types.dart';
import 'package:interserver_api/lib/model/backups_order_package_costs.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backups_order.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupsOrder {
  /// Returns a new [BackupsOrder] instance.
  BackupsOrder({

    required  this.packageCosts,

    required  this.serviceTypes,
  });

  @JsonKey(
    
    name: r'packageCosts',
    required: true,
    includeIfNull: false,
  )


  final BackupsOrderPackageCosts packageCosts;



  @JsonKey(
    
    name: r'serviceTypes',
    required: true,
    includeIfNull: false,
  )


  final BackupsOrderServiceTypes serviceTypes;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupsOrder &&
      runtimeType == other.runtimeType &&
      equals(
        [
            packageCosts,
            serviceTypes,
        ],
        [
            other.packageCosts,
            other.serviceTypes,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        packageCosts,
        serviceTypes,
    ],);

  factory BackupsOrder.fromJson(Map<String, dynamic> json) => _$BackupsOrderFromJson(json);

  Map<String, dynamic> toJson() => _$BackupsOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

