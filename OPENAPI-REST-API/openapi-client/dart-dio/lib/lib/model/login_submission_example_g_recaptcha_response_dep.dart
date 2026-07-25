//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'login_submission_example_g_recaptcha_response_dep.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginSubmissionExampleGRecaptchaResponseDep {
  /// Returns a new [LoginSubmissionExampleGRecaptchaResponseDep] instance.
  LoginSubmissionExampleGRecaptchaResponseDep({

    this.w = const Optional.absent(),

    this.n = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'w',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> w;



  @OptionalConverter()
  @JsonKey(
    
    name: r'n',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> n;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LoginSubmissionExampleGRecaptchaResponseDep &&
      runtimeType == other.runtimeType &&
      equals(
        [
            w,
            n,
        ],
        [
            other.w,
            other.n,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        w,
        n,
    ],);

  factory LoginSubmissionExampleGRecaptchaResponseDep.fromJson(Map<String, dynamic> json) => _$LoginSubmissionExampleGRecaptchaResponseDepFromJson(json);

  Map<String, dynamic> toJson() => _$LoginSubmissionExampleGRecaptchaResponseDepToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

