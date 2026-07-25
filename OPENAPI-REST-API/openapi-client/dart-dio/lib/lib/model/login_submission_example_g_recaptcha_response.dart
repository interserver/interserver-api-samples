//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/login_submission_example_g_recaptcha_response_dep.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'login_submission_example_g_recaptcha_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginSubmissionExampleGRecaptchaResponse {
  /// Returns a new [LoginSubmissionExampleGRecaptchaResponse] instance.
  LoginSubmissionExampleGRecaptchaResponse({

    this.vIsShallow = const Optional.absent(),

    this.dep = const Optional.absent(),

    this.vIsRef = const Optional.absent(),

    this.rawValue = const Optional.absent(),

    this.value = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'__v_isShallow',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> vIsShallow;



  @OptionalConverter()
  @JsonKey(
    
    name: r'dep',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<LoginSubmissionExampleGRecaptchaResponseDep?> dep;



  @OptionalConverter()
  @JsonKey(
    
    name: r'__v_isRef',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> vIsRef;



  @OptionalConverter()
  @JsonKey(
    
    name: r'_rawValue',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> rawValue;



  @OptionalConverter()
  @JsonKey(
    
    name: r'_value',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> value;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LoginSubmissionExampleGRecaptchaResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            vIsShallow,
            dep,
            vIsRef,
            rawValue,
            value,
        ],
        [
            other.vIsShallow,
            other.dep,
            other.vIsRef,
            other.rawValue,
            other.value,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        vIsShallow,
        dep,
        vIsRef,
        rawValue,
        value,
    ],);

  factory LoginSubmissionExampleGRecaptchaResponse.fromJson(Map<String, dynamic> json) => _$LoginSubmissionExampleGRecaptchaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$LoginSubmissionExampleGRecaptchaResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

