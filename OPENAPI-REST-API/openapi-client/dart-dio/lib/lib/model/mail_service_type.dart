//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_service_type.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailServiceType {
  /// Returns a new [MailServiceType] instance.
  MailServiceType({

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

      /// The ID of the service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesId;



      /// The name of the service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesName;



      /// The cost of the service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesCost;



      /// The category of the service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_category',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesCategory;



      /// Whether the service type is buyable.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_buyable',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesBuyable;



      /// The type of the service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesType;



      /// Additional field for the service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_field1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesField1;



      /// Additional field for the service type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_field2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesField2;



      /// The module of the service type.
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
      other is MailServiceType &&
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

  factory MailServiceType.fromJson(Map<String, dynamic> json) => _$MailServiceTypeFromJson(json);

  Map<String, dynamic> toJson() => _$MailServiceTypeToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

