//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'reply_ticket_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ReplyTicketRequest {
  /// Returns a new [ReplyTicketRequest] instance.
  ReplyTicketRequest({

    this.content = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'content',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> content;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ReplyTicketRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            content,
        ],
        [
            other.content,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        content,
    ],);

  factory ReplyTicketRequest.fromJson(Map<String, dynamic> json) => _$ReplyTicketRequestFromJson(json);

  Map<String, dynamic> toJson() => _$ReplyTicketRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

