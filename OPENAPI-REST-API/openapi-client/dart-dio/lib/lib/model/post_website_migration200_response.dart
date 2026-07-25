//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'post_website_migration200_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class PostWebsiteMigration200Response {
  /// Returns a new [PostWebsiteMigration200Response] instance.
  PostWebsiteMigration200Response({

    this.text = const Optional.absent(),

    this.ticket = const Optional.absent(),
  });

      /// Confirmation message.
  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



      /// The support ticket ID created for tracking the migration. Use this with `/tickets/{id}` to check migration progress.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ticket',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> ticket;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is PostWebsiteMigration200Response &&
      runtimeType == other.runtimeType &&
      equals(
        [
            text,
            ticket,
        ],
        [
            other.text,
            other.ticket,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        text,
        ticket,
    ],);

  factory PostWebsiteMigration200Response.fromJson(Map<String, dynamic> json) => _$PostWebsiteMigration200ResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PostWebsiteMigration200ResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

