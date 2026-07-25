//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'captcha_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class CaptchaResponse {
  /// Returns a new [CaptchaResponse] instance.
  CaptchaResponse({

    required  this.captcha,
  });

      /// The base64 encoded captcha image.
  @JsonKey(
    
    name: r'captcha',
    required: true,
    includeIfNull: false,
  )


  final String captcha;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is CaptchaResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            captcha,
        ],
        [
            other.captcha,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        captcha,
    ],);

  factory CaptchaResponse.fromJson(Map<String, dynamic> json) => _$CaptchaResponseFromJson(json);

  Map<String, dynamic> toJson() => _$CaptchaResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

