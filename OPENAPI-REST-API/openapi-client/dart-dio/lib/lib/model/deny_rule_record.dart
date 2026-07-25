//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'deny_rule_record.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DenyRuleRecord {
  /// Returns a new [DenyRuleRecord] instance.
  DenyRuleRecord({

    required  this.type,

    required  this.data,

    required  this.id,

    required  this.created,

    this.user = const Optional.absent(),
  });

      /// The type of deny rule.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  unknownEnumValue: DenyRuleRecordTypeEnum.unknownDefaultOpenApi,
  )


  final DenyRuleRecordTypeEnum type;



      /// The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com.
  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final String data;



      /// The deny rule Id number.
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



      /// the date the rule was created.
  @JsonKey(
    
    name: r'created',
    required: true,
    includeIfNull: false,
  )


  final String created;



      /// Mail account username that will be tied to this rule.  If not specified the first active mail order will be used.
  @OptionalConverter()
  @JsonKey(
    
    name: r'user',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> user;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DenyRuleRecord &&
      runtimeType == other.runtimeType &&
      equals(
        [
            type,
            data,
            id,
            created,
            user,
        ],
        [
            other.type,
            other.data,
            other.id,
            other.created,
            other.user,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        type,
        data,
        id,
        created,
        user,
    ],);

  factory DenyRuleRecord.fromJson(Map<String, dynamic> json) => _$DenyRuleRecordFromJson(json);

  Map<String, dynamic> toJson() => _$DenyRuleRecordToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// The type of deny rule.
enum DenyRuleRecordTypeEnum {
    /// The type of deny rule.
@JsonValue(r'domain')
domain(r'domain'),
    /// The type of deny rule.
@JsonValue(r'email')
email(r'email'),
    /// The type of deny rule.
@JsonValue(r'startswith')
startswith(r'startswith'),
    /// The type of deny rule.
@JsonValue(r'destination')
destination(r'destination'),
    /// The type of deny rule.
@JsonValue(r'unknown_default_open_api')
unknownDefaultOpenApi(r'unknown_default_open_api');

const DenyRuleRecordTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


