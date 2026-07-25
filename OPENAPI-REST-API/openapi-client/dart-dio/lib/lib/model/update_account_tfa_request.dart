//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'update_account_tfa_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class UpdateAccountTfaRequest {
  /// Returns a new [UpdateAccountTfaRequest] instance.
  UpdateAccountTfaRequest({

    required  this.n2faGoogleCode,
  });

      /// The 6-digit verification code from your authenticator app.
  @JsonKey(
    
    name: r'2fa_google_code',
    required: true,
    includeIfNull: false,
  )


  final String n2faGoogleCode;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is UpdateAccountTfaRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n2faGoogleCode,
        ],
        [
            other.n2faGoogleCode,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n2faGoogleCode,
    ],);

  factory UpdateAccountTfaRequest.fromJson(Map<String, dynamic> json) => _$UpdateAccountTfaRequestFromJson(json);

  Map<String, dynamic> toJson() => _$UpdateAccountTfaRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

