//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'create_filter201_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CreateFilter201Response {
  /// Returns a new [CreateFilter201Response] instance.
  CreateFilter201Response({

    this.success = const Optional.absent(),

    this.text = const Optional.absent(),
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




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is CreateFilter201Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            text,
        ],
        [
            other.success,
            other.text,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        text,
    ],);

  factory CreateFilter201Response.fromJson(Map<String, dynamic> json) => _$CreateFilter201ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CreateFilter201ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

