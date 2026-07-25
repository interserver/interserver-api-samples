//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_delist_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailDelistResponse {
  /// Returns a new [MailDelistResponse] instance.
  MailDelistResponse({

    this.id = const Optional.absent(),

    this.local = const Optional.absent(),

    this.mbtrap = const Optional.absent(),

    this.subject = const Optional.absent(),

    this.manual = const Optional.absent(),
  });

      /// Mail service ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> id;



      /// Local blocklist entries.
  @OptionalConverter()
  @JsonKey(
    
    name: r'local',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<Object>?> local;



      /// MailBaby trap block entries.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mbtrap',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<Object>?> mbtrap;



      /// Subject-based block entries.
  @OptionalConverter()
  @JsonKey(
    
    name: r'subject',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<Object>?> subject;



      /// Manually blocked entries.
  @OptionalConverter()
  @JsonKey(
    
    name: r'manual',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<Object>?> manual;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailDelistResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            local,
            mbtrap,
            subject,
            manual,
        ],
        [
            other.id,
            other.local,
            other.mbtrap,
            other.subject,
            other.manual,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        local,
        mbtrap,
        subject,
        manual,
    ],);

  factory MailDelistResponse.fromJson(Map<String, dynamic> json) => _$MailDelistResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MailDelistResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

