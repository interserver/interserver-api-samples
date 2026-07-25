//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/login_submission_example_g_recaptcha_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'login_submission_example.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginSubmissionExample {
  /// Returns a new [LoginSubmissionExample] instance.
  LoginSubmissionExample({

    required  this.login,

    required  this.passwd,

    this.remember = const Optional.absent(),

    this.gRecaptchaResponse = const Optional.absent(),

    this.tfa = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'login',
    required: true,
    includeIfNull: false,
  )


  final String login;



  @JsonKey(
    
    name: r'passwd',
    required: true,
    includeIfNull: false,
  )


  final String passwd;



  @OptionalConverter()
  @JsonKey(
    
    name: r'remember',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> remember;



  @OptionalConverter()
  @JsonKey(
    
    name: r'g-recaptcha-response',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<LoginSubmissionExampleGRecaptchaResponse?> gRecaptchaResponse;



      /// Two Factor Authentication Response.
  @OptionalConverter()
  @JsonKey(
    
    name: r'tfa',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> tfa;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LoginSubmissionExample &&
      runtimeType == other.runtimeType &&
      equals(
        [
            login,
            passwd,
            remember,
            gRecaptchaResponse,
            tfa,
        ],
        [
            other.login,
            other.passwd,
            other.remember,
            other.gRecaptchaResponse,
            other.tfa,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        login,
        passwd,
        remember,
        gRecaptchaResponse,
        tfa,
    ],);

  factory LoginSubmissionExample.fromJson(Map<String, dynamic> json) => _$LoginSubmissionExampleFromJson(json);

  Map<String, dynamic> toJson() => _$LoginSubmissionExampleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

