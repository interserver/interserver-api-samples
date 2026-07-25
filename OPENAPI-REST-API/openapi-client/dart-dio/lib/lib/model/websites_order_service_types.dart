//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order_service_types.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrderServiceTypes {
  /// Returns a new [WebsitesOrderServiceTypes] instance.
  WebsitesOrderServiceTypes({

    required  this.n11447,
  });

  @JsonKey(
    
    name: r'11447',
    required: true,
    includeIfNull: false,
  )


  final WebsitesOrderServiceTypes n11447;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsitesOrderServiceTypes &&
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

  factory WebsitesOrderServiceTypes.fromJson(Map<String, dynamic> json) => _$WebsitesOrderServiceTypesFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderServiceTypesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

