//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/email_address_name.dart';
import 'package:interserver_api/lib/model/mail_attachment.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'send_mail_adv.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SendMailAdv {
  /// Returns a new [SendMailAdv] instance.
  SendMailAdv({

    required  this.subject,

    required  this.body,

    required  this.from,

    required  this.to,

    this.replyto = const Optional.absent(),

    this.cc = const Optional.absent(),

    this.bcc = const Optional.absent(),

    this.attachments = const Optional.absent(),

    this.id = const Optional.absent(),
  });

      /// The subject or title of the email
  @JsonKey(
    
    name: r'subject',
    required: true,
    includeIfNull: false,
  )


  final String subject;



      /// The main email contents.
  @JsonKey(
    
    name: r'body',
    required: true,
    includeIfNull: false,
  )


  final String body;



  @JsonKey(
    
    name: r'from',
    required: true,
    includeIfNull: false,
  )


  final EmailAddressName from;



      /// A list of destionation email addresses to send this to
  @JsonKey(
    
    name: r'to',
    required: true,
    includeIfNull: false,
  )


  final List<EmailAddressName> to;



      /// (optional) A list of email addresses that specify where replies to the email should be sent instead of the _from_ address.
  @OptionalConverter()
  @JsonKey(
    
    name: r'replyto',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<EmailAddressName>?> replyto;



      /// (optional) A list of email addresses to carbon copy this message to.  They are listed on the email and anyone getting the email can see this full list of Contacts who received the email as well.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<EmailAddressName>?> cc;



      /// (optional) list of email addresses that should receive copies of the email.  They are hidden on the email and anyone gettitng the email would not see the other people getting the email in this list.
  @OptionalConverter()
  @JsonKey(
    
    name: r'bcc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<EmailAddressName>?> bcc;



      /// (optional) File attachments to include in the email.  The file contents must be base64 encoded!
  @OptionalConverter()
  @JsonKey(
    
    name: r'attachments',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<MailAttachment>?> attachments;



      /// (optional)  ID of the Mail order within our system to use as the Mail Account.
  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> id;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is SendMailAdv &&
      runtimeType == other.runtimeType &&
      equals(
        [
            subject,
            body,
            from,
            to,
            replyto,
            cc,
            bcc,
            attachments,
            id,
        ],
        [
            other.subject,
            other.body,
            other.from,
            other.to,
            other.replyto,
            other.cc,
            other.bcc,
            other.attachments,
            other.id,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        subject,
        body,
        from,
        to,
        replyto,
        cc,
        bcc,
        attachments,
        id,
    ],);

  factory SendMailAdv.fromJson(Map<String, dynamic> json) => _$SendMailAdvFromJson(json);

  Map<String, dynamic> toJson() => _$SendMailAdvToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

