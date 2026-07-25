//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:time_machine/time_machine.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_block_click_house.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailBlockClickHouse {
  /// Returns a new [MailBlockClickHouse] instance.
  MailBlockClickHouse({

    required  this.date,

    required  this.from,

    required  this.messageId,

    required  this.subject,

    required  this.to,
  });

  @JsonKey(
    
    name: r'date',
    required: true,
    includeIfNull: false,
  )


  final OffsetDate date;



  @JsonKey(
    
    name: r'from',
    required: true,
    includeIfNull: false,
  )


  final String from;



  @JsonKey(
    
    name: r'messageId',
    required: true,
    includeIfNull: false,
  )


  final String messageId;



  @JsonKey(
    
    name: r'subject',
    required: true,
    includeIfNull: false,
  )


  final String subject;



  @JsonKey(
    
    name: r'to',
    required: true,
    includeIfNull: false,
  )


  final String to;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailBlockClickHouse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            date,
            from,
            messageId,
            subject,
            to,
        ],
        [
            other.date,
            other.from,
            other.messageId,
            other.subject,
            other.to,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        date,
        from,
        messageId,
        subject,
        to,
    ],);

  factory MailBlockClickHouse.fromJson(Map<String, dynamic> json) => _$MailBlockClickHouseFromJson(json);

  Map<String, dynamic> toJson() => _$MailBlockClickHouseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

