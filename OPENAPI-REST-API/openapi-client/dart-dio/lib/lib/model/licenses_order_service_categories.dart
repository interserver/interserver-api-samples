//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/licenses_order_service_categories509.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'licenses_order_service_categories.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicensesOrderServiceCategories {
  /// Returns a new [LicensesOrderServiceCategories] instance.
  LicensesOrderServiceCategories({

    this.licensesOrderServiceCategories509 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'LicensesOrderServiceCategories509',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<LicensesOrderServiceCategories509?> licensesOrderServiceCategories509;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicensesOrderServiceCategories &&
      runtimeType == other.runtimeType &&
      equals(
        [
            licensesOrderServiceCategories509,
        ],
        [
            other.licensesOrderServiceCategories509,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        licensesOrderServiceCategories509,
    ],);

  factory LicensesOrderServiceCategories.fromJson(Map<String, dynamic> json) => _$LicensesOrderServiceCategoriesFromJson(json);

  Map<String, dynamic> toJson() => _$LicensesOrderServiceCategoriesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

