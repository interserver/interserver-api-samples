//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_log_entry.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailLogEntry {
  /// Returns a new [MailLogEntry] instance.
  MailLogEntry({

    required  this.id,

    required  this.id,

    required  this.from,

    required  this.to,

    required  this.created,

    required  this.time,

    required  this.user,

    required  this.transtype,

    required  this.origin,

    required  this.interface_,

    this.subject = const Optional.absent(),

    this.messageId = const Optional.absent(),

    this.sendingZone = const Optional.absent(),

    this.bodySize = const Optional.absent(),

    this.seq = const Optional.absent(),

    this.delivered = const Optional.absent(),

    this.code = const Optional.absent(),

    this.recipient = const Optional.absent(),

    this.response = const Optional.absent(),

    this.domain = const Optional.absent(),

    this.locked = const Optional.absent(),

    this.lockTime = const Optional.absent(),

    this.assigned = const Optional.absent(),

    this.queued = const Optional.absent(),

    this.mxHostname = const Optional.absent(),
  });

      /// Internal auto-increment database row ID.
  @JsonKey(
    
    name: r'_id',
    required: true,
    includeIfNull: false,
  )


  final int id;



      /// The relay-assigned mail ID (18-19 hex characters).  Matches the `mailid` filter parameter and the `text` value returned by send endpoints.
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final String id;



      /// SMTP envelope `MAIL FROM` address.
  @JsonKey(
    
    name: r'from',
    required: true,
    includeIfNull: false,
  )


  final String from;



      /// SMTP envelope `RCPT TO` address.
  @JsonKey(
    
    name: r'to',
    required: true,
    includeIfNull: false,
  )


  final String to;



      /// Human-readable creation timestamp in `YYYY-MM-DD HH:MM:SS` format.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final String created;



      /// Unix timestamp of message acceptance.  Corresponds to the `startDate` and `endDate` filter parameters.
  @JsonKey(
    
    name: r'time',
    required: true,
    includeIfNull: false,
  )


  final int time;



      /// The SMTP AUTH username used to submit the message (e.g. `mb5658`).
  @JsonKey(
    
    name: r'user',
    required: true,
    includeIfNull: false,
  )


  final String user;



      /// SMTP transaction type negotiated with the relay.
  @JsonKey(
    
    name: r'transtype',
    required: true,
    includeIfNull: false,
  )


  final String transtype;



      /// IP address of the client that submitted the message to the relay.
  @JsonKey(
    
    name: r'origin',
    required: true,
    includeIfNull: false,
  )


  final String origin;



      /// Relay interface name that accepted the message.
  @JsonKey(
    
    name: r'interface',
    required: true,
    includeIfNull: false,
  )


  final String interface_;



      /// The `Subject` header value.  MIME-encoded subjects (UTF-8, ISO-8859, US-ASCII) are automatically decoded.
  @OptionalConverter()
  @JsonKey(
    
    name: r'subject',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> subject;



      /// The `Message-ID` header value.  Can be used with the `messageId` filter for subsequent lookups.
  @OptionalConverter()
  @JsonKey(
    
    name: r'messageId',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> messageId;



      /// The sending zone assigned by the relay for outbound delivery.
  @OptionalConverter()
  @JsonKey(
    
    name: r'sendingZone',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> sendingZone;



      /// Size of the message body in bytes.
  @OptionalConverter()
  @JsonKey(
    
    name: r'bodySize',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> bodySize;



      /// Sequence index of this recipient in a multi-recipient message. Starts at 1.
  @OptionalConverter()
  @JsonKey(
    
    name: r'seq',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> seq;



      /// Delivery status flag.  `1` = successfully delivered to destination MX. `0` = queued, deferred, or failed.  `null` = delivery not yet attempted.
  @OptionalConverter()
  @JsonKey(
    
    name: r'delivered',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> delivered;



      /// The SMTP response code from the destination MX server (e.g. `250`).
  @OptionalConverter()
  @JsonKey(
    
    name: r'code',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> code;



      /// The specific recipient address this delivery record is for.
  @OptionalConverter()
  @JsonKey(
    
    name: r'recipient',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> recipient;



      /// The full SMTP response string received from the destination MX server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'response',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> response;



      /// The destination domain for this delivery attempt.
  @OptionalConverter()
  @JsonKey(
    
    name: r'domain',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> domain;



      /// Whether the queue entry is currently locked for delivery processing.
  @OptionalConverter()
  @JsonKey(
    
    name: r'locked',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> locked;



      /// Millisecond-precision timestamp of the last queue lock acquisition.
  @OptionalConverter()
  @JsonKey(
    
    name: r'lockTime',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> lockTime;



      /// The relay server node assigned to deliver this message.
  @OptionalConverter()
  @JsonKey(
    
    name: r'assigned',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> assigned;



      /// ISO 8601 timestamp when the message was placed into the delivery queue.
  @OptionalConverter()
  @JsonKey(
    
    name: r'queued',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> queued;



      /// The MX hostname the relay connected to for delivery.  Corresponds to the `mx` filter parameter.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mxHostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mxHostname;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailLogEntry &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            id,
            from,
            to,
            created,
            time,
            user,
            transtype,
            origin,
            interface_,
            subject,
            messageId,
            sendingZone,
            bodySize,
            seq,
            delivered,
            code,
            recipient,
            response,
            domain,
            locked,
            lockTime,
            assigned,
            queued,
            mxHostname,
        ],
        [
            other.id,
            other.id,
            other.from,
            other.to,
            other.created,
            other.time,
            other.user,
            other.transtype,
            other.origin,
            other.interface_,
            other.subject,
            other.messageId,
            other.sendingZone,
            other.bodySize,
            other.seq,
            other.delivered,
            other.code,
            other.recipient,
            other.response,
            other.domain,
            other.locked,
            other.lockTime,
            other.assigned,
            other.queued,
            other.mxHostname,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        id,
        from,
        to,
        created,
        time,
        user,
        transtype,
        origin,
        interface_,
        subject,
        messageId,
        sendingZone,
        bodySize,
        seq,
        delivered,
        code,
        recipient,
        response,
        domain,
        locked,
        lockTime,
        assigned,
        queued,
        mxHostname,
    ],);

  factory MailLogEntry.fromJson(Map<String, dynamic> json) => _$MailLogEntryFromJson(json);

  Map<String, dynamic> toJson() => _$MailLogEntryToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

