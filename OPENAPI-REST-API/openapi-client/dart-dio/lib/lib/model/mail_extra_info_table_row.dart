//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_extra_info_table_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailExtraInfoTableRow {
  /// Returns a new [MailExtraInfoTableRow] instance.
  MailExtraInfoTableRow({

    this.desc = const Optional.absent(),

    this.value = const Optional.absent(),
  });

      /// The description of the extra info table row.
  @OptionalConverter()
  @JsonKey(
    
    name: r'desc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> desc;



      /// The value of the extra info table row.
  @OptionalConverter()
  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> value;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailExtraInfoTableRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            desc,
            value,
        ],
        [
            other.desc,
            other.value,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        desc,
        value,
    ],);

  factory MailExtraInfoTableRow.fromJson(Map<String, dynamic> json) => _$MailExtraInfoTableRowFromJson(json);

  Map<String, dynamic> toJson() => _$MailExtraInfoTableRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

