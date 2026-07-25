//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order_packages.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrderPackages {
  /// Returns a new [WebsitesOrderPackages] instance.
  WebsitesOrderPackages({

    required  this.n11447,
  });

      /// Package description
  @JsonKey(
    
    name: r'11447',
    required: true,
    includeIfNull: false,
  )


  final String n11447;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsitesOrderPackages &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n11447,
        ],
        [
            other.n11447,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n11447,
    ],);

  factory WebsitesOrderPackages.fromJson(Map<String, dynamic> json) => _$WebsitesOrderPackagesFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderPackagesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

