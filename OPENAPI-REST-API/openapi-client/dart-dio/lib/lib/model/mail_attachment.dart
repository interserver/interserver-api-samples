//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_attachment.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailAttachment {
  /// Returns a new [MailAttachment] instance.
  MailAttachment({

    required  this.filename,

    required  this.data,
  });

      /// The filename of the attached file.
  @JsonKey(
    
    name: r'filename',
    required: true,
    includeIfNull: false,
  )


  final String filename;



      /// The file contents base64 encoded
  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final String data;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailAttachment &&
      runtimeType == other.runtimeType &&
      equals(
        [
            filename,
            data,
        ],
        [
            other.filename,
            other.data,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        filename,
        data,
    ],);

  factory MailAttachment.fromJson(Map<String, dynamic> json) => _$MailAttachmentFromJson(json);

  Map<String, dynamic> toJson() => _$MailAttachmentToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

