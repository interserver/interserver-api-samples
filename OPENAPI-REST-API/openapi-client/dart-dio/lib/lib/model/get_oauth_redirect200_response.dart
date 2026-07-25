//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_oauth_redirect200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetOauthRedirect200Response {
  /// Returns a new [GetOauthRedirect200Response] instance.
  GetOauthRedirect200Response({

    this.redirectUrl = const Optional.absent(),
  });

      /// The URL to redirect the user to for OAuth authentication.
  @OptionalConverter()
  @JsonKey(
    
    name: r'redirect_url',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> redirectUrl;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetOauthRedirect200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            redirectUrl,
        ],
        [
            other.redirectUrl,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        redirectUrl,
    ],);

  factory GetOauthRedirect200Response.fromJson(Map<String, dynamic> json) => _$GetOauthRedirect200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetOauthRedirect200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

