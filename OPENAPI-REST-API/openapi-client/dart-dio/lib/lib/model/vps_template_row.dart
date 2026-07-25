//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_template_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTemplateRow {
  /// Returns a new [VpsTemplateRow] instance.
  VpsTemplateRow({

    this.templateId = const Optional.absent(),

    this.templateType = const Optional.absent(),

    this.templateOs = const Optional.absent(),

    this.templateVersion = const Optional.absent(),

    this.templateBits = const Optional.absent(),

    this.templateFile = const Optional.absent(),

    this.templateAvailable = const Optional.absent(),

    this.templateName = const Optional.absent(),

    this.templateDir = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'template_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> templateId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'template_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> templateType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'template_os',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> templateOs;



  @OptionalConverter()
  @JsonKey(
    
    name: r'template_version',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> templateVersion;



  @OptionalConverter()
  @JsonKey(
    
    name: r'template_bits',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> templateBits;



  @OptionalConverter()
  @JsonKey(
    
    name: r'template_file',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> templateFile;



  @OptionalConverter()
  @JsonKey(
    
    name: r'template_available',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> templateAvailable;



  @OptionalConverter()
  @JsonKey(
    
    name: r'template_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> templateName;



  @OptionalConverter()
  @JsonKey(
    
    name: r'template_dir',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> templateDir;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTemplateRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            templateId,
            templateType,
            templateOs,
            templateVersion,
            templateBits,
            templateFile,
            templateAvailable,
            templateName,
            templateDir,
        ],
        [
            other.templateId,
            other.templateType,
            other.templateOs,
            other.templateVersion,
            other.templateBits,
            other.templateFile,
            other.templateAvailable,
            other.templateName,
            other.templateDir,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        templateId,
        templateType,
        templateOs,
        templateVersion,
        templateBits,
        templateFile,
        templateAvailable,
        templateName,
        templateDir,
    ],);

  factory VpsTemplateRow.fromJson(Map<String, dynamic> json) => _$VpsTemplateRowFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTemplateRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

