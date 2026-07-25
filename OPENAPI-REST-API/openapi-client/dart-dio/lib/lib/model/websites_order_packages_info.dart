//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order_packages_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrderPackagesInfo {
  /// Returns a new [WebsitesOrderPackagesInfo] instance.
  WebsitesOrderPackagesInfo({

    required  this.servicesId,

    required  this.servicesName,

    required  this.servicesCost,

    required  this.servicesCategory,

    required  this.servicesBuyable,

    required  this.servicesType,

    required  this.servicesModule,

    required  this.servicesDescription,

    this.servicesField1 = const Optional.absent(),

    this.servicesField2 = const Optional.absent(),

    this.servicesHtml = const Optional.absent(),

    this.servicesMoreinfoUrl = const Optional.absent(),

    this.servicesHidden = const Optional.absent(),
  });

      /// The ID of the package.
  @JsonKey(
    
    name: r'services_id',
    required: true,
    includeIfNull: false,
  )


  final String servicesId;



      /// The name of the package.
  @JsonKey(
    
    name: r'services_name',
    required: true,
    includeIfNull: false,
  )


  final String servicesName;



      /// The cost of the package.
  @JsonKey(
    
    name: r'services_cost',
    required: true,
    includeIfNull: false,
  )


  final String servicesCost;



      /// The category of the package.
  @JsonKey(
    
    name: r'services_category',
    required: true,
    includeIfNull: false,
  )


  final String servicesCategory;



      /// Indicates if the package is buyable (1 for yes, 0 for no).
  @JsonKey(
    
    name: r'services_buyable',
    required: true,
    includeIfNull: false,
  )


  final String servicesBuyable;



      /// The type of the package.
  @JsonKey(
    
    name: r'services_type',
    required: true,
    includeIfNull: false,
  )


  final String servicesType;



      /// The module of the package.
  @JsonKey(
    
    name: r'services_module',
    required: true,
    includeIfNull: false,
  )


  final String servicesModule;



      /// Description of the package.
  @JsonKey(
    
    name: r'services_description',
    required: true,
    includeIfNull: false,
  )


  final String servicesDescription;



      /// Additional field 1 for the package.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_field1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesField1;



      /// Additional field 2 for the package.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_field2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesField2;



      /// HTML content for the package.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_html',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesHtml;



      /// URL for more information about the package.
  @OptionalConverter()
  @JsonKey(
    
    name: r'services_moreinfo_url',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesMoreinfoUrl;



      /// Indicates if the package is hidden (1 for yes, 0 for no).
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
      other is WebsitesOrderPackagesInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            servicesId,
            servicesName,
            servicesCost,
            servicesCategory,
            servicesBuyable,
            servicesType,
            servicesModule,
            servicesDescription,
            servicesField1,
            servicesField2,
            servicesHtml,
            servicesMoreinfoUrl,
            servicesHidden,
        ],
        [
            other.servicesId,
            other.servicesName,
            other.servicesCost,
            other.servicesCategory,
            other.servicesBuyable,
            other.servicesType,
            other.servicesModule,
            other.servicesDescription,
            other.servicesField1,
            other.servicesField2,
            other.servicesHtml,
            other.servicesMoreinfoUrl,
            other.servicesHidden,
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
        servicesModule,
        servicesDescription,
        servicesField1,
        servicesField2,
        servicesHtml,
        servicesMoreinfoUrl,
        servicesHidden,
    ],);

  factory WebsitesOrderPackagesInfo.fromJson(Map<String, dynamic> json) => _$WebsitesOrderPackagesInfoFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderPackagesInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

