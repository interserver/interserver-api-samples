//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/ticket_custom_field_details.dart';
import 'package:interserver_api/lib/model/ticket_details.dart';
import 'package:interserver_api/lib/model/ticket_post_details.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'view_ticket_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ViewTicketResponse {
  /// Returns a new [ViewTicketResponse] instance.
  ViewTicketResponse({

    required  this.success,

    required  this.ticket,

    this.ticketCustomFields = const Optional.absent(),

    this.ticketPosts = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'success',
    required: true,
    includeIfNull: false,
  )


  final bool success;



  @JsonKey(
    
    name: r'ticket',
    required: true,
    includeIfNull: false,
  )


  final TicketDetails ticket;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ticket_custom_fields',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<TicketCustomFieldDetails?> ticketCustomFields;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ticket_posts',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<TicketPostDetails?> ticketPosts;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ViewTicketResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            success,
            ticket,
            ticketCustomFields,
            ticketPosts,
        ],
        [
            other.success,
            other.ticket,
            other.ticketCustomFields,
            other.ticketPosts,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        success,
        ticket,
        ticketCustomFields,
        ticketPosts,
    ],);

  factory ViewTicketResponse.fromJson(Map<String, dynamic> json) => _$ViewTicketResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ViewTicketResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

