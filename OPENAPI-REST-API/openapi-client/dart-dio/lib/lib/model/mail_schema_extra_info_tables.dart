//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/mail_extra_info_table.dart';
import 'package:interserver_api/lib/model/mail_tutorials_table.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_schema_extra_info_tables.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailSchemaExtraInfoTables {
  /// Returns a new [MailSchemaExtraInfoTables] instance.
  MailSchemaExtraInfoTables({

    this.mail = const Optional.absent(),

    this.tutorials = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'mail',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<MailExtraInfoTable?> mail;



  @OptionalConverter()
  @JsonKey(
    
    name: r'tutorials',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<MailTutorialsTable?> tutorials;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailSchemaExtraInfoTables &&
      runtimeType == other.runtimeType &&
      equals(
        [
            mail,
            tutorials,
        ],
        [
            other.mail,
            other.tutorials,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        mail,
        tutorials,
    ],);

  factory MailSchemaExtraInfoTables.fromJson(Map<String, dynamic> json) => _$MailSchemaExtraInfoTablesFromJson(json);

  Map<String, dynamic> toJson() => _$MailSchemaExtraInfoTablesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

