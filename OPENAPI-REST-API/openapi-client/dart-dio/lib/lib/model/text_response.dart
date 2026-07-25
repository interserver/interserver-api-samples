//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'text_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TextResponse {
  /// Returns a new [TextResponse] instance.
  TextResponse({

    this.text = const Optional.absent(),

    this.message = const Optional.absent(),
  });

      /// Response text
  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



      /// Response message
  @OptionalConverter()
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> message;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TextResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            text,
            message,
        ],
        [
            other.text,
            other.message,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        text,
        message,
    ],);

  factory TextResponse.fromJson(Map<String, dynamic> json) => _$TextResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TextResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

