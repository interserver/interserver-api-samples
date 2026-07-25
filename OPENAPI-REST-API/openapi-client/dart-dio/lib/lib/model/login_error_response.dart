//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'login_error_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginErrorResponse {
  /// Returns a new [LoginErrorResponse] instance.
  LoginErrorResponse({

    this.message = const Optional.absent(),

    this.field = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'message',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> message;



  @OptionalConverter()
  @JsonKey(
    
    name: r'field',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> field;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LoginErrorResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            message,
            field,
        ],
        [
            other.message,
            other.field,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        message,
        field,
    ],);

  factory LoginErrorResponse.fromJson(Map<String, dynamic> json) => _$LoginErrorResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginErrorResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

