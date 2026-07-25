//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_order_services10001.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainOrderServices10001 {
  /// Returns a new [DomainOrderServices10001] instance.
  DomainOrderServices10001({

    this.servicesId = const Optional.absent(),

    this.servicesName = const Optional.absent(),

    this.servicesCost = const Optional.absent(),

    this.servicesCurrency = const Optional.absent(),

    this.servicesCategory = const Optional.absent(),

    this.servicesBuyable = const Optional.absent(),

    this.servicesType = const Optional.absent(),

    this.servicesField1 = const Optional.absent(),

    this.servicesField2 = const Optional.absent(),

    this.servicesModule = const Optional.absent(),

    this.servicesHidden = const Optional.absent(),
  });

      /// Service ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesId;



      /// Service Name
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesName;



      /// Service Cost
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesCost;



      /// Currency of Service Cost
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesCurrency;



      /// Service Category
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_category',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesCategory;



      /// Buyable flag for Service
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_buyable',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesBuyable;



      /// Service Type
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesType;



      /// Field 1 of Service
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_field1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesField1;



      /// Field 2 of Service
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_field2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesField2;



      /// Module of Service
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_module',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesModule;



      /// Hidden flag for Service
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_hidden',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesHidden;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainOrderServices10001 &&
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
            servicesHidden,
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
            other.servicesHidden,
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
        servicesHidden,
    ],);

  factory DomainOrderServices10001.fromJson(Map<String, dynamic> json) => _$DomainOrderServices10001FromJson(json);

  Map<String, dynamic> toJson() => _$DomainOrderServices10001ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

