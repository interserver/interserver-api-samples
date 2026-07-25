//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'patch_oauth_two_factor_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PatchOauthTwoFactorRequest {
  /// Returns a new [PatchOauthTwoFactorRequest] instance.
  PatchOauthTwoFactorRequest({

    required  this.accountId,

    required  this.code,
  });

      /// The account ID returned from the POST callback.
  @JsonKey(
    
    name: r'account_id',
    required: true,
    includeIfNull: false,
  )


  final int accountId;



      /// The 6-digit two-factor authentication code.
  @JsonKey(
    
    name: r'code',
    required: true,
    includeIfNull: false,
  )


  final String code;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PatchOauthTwoFactorRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            accountId,
            code,
        ],
        [
            other.accountId,
            other.code,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        accountId,
        code,
    ],);

  factory PatchOauthTwoFactorRequest.fromJson(Map<String, dynamic> json) => _$PatchOauthTwoFactorRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PatchOauthTwoFactorRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

