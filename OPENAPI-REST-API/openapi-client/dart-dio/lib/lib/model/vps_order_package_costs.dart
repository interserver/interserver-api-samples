//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_order_package_costs.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsOrderPackageCosts {
  /// Returns a new [VpsOrderPackageCosts] instance.
  VpsOrderPackageCosts({

    this.n57 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'57',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> n57;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsOrderPackageCosts &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n57,
        ],
        [
            other.n57,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n57,
    ],);

  factory VpsOrderPackageCosts.fromJson(Map<String, dynamic> json) => _$VpsOrderPackageCostsFromJson(json);

  Map<String, dynamic> toJson() => _$VpsOrderPackageCostsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

