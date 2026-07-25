//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'post_oauth_callback200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostOauthCallback200Response {
  /// Returns a new [PostOauthCallback200Response] instance.
  PostOauthCallback200Response({

    this.login = const Optional.absent(),

    this.signup = const Optional.absent(),

    this.linked = const Optional.absent(),

    this.accountId = const Optional.absent(),

    this.errorCode = const Optional.absent(),
  });

      /// Whether the user was logged in to an existing account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'login',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> login;



      /// Whether a new account was created.
  @OptionalConverter()
  @JsonKey(
    
    name: r'signup',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> signup;



      /// Whether the OAuth provider was linked to an existing account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'linked',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> linked;



      /// The account ID associated with the OAuth login.
  @OptionalConverter()
  @JsonKey(
    
    name: r'account_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> accountId;



      /// Error code if additional verification is needed (e.g. `2fa_required`).
  @OptionalConverter()
  @JsonKey(
    
    name: r'error_code',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> errorCode;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PostOauthCallback200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            login,
            signup,
            linked,
            accountId,
            errorCode,
        ],
        [
            other.login,
            other.signup,
            other.linked,
            other.accountId,
            other.errorCode,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        login,
        signup,
        linked,
        accountId,
        errorCode,
    ],);

  factory PostOauthCallback200Response.fromJson(Map<String, dynamic> json) => _$PostOauthCallback200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostOauthCallback200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

