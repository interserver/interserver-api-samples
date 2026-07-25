//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'deny_rule_new.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DenyRuleNew {
  /// Returns a new [DenyRuleNew] instance.
  DenyRuleNew({

    required  this.type,

    required  this.data,

    this.user = const Optional.absent(),
  });

      /// The type of deny rule.
  @JsonKey(
    
    name: r'type',
    required: true,
    includeIfNull: false,
  unknownEnumValue: DenyRuleNewTypeEnum.unknownDefaultOpenApi,
  )


  final DenyRuleNewTypeEnum type;



      /// The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com.
  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final String data;



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
      other is DenyRuleNew &&
      runtimeType == other.runtimeType &&
      equals(
        [
            type,
            data,
            user,
        ],
        [
            other.type,
            other.data,
            other.user,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        type,
        data,
        user,
    ],);

  factory DenyRuleNew.fromJson(Map<String, dynamic> json) => _$DenyRuleNewFromJson(json);

  Map<String, dynamic> toJson() => _$DenyRuleNewToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

/// The type of deny rule.
enum DenyRuleNewTypeEnum {
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

const DenyRuleNewTypeEnum(this.value);

final String value;

@override
String toString() => value;
}


