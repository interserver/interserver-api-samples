//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'service_type.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServiceType {
  /// Returns a new [ServiceType] instance.
  ServiceType({

    required  this.stId,

    required  this.stName,

    required  this.stCategory,

    required  this.stModule,
  });

  @JsonKey(
    
    name: r'st_id',
    required: true,
    includeIfNull: false,
  )


  final int stId;



  @JsonKey(
    
    name: r'st_name',
    required: true,
    includeIfNull: false,
  )


  final String stName;



  @JsonKey(
    
    name: r'st_category',
    required: true,
    includeIfNull: false,
  )


  final int stCategory;



  @JsonKey(
    
    name: r'st_module',
    required: true,
    includeIfNull: false,
  )


  final String stModule;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServiceType &&
      runtimeType == other.runtimeType &&
      equals(
        [
            stId,
            stName,
            stCategory,
            stModule,
        ],
        [
            other.stId,
            other.stName,
            other.stCategory,
            other.stModule,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        stId,
        stName,
        stCategory,
        stModule,
    ],);

  factory ServiceType.fromJson(Map<String, dynamic> json) => _$ServiceTypeFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceTypeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

