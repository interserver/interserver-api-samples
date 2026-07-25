//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website_backups_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsiteBackupsInner {
  /// Returns a new [WebsiteBackupsInner] instance.
  WebsiteBackupsInner({

    required  this.name,

    this.size = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @OptionalConverter()
  @JsonKey(
    
    name: r'size',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> size;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsiteBackupsInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            size,
        ],
        [
            other.name,
            other.size,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        size,
    ],);

  factory WebsiteBackupsInner.fromJson(Map<String, dynamic> json) => _$WebsiteBackupsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteBackupsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

