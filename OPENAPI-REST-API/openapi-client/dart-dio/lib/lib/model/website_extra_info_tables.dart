//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/website_table.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website_extra_info_tables.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsiteExtraInfoTables {
  /// Returns a new [WebsiteExtraInfoTables] instance.
  WebsiteExtraInfoTables({

    this.links = const Optional.absent(),

    this.preview = const Optional.absent(),

    this.dns = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'links',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<WebsiteTable?> links;



  @OptionalConverter()
  @JsonKey(
    
    name: r'preview',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<WebsiteTable?> preview;



  @OptionalConverter()
  @JsonKey(
    
    name: r'dns',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<WebsiteTable?> dns;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsiteExtraInfoTables &&
      runtimeType == other.runtimeType &&
      equals(
        [
            links,
            preview,
            dns,
        ],
        [
            other.links,
            other.preview,
            other.dns,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        links,
        preview,
        dns,
    ],);

  factory WebsiteExtraInfoTables.fromJson(Map<String, dynamic> json) => _$WebsiteExtraInfoTablesFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteExtraInfoTablesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

