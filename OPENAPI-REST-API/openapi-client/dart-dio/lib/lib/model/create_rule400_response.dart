//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'create_rule400_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateRule400Response {
  /// Returns a new [CreateRule400Response] instance.
  CreateRule400Response({

    this.success = const Optional.absent(),

    this.text = const Optional.absent(),

    this.errors = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;



  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



  @OptionalConverter()
  @JsonKey(
    
    name: r'errors',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<String>?> errors;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is CreateRule400Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            text,
            errors,
        ],
        [
            other.success,
            other.text,
            other.errors,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        text,
        errors,
    ],);

  factory CreateRule400Response.fromJson(Map<String, dynamic> json) => _$CreateRule400ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateRule400ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

