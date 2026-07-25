//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_delist_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailDelistRequest {
  /// Returns a new [MailDelistRequest] instance.
  MailDelistRequest({

    this.unblock = const Optional.absent(),
  });

      /// Email address to delist.
  @OptionalConverter()
  @JsonKey(
    
    name: r'unblock',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> unblock;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailDelistRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            unblock,
        ],
        [
            other.unblock,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        unblock,
    ],);

  factory MailDelistRequest.fromJson(Map<String, dynamic> json) => _$MailDelistRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MailDelistRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

