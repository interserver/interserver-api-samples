//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'patch_oauth_two_factor200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchOauthTwoFactor200Response {
  /// Returns a new [PatchOauthTwoFactor200Response] instance.
  PatchOauthTwoFactor200Response({

    this.login = const Optional.absent(),
  });

      /// Whether the 2FA verification succeeded and the user is now logged in.
  @OptionalConverter()
  @JsonKey(
    
    name: r'login',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> login;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PatchOauthTwoFactor200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            login,
        ],
        [
            other.login,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        login,
    ],);

  factory PatchOauthTwoFactor200Response.fromJson(Map<String, dynamic> json) => _$PatchOauthTwoFactor200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PatchOauthTwoFactor200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

