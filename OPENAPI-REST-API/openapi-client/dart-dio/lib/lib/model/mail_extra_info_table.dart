//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/mail_extra_info_table_row.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_extra_info_table.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailExtraInfoTable {
  /// Returns a new [MailExtraInfoTable] instance.
  MailExtraInfoTable({

    this.title = const Optional.absent(),

    this.rows = const Optional.absent(),
  });

      /// The title of the extra info table.
  @OptionalConverter()
  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> title;



      /// The rows of the extra info table.
  @OptionalConverter()
  @JsonKey(
    
    name: r'rows',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<MailExtraInfoTableRow>?> rows;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailExtraInfoTable &&
      runtimeType == other.runtimeType &&
      equals(
        [
            title,
            rows,
        ],
        [
            other.title,
            other.rows,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        title,
        rows,
    ],);

  factory MailExtraInfoTable.fromJson(Map<String, dynamic> json) => _$MailExtraInfoTableFromJson(json);

  Map<String, dynamic> toJson() => _$MailExtraInfoTableToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

