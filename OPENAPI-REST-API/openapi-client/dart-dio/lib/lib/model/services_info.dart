//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/service_categories.dart';
import 'package:interserver_api/lib/model/service_types.dart';
import 'package:interserver_api/lib/model/modules.dart';
import 'package:interserver_api/lib/model/services.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'services_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServicesInfo {
  /// Returns a new [ServicesInfo] instance.
  ServicesInfo({

    required  this.modules,

    required  this.services,

    required  this.serviceTypes,

    required  this.serviceCategories,
  });

  @JsonKey(
    
    name: r'modules',
    required: true,
    includeIfNull: false,
  )


  final Modules modules;



  @JsonKey(
    
    name: r'services',
    required: true,
    includeIfNull: false,
  )


  final Services services;



  @JsonKey(
    
    name: r'serviceTypes',
    required: true,
    includeIfNull: false,
  )


  final ServiceTypes serviceTypes;



  @JsonKey(
    
    name: r'serviceCategories',
    required: true,
    includeIfNull: false,
  )


  final ServiceCategories serviceCategories;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServicesInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            modules,
            services,
            serviceTypes,
            serviceCategories,
        ],
        [
            other.modules,
            other.services,
            other.serviceTypes,
            other.serviceCategories,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        modules,
        services,
        serviceTypes,
        serviceCategories,
    ],);

  factory ServicesInfo.fromJson(Map<String, dynamic> json) => _$ServicesInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ServicesInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

