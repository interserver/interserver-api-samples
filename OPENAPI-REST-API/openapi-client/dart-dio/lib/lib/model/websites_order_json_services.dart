//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order_json_services.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrderJsonServices {
  /// Returns a new [WebsitesOrderJsonServices] instance.
  WebsitesOrderJsonServices({

    required  this.n11447,
  });

      /// JSON services description
  @JsonKey(
    
    name: r'11447',
    required: true,
    includeIfNull: false,
  )


  final String n11447;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsitesOrderJsonServices &&
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

  factory WebsitesOrderJsonServices.fromJson(Map<String, dynamic> json) => _$WebsitesOrderJsonServicesFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderJsonServicesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

