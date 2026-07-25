//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_da_license.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsDALicense {
  /// Returns a new [VpsDALicense] instance.
  VpsDALicense({

    this.name = const Optional.absent(),

    this.subName = const Optional.absent(),

    this.cost = const Optional.absent(),

    this.imgDisabled = const Optional.absent(),

    this.imgActive = const Optional.absent(),
  });

      /// License tier name.
  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



      /// License tier sub-name.
  @OptionalConverter()
  @JsonKey(
    
    name: r'sub_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> subName;



      /// Monthly cost in cents.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> cost;



      /// Image path for the disabled state icon.
  @OptionalConverter()
  @JsonKey(
    
    name: r'img_disabled',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> imgDisabled;



      /// Image path for the active state icon.
  @OptionalConverter()
  @JsonKey(
    
    name: r'img_active',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> imgActive;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsDALicense &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            subName,
            cost,
            imgDisabled,
            imgActive,
        ],
        [
            other.name,
            other.subName,
            other.cost,
            other.imgDisabled,
            other.imgActive,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        subName,
        cost,
        imgDisabled,
        imgActive,
    ],);

  factory VpsDALicense.fromJson(Map<String, dynamic> json) => _$VpsDALicenseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsDALicenseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

