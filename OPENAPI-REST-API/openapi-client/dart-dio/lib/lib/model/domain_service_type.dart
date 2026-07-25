//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_service_type.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainServiceType {
  /// Returns a new [DomainServiceType] instance.
  DomainServiceType({

    this.servicesId = const Optional.absent(),

    this.servicesName = const Optional.absent(),

    this.servicesCost = const Optional.absent(),

    this.servicesCategory = const Optional.absent(),

    this.servicesBuyable = const Optional.absent(),

    this.servicesType = const Optional.absent(),

    this.servicesField1 = const Optional.absent(),

    this.servicesField2 = const Optional.absent(),

    this.servicesModule = const Optional.absent(),
  });

      /// Service type ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesId;



      /// Service type name (e.g., .com Registration).
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesName;



      /// Service cost per billing period.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesCost;



      /// Service category ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_category',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesCategory;



      /// Whether this service type is available for purchase.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_buyable',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesBuyable;



      /// Internal service type identifier.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesType;



      /// TLD or first configurable field for the service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_field1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesField1;



      /// Second configurable field for the service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_field2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesField2;



      /// Backend module handling this service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_module',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesModule;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainServiceType &&
      runtimeType == other.runtimeType &&
      equals(
        [
            servicesId,
            servicesName,
            servicesCost,
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
        servicesCategory,
        servicesBuyable,
        servicesType,
        servicesField1,
        servicesField2,
        servicesModule,
    ],);

  factory DomainServiceType.fromJson(Map<String, dynamic> json) => _$DomainServiceTypeFromJson(json);

  Map<String, dynamic> toJson() => _$DomainServiceTypeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

