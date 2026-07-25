//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_plesk_license.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsPleskLicense {
  /// Returns a new [VpsPleskLicense] instance.
  VpsPleskLicense({

    this.id = const Optional.absent(),

    this.name = const Optional.absent(),

    this.subName = const Optional.absent(),

    this.cost = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> id;



  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



  @OptionalConverter()
  @JsonKey(
    
    name: r'sub_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> subName;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> cost;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsPleskLicense &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            name,
            subName,
            cost,
        ],
        [
            other.id,
            other.name,
            other.subName,
            other.cost,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        name,
        subName,
        cost,
    ],);

  factory VpsPleskLicense.fromJson(Map<String, dynamic> json) => _$VpsPleskLicenseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsPleskLicenseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

