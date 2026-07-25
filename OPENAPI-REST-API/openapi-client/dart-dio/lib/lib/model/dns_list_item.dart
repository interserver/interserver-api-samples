//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'dns_list_item.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DnsListItem {
  /// Returns a new [DnsListItem] instance.
  DnsListItem({

    this.id = const Optional.absent(),

    this.name = const Optional.absent(),

    this.content = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> id;



  @OptionalConverter()
  @JsonKey(
    
    name: r'name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> name;



  @OptionalConverter()
  @JsonKey(
    
    name: r'content',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> content;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DnsListItem &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            name,
            content,
        ],
        [
            other.id,
            other.name,
            other.content,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        name,
        content,
    ],);

  factory DnsListItem.fromJson(Map<String, dynamic> json) => _$DnsListItemFromJson(json);

  Map<String, dynamic> toJson() => _$DnsListItemToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

