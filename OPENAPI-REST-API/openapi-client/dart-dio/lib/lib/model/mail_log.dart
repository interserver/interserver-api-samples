//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/mail_log_entry.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_log.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailLog {
  /// Returns a new [MailLog] instance.
  MailLog({

    required  this.total,

    required  this.skip,

    required  this.limit,

    required  this.emails,
  });

      /// Total number of log entries that match the supplied filters, regardless of `skip` and `limit`.  Reflects the `groupby` mode.
  @JsonKey(
    
    name: r'total',
    required: true,
    includeIfNull: false,
  )


  final int total;



      /// The `skip` value used for this page (echoed from the request).
  @JsonKey(
    
    name: r'skip',
    required: true,
    includeIfNull: false,
  )


  final int skip;



      /// The `limit` value used for this page (echoed from the request).
  @JsonKey(
    
    name: r'limit',
    required: true,
    includeIfNull: false,
  )


  final int limit;



  @JsonKey(
    
    name: r'emails',
    required: true,
    includeIfNull: false,
  )


  final List<MailLogEntry> emails;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailLog &&
      runtimeType == other.runtimeType &&
      equals(
        [
            total,
            skip,
            limit,
            emails,
        ],
        [
            other.total,
            other.skip,
            other.limit,
            other.emails,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        total,
        skip,
        limit,
        emails,
    ],);

  factory MailLog.fromJson(Map<String, dynamic> json) => _$MailLogFromJson(json);

  Map<String, dynamic> toJson() => _$MailLogToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

