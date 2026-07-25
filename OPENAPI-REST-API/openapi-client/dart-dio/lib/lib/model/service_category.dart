//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'service_category.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServiceCategory {
  /// Returns a new [ServiceCategory] instance.
  ServiceCategory({

    required  this.categoryId,

    required  this.categoryName,

    required  this.categoryTag,

    required  this.categoryModule,
  });

  @JsonKey(
    
    name: r'category_id',
    required: true,
    includeIfNull: false,
  )


  final int categoryId;



  @JsonKey(
    
    name: r'category_name',
    required: true,
    includeIfNull: false,
  )


  final String categoryName;



  @JsonKey(
    
    name: r'category_tag',
    required: true,
    includeIfNull: false,
  )


  final String categoryTag;



  @JsonKey(
    
    name: r'category_module',
    required: true,
    includeIfNull: false,
  )


  final String categoryModule;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServiceCategory &&
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

  factory ServiceCategory.fromJson(Map<String, dynamic> json) => _$ServiceCategoryFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceCategoryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

