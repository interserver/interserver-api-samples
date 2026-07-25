//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'get_account_tfa_setup200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class GetAccountTfaSetup200Response {
  /// Returns a new [GetAccountTfaSetup200Response] instance.
  GetAccountTfaSetup200Response({

    this.n2faGoogleKey = const Optional.absent(),

    this.n2faGoogleSplit = const Optional.absent(),
  });

      /// Base64-encoded secret key for TOTP setup.
  @OptionalConverter()
  @JsonKey(
    
    name: r'2fa_google_key',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n2faGoogleKey;



      /// Human-readable formatted key (chunks of 4 characters).
  @OptionalConverter()
  @JsonKey(
    
    name: r'2fa_google_split',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n2faGoogleSplit;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is GetAccountTfaSetup200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n2faGoogleKey,
            n2faGoogleSplit,
        ],
        [
            other.n2faGoogleKey,
            other.n2faGoogleSplit,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n2faGoogleKey,
        n2faGoogleSplit,
    ],);

  factory GetAccountTfaSetup200Response.fromJson(Map<String, dynamic> json) => _$GetAccountTfaSetup200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAccountTfaSetup200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

