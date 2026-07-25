//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'success_text_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SuccessTextResponse {
  /// Returns a new [SuccessTextResponse] instance.
  SuccessTextResponse({

    required  this.success,

    this.text = const Optional.absent(),

    this.action = const Optional.absent(),
  });

      /// Indicates whether or not the command was successful or not.
  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false,
  )


  final bool success;



      /// Text associated with the response.
  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



      /// Optional Action relating to the response.
  @OptionalConverter()
  @JsonKey(
    
    name: r'action',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> action;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is SuccessTextResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            text,
            action,
        ],
        [
            other.success,
            other.text,
            other.action,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        text,
        action,
    ],);

  factory SuccessTextResponse.fromJson(Map<String, dynamic> json) => _$SuccessTextResponseFromJson(json);

  Map<String, dynamic> toJson() => _$SuccessTextResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

