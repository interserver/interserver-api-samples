//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/domain_all_info_attributes.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'domain_all_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DomainAllInfo {
  /// Returns a new [DomainAllInfo] instance.
  DomainAllInfo({

    this.oPSVersion = const Optional.absent(),

    this.attributes = const Optional.absent(),

    this.object = const Optional.absent(),

    this.protocol = const Optional.absent(),

    this.responseText = const Optional.absent(),

    this.responseCode = const Optional.absent(),

    this.action = const Optional.absent(),

    this.isSuccess = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'_OPS_version',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> oPSVersion;



  @OptionalConverter()
  @JsonKey(
    
    name: r'attributes',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<DomainAllInfoAttributes?> attributes;



  @OptionalConverter()
  @JsonKey(
    
    name: r'object',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> object;



  @OptionalConverter()
  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> protocol;



  @OptionalConverter()
  @JsonKey(
    
    name: r'response_text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> responseText;



  @OptionalConverter()
  @JsonKey(
    
    name: r'response_code',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> responseCode;



  @OptionalConverter()
  @JsonKey(
    
    name: r'action',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> action;



  @OptionalConverter()
  @JsonKey(
    
    name: r'is_success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> isSuccess;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DomainAllInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            oPSVersion,
            attributes,
            object,
            protocol,
            responseText,
            responseCode,
            action,
            isSuccess,
        ],
        [
            other.oPSVersion,
            other.attributes,
            other.object,
            other.protocol,
            other.responseText,
            other.responseCode,
            other.action,
            other.isSuccess,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        oPSVersion,
        attributes,
        object,
        protocol,
        responseText,
        responseCode,
        action,
        isSuccess,
    ],);

  factory DomainAllInfo.fromJson(Map<String, dynamic> json) => _$DomainAllInfoFromJson(json);

  Map<String, dynamic> toJson() => _$DomainAllInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

