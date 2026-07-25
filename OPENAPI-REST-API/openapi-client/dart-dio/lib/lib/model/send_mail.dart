//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'send_mail.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class SendMail {
  /// Returns a new [SendMail] instance.
  SendMail({

    required  this.to,

    required  this.from,

    required  this.subject,

    required  this.body,
  });

      /// The Contact whom is the primary recipient of this email.
  @JsonKey(
    
    name: r'to',
    required: true,
    includeIfNull: false,
  )


  final String to;



      /// The contact whom is the this email is from.
  @JsonKey(
    
    name: r'from',
    required: true,
    includeIfNull: false,
  )


  final String from;



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




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is SendMail &&
      runtimeType == other.runtimeType &&
      equals(
        [
            to,
            from,
            subject,
            body,
        ],
        [
            other.to,
            other.from,
            other.subject,
            other.body,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        to,
        from,
        subject,
        body,
    ],);

  factory SendMail.fromJson(Map<String, dynamic> json) => _$SendMailFromJson(json);

  Map<String, dynamic> toJson() => _$SendMailToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

