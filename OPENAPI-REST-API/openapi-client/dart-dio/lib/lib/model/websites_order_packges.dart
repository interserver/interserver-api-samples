//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/websites_order_packages_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order_packges.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrderPackges {
  /// Returns a new [WebsitesOrderPackges] instance.
  WebsitesOrderPackges({

    required  this.n11440,
  });

  @JsonKey(
    
    name: r'11440',
    required: true,
    includeIfNull: false,
  )


  final WebsitesOrderPackagesInfo n11440;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsitesOrderPackges &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n11440,
        ],
        [
            other.n11440,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n11440,
    ],);

  factory WebsitesOrderPackges.fromJson(Map<String, dynamic> json) => _$WebsitesOrderPackgesFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderPackgesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

