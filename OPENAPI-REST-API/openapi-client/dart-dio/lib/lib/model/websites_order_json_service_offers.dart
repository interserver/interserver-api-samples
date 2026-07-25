//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/websites_order_json_service_offers_item.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order_json_service_offers.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrderJsonServiceOffers {
  /// Returns a new [WebsitesOrderJsonServiceOffers] instance.
  WebsitesOrderJsonServiceOffers({

    required  this.n1026,
  });

      /// Array of service offers
  @JsonKey(
    
    name: r'1026',
    required: true,
    includeIfNull: false,
  )


  final List<WebsitesOrderJsonServiceOffersItem> n1026;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsitesOrderJsonServiceOffers &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n1026,
        ],
        [
            other.n1026,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n1026,
    ],);

  factory WebsitesOrderJsonServiceOffers.fromJson(Map<String, dynamic> json) => _$WebsitesOrderJsonServiceOffersFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderJsonServiceOffersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

