//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_block_rspamd.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailBlockRspamd {
  /// Returns a new [MailBlockRspamd] instance.
  MailBlockRspamd({

    required  this.from,

    required  this.subject,
  });

  @JsonKey(
    
    name: r'from',
    required: true,
    includeIfNull: false,
  )


  final String from;



  @JsonKey(
    
    name: r'subject',
    required: true,
    includeIfNull: false,
  )


  final String subject;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailBlockRspamd &&
      runtimeType == other.runtimeType &&
      equals(
        [
            from,
            subject,
        ],
        [
            other.from,
            other.subject,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        from,
        subject,
    ],);

  factory MailBlockRspamd.fromJson(Map<String, dynamic> json) => _$MailBlockRspamdFromJson(json);

  Map<String, dynamic> toJson() => _$MailBlockRspamdToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

