//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'login_success_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginSuccessResponse {
  /// Returns a new [LoginSuccessResponse] instance.
  LoginSuccessResponse({

    this.sessionId = const Optional.absent(),

    this.accountId = const Optional.absent(),

    this.accountLid = const Optional.absent(),

    this.ima = const Optional.absent(),

    this.gravatar = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'sessionId',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sessionId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'account_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> accountId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'account_lid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> accountLid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ima',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ima;



  @OptionalConverter()
  @JsonKey(
    
    name: r'gravatar',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> gravatar;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LoginSuccessResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            sessionId,
            accountId,
            accountLid,
            ima,
            gravatar,
        ],
        [
            other.sessionId,
            other.accountId,
            other.accountLid,
            other.ima,
            other.gravatar,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        sessionId,
        accountId,
        accountLid,
        ima,
        gravatar,
    ],);

  factory LoginSuccessResponse.fromJson(Map<String, dynamic> json) => _$LoginSuccessResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginSuccessResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

