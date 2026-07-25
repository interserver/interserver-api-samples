//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/websites_order_service_offer.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'websites_order_service_offers.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class WebsitesOrderServiceOffers {
  /// Returns a new [WebsitesOrderServiceOffers] instance.
  WebsitesOrderServiceOffers({

    required  this.n1026,
  });

  @JsonKey(
    
    name: r'1026',
    required: true,
    includeIfNull: false,
  )


  final List<WebsitesOrderServiceOffer> n1026;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is WebsitesOrderServiceOffers &&
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

  factory WebsitesOrderServiceOffers.fromJson(Map<String, dynamic> json) => _$WebsitesOrderServiceOffersFromJson(json);

  Map<String, dynamic> toJson() => _$WebsitesOrderServiceOffersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

