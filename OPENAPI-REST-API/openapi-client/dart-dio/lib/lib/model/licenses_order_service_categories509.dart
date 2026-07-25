//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'licenses_order_service_categories509.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LicensesOrderServiceCategories509 {
  /// Returns a new [LicensesOrderServiceCategories509] instance.
  LicensesOrderServiceCategories509({

    this.categoryId = const Optional.absent(),

    this.categoryName = const Optional.absent(),

    this.categoryTag = const Optional.absent(),

    this.categoryModule = const Optional.absent(),
  });

      /// Category ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'category_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> categoryId;



      /// Category Name
  @OptionalConverter()
  @JsonKey(
    
    name: r'category_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> categoryName;



      /// Category Tag
  @OptionalConverter()
  @JsonKey(
    
    name: r'category_tag',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> categoryTag;



      /// Category Module
  @OptionalConverter()
  @JsonKey(
    
    name: r'category_module',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> categoryModule;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LicensesOrderServiceCategories509 &&
      runtimeType == other.runtimeType &&
      equals(
        [
            categoryId,
            categoryName,
            categoryTag,
            categoryModule,
        ],
        [
            other.categoryId,
            other.categoryName,
            other.categoryTag,
            other.categoryModule,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        categoryId,
        categoryName,
        categoryTag,
        categoryModule,
    ],);

  factory LicensesOrderServiceCategories509.fromJson(Map<String, dynamic> json) => _$LicensesOrderServiceCategories509FromJson(json);

  Map<String, dynamic> toJson() => _$LicensesOrderServiceCategories509ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

