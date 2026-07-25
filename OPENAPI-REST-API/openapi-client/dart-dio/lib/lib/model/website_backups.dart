//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/website_backups_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'website_backups.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsiteBackups {
  /// Returns a new [WebsiteBackups] instance.
  WebsiteBackups({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsiteBackups &&
      runtimeType == other.runtimeType &&
      equals(
        [
        ],
        [
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
    ],);

  factory WebsiteBackups.fromJson(Map<String, dynamic> json) => _$WebsiteBackupsFromJson(json);

  Map<String, dynamic> toJson() => _$WebsiteBackupsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

