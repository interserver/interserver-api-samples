//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'ticket_post_details_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class TicketPostDetailsInner {
  /// Returns a new [TicketPostDetailsInner] instance.
  TicketPostDetailsInner({

    this.postId = const Optional.absent(),

    this.date = const Optional.absent(),

    this.contents = const Optional.absent(),

    this.creator = const Optional.absent(),

    this.creatorEmail = const Optional.absent(),

    this.creatorName = const Optional.absent(),

    this.hasattachments = const Optional.absent(),

    this.attachmentDownload = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'post_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> postId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> date;



  @OptionalConverter()
  @JsonKey(
    
    name: r'contents',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> contents;



  @OptionalConverter()
  @JsonKey(
    
    name: r'creator',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  unknownEnumValue: Optional<TicketPostDetailsInnerCreatorEnum?>.unknownDefaultOpenApi,
  )


  final Optional<TicketPostDetailsInnerCreatorEnum?> creator;



  @OptionalConverter()
  @JsonKey(
    
    name: r'creator_email',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> creatorEmail;



  @OptionalConverter()
  @JsonKey(
    
    name: r'creator_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> creatorName;



  @OptionalConverter()
  @JsonKey(
    
    name: r'hasattachments',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> hasattachments;



  @OptionalConverter()
  @JsonKey(
    
    name: r'attachment_download',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> attachmentDownload;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is TicketPostDetailsInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            postId,
            date,
            contents,
            creator,
            creatorEmail,
            creatorName,
            hasattachments,
            attachmentDownload,
        ],
        [
            other.postId,
            other.date,
            other.contents,
            other.creator,
            other.creatorEmail,
            other.creatorName,
            other.hasattachments,
            other.attachmentDownload,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        postId,
        date,
        contents,
        creator,
        creatorEmail,
        creatorName,
        hasattachments,
        attachmentDownload,
    ],);

  factory TicketPostDetailsInner.fromJson(Map<String, dynamic> json) => _$TicketPostDetailsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$TicketPostDetailsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}


enum TicketPostDetailsInnerCreatorEnum {
@JsonValue(r'User')
user(r'User'),
@JsonValue(r'Staff')
staff(r'Staff'),
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const TicketPostDetailsInnerCreatorEnum(this.value);

final String value;

@override
String toString() => value;
}


