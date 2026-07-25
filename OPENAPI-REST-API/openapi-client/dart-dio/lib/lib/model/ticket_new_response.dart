//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'ticket_new_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketNewResponse {
  /// Returns a new [TicketNewResponse] instance.
  TicketNewResponse({

    required  this.text,

    required  this.success,

    this.ticketId = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'text',
    required: true,
    includeIfNull: false,
  )


  final String text;



  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false,
  )


  final bool success;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ticket_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> ticketId;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TicketNewResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            text,
            success,
            ticketId,
        ],
        [
            other.text,
            other.success,
            other.ticketId,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        text,
        success,
        ticketId,
    ],);

  factory TicketNewResponse.fromJson(Map<String, dynamic> json) => _$TicketNewResponseFromJson(json);

  Map<String, dynamic> toJson() => _$TicketNewResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

