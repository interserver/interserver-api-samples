//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'service.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Service {
  /// Returns a new [Service] instance.
  Service({

    required  this.servicesId,

    required  this.servicesName,

    required  this.servicesCost,

    required  this.servicesCurrency,

    required  this.servicesCategory,

    required  this.servicesBuyable,

    required  this.servicesType,

    required  this.servicesField1,

    required  this.servicesField2,

    required  this.servicesModule,
  });

  @JsonKey(
    
    name: r'services_id',
    required: true,
    includeIfNull: false,
  )


  final int servicesId;



  @JsonKey(
    
    name: r'services_name',
    required: true,
    includeIfNull: false,
  )


  final String servicesName;



  @JsonKey(
    
    name: r'services_cost',
    required: true,
    includeIfNull: false,
  )


  final num servicesCost;



  @JsonKey(
    
    name: r'services_currency',
    required: true,
    includeIfNull: false,
  )


  final String servicesCurrency;



  @JsonKey(
    
    name: r'services_category',
    required: true,
    includeIfNull: false,
  )


  final int servicesCategory;



  @JsonKey(
    
    name: r'services_buyable',
    required: true,
    includeIfNull: false,
  )


  final bool servicesBuyable;



  @JsonKey(
    
    name: r'services_type',
    required: true,
    includeIfNull: false,
  )


  final int servicesType;



  @JsonKey(
    
    name: r'services_field1',
    required: true,
    includeIfNull: false,
  )


  final String servicesField1;



  @JsonKey(
    
    name: r'services_field2',
    required: true,
    includeIfNull: false,
  )


  final String servicesField2;



  @JsonKey(
    
    name: r'services_module',
    required: true,
    includeIfNull: false,
  )


  final String servicesModule;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is Service &&
      runtimeType == other.runtimeType &&
      equals(
        [
            servicesId,
            servicesName,
            servicesCost,
            servicesCurrency,
            servicesCategory,
            servicesBuyable,
            servicesType,
            servicesField1,
            servicesField2,
            servicesModule,
        ],
        [
            other.servicesId,
            other.servicesName,
            other.servicesCost,
            other.servicesCurrency,
            other.servicesCategory,
            other.servicesBuyable,
            other.servicesType,
            other.servicesField1,
            other.servicesField2,
            other.servicesModule,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        servicesId,
        servicesName,
        servicesCost,
        servicesCurrency,
        servicesCategory,
        servicesBuyable,
        servicesType,
        servicesField1,
        servicesField2,
        servicesModule,
    ],);

  factory Service.fromJson(Map<String, dynamic> json) => _$ServiceFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

