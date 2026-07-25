//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'post_oauth_callback_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostOauthCallbackRequest {
  /// Returns a new [PostOauthCallbackRequest] instance.
  PostOauthCallbackRequest({

    this.provider = const Optional.absent(),
  });

      /// The OAuth provider name (e.g. `Google`).
  @OptionalConverter()
  @JsonKey(
    
    name: r'provider',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> provider;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PostOauthCallbackRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            provider,
        ],
        [
            other.provider,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        provider,
    ],);

  factory PostOauthCallbackRequest.fromJson(Map<String, dynamic> json) => _$PostOauthCallbackRequestFromJson(json);

  Map<String, dynamic> toJson() => _$PostOauthCallbackRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

