//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'tickets_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketsRow {
  /// Returns a new [TicketsRow] instance.
  TicketsRow({

    required  this.title,

    required  this.ticketmaskid,

    required  this.lastreplier,

    required  this.status,

    required  this.priority,

    required  this.totalReplies,

    required  this.lastactivity,

    required  this.departmenttitle,

    required  this.ticketid,

    required  this.canClose,

    required  this.attachments,

    required  this.statusText,

    required  this.checked,
  });

  @JsonKey(
    
    name: r'title',
    required: true,
    includeIfNull: false,
  )


  final String title;



  @JsonKey(
    
    name: r'ticketmaskid',
    required: true,
    includeIfNull: false,
  )


  final String ticketmaskid;



  @JsonKey(
    
    name: r'lastreplier',
    required: true,
    includeIfNull: false,
  )


  final String lastreplier;



  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final String status;



  @JsonKey(
    
    name: r'priority',
    required: true,
    includeIfNull: false,
  )


  final String priority;



  @JsonKey(
    
    name: r'total_replies',
    required: true,
    includeIfNull: false,
  )


  final int totalReplies;



  @JsonKey(
    
    name: r'lastactivity',
    required: true,
    includeIfNull: false,
  )


  final String lastactivity;



  @JsonKey(
    
    name: r'departmenttitle',
    required: true,
    includeIfNull: false,
  )


  final String departmenttitle;



  @JsonKey(
    
    name: r'ticketid',
    required: true,
    includeIfNull: false,
  )


  final int ticketid;



  @JsonKey(
    
    name: r'can_close',
    required: true,
    includeIfNull: false,
  )


  final String canClose;



  @JsonKey(
    
    name: r'attachments',
    required: true,
    includeIfNull: true,
  )


  final Object? attachments;



  @JsonKey(
    
    name: r'status_text',
    required: true,
    includeIfNull: false,
  )


  final String statusText;



  @JsonKey(
    
    name: r'checked',
    required: true,
    includeIfNull: false,
  )


  final bool checked;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TicketsRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            title,
            ticketmaskid,
            lastreplier,
            status,
            priority,
            totalReplies,
            lastactivity,
            departmenttitle,
            ticketid,
            canClose,
            attachments,
            statusText,
            checked,
        ],
        [
            other.title,
            other.ticketmaskid,
            other.lastreplier,
            other.status,
            other.priority,
            other.totalReplies,
            other.lastactivity,
            other.departmenttitle,
            other.ticketid,
            other.canClose,
            other.attachments,
            other.statusText,
            other.checked,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        title,
        ticketmaskid,
        lastreplier,
        status,
        priority,
        totalReplies,
        lastactivity,
        departmenttitle,
        ticketid,
        canClose,
        attachments,
        statusText,
        checked,
    ],);

  factory TicketsRow.fromJson(Map<String, dynamic> json) => _$TicketsRowFromJson(json);

  Map<String, dynamic> toJson() => _$TicketsRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

