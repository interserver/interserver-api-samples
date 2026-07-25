//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'licenses_order_package_costs.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicensesOrderPackageCosts {
  /// Returns a new [LicensesOrderPackageCosts] instance.
  LicensesOrderPackageCosts({

    this.licensesOrderPackageCosts11468 = const Optional.absent(),
  });

      /// Cost of package with ID 11468
  @OptionalConverter()
  @JsonKey(
    
    name: r'LicensesOrderPackageCosts11468',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> licensesOrderPackageCosts11468;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicensesOrderPackageCosts &&
      runtimeType == other.runtimeType &&
      equals(
        [
            licensesOrderPackageCosts11468,
        ],
        [
            other.licensesOrderPackageCosts11468,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        licensesOrderPackageCosts11468,
    ],);

  factory LicensesOrderPackageCosts.fromJson(Map<String, dynamic> json) => _$LicensesOrderPackageCostsFromJson(json);

  Map<String, dynamic> toJson() => _$LicensesOrderPackageCostsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

