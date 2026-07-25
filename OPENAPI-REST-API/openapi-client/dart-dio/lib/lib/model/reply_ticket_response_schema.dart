//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'reply_ticket_response_schema.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReplyTicketResponseSchema {
  /// Returns a new [ReplyTicketResponseSchema] instance.
  ReplyTicketResponseSchema({

    this.success = const Optional.absent(),

    this.postId = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'success',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<bool?> success;



  @OptionalConverter()
  @JsonKey(
    
    name: r'post_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> postId;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ReplyTicketResponseSchema &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            postId,
        ],
        [
            other.success,
            other.postId,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        postId,
    ],);

  factory ReplyTicketResponseSchema.fromJson(Map<String, dynamic> json) => _$ReplyTicketResponseSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$ReplyTicketResponseSchemaToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

