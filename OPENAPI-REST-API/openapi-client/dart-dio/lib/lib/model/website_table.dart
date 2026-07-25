//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/website_table_row.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website_table.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsiteTable {
  /// Returns a new [WebsiteTable] instance.
  WebsiteTable({

    this.title = const Optional.absent(),

    this.rows = const Optional.absent(),
  });

      /// Title of the table
  @OptionalConverter()
  @JsonKey(
    
    name: r'title',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> title;



  @OptionalConverter()
  @JsonKey(
    
    name: r'rows',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<WebsiteTableRow>?> rows;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsiteTable &&
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

  factory WebsiteTable.fromJson(Map<String, dynamic> json) => _$WebsiteTableFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteTableToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

