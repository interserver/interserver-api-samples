//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'ticket_details.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketDetails {
  /// Returns a new [TicketDetails] instance.
  TicketDetails({

    this.ticketid = const Optional.absent(),

    this.ticketmaskid = const Optional.absent(),

    this.department = const Optional.absent(),

    this.status = const Optional.absent(),

    this.priority = const Optional.absent(),

    this.subject = const Optional.absent(),

    this.createdOn = const Optional.absent(),

    this.updatedOn = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'ticketid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> ticketid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ticketmaskid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ticketmaskid;



  @OptionalConverter()
  @JsonKey(
    
    name: r'department',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> department;



  @OptionalConverter()
  @JsonKey(
    
    name: r'status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> status;



  @OptionalConverter()
  @JsonKey(
    
    name: r'priority',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> priority;



  @OptionalConverter()
  @JsonKey(
    
    name: r'subject',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> subject;



  @OptionalConverter()
  @JsonKey(
    
    name: r'created_on',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> createdOn;



  @OptionalConverter()
  @JsonKey(
    
    name: r'updated_on',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> updatedOn;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TicketDetails &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ticketid,
            ticketmaskid,
            department,
            status,
            priority,
            subject,
            createdOn,
            updatedOn,
        ],
        [
            other.ticketid,
            other.ticketmaskid,
            other.department,
            other.status,
            other.priority,
            other.subject,
            other.createdOn,
            other.updatedOn,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ticketid,
        ticketmaskid,
        department,
        status,
        priority,
        subject,
        createdOn,
        updatedOn,
    ],);

  factory TicketDetails.fromJson(Map<String, dynamic> json) => _$TicketDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$TicketDetailsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

