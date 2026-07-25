//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/login_service_counts.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'login_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class LoginInfo {
  /// Returns a new [LoginInfo] instance.
  LoginInfo({

    required  this.captcha,

    required  this.counts,

    this.logo = const Optional.absent(),

    this.language = const Optional.absent(),
  });

      /// A base64 encoded image to use for rendering the alternateive captcha.
  @JsonKey(
    
    name: r'captcha',
    required: true,
    includeIfNull: false,
  )


  final String captcha;



  @JsonKey(
    
    name: r'counts',
    required: true,
    includeIfNull: false,
  )


  final LoginServiceCounts counts;



      /// A logo image url.
  @OptionalConverter()
  @JsonKey(
    
    name: r'logo',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> logo;



      /// The desired langauge to render the site with.
  @OptionalConverter()
  @JsonKey(
    
    name: r'language',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> language;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is LoginInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            captcha,
            counts,
            logo,
            language,
        ],
        [
            other.captcha,
            other.counts,
            other.logo,
            other.language,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        captcha,
        counts,
        logo,
        language,
    ],);

  factory LoginInfo.fromJson(Map<String, dynamic> json) => _$LoginInfoFromJson(json);

  Map<String, dynamic> toJson() => _$LoginInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

