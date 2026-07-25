//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services_webhosting_links.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServicesWebhostingLinks {
  /// Returns a new [HomeServicesWebhostingLinks] instance.
  HomeServicesWebhostingLinks({

    this.n376359 = const Optional.absent(),

    this.n376473 = const Optional.absent(),

    this.n386218 = const Optional.absent(),
  });

      /// Link to a website.
  @OptionalConverter()
  @JsonKey(
    
    name: r'376359',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n376359;



      /// Link to a website.
  @OptionalConverter()
  @JsonKey(
    
    name: r'376473',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n376473;



      /// Link to a website.
  @OptionalConverter()
  @JsonKey(
    
    name: r'386218',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n386218;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeServicesWebhostingLinks &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n376359,
            n376473,
            n386218,
        ],
        [
            other.n376359,
            other.n376473,
            other.n386218,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n376359,
        n376473,
        n386218,
    ],);

  factory HomeServicesWebhostingLinks.fromJson(Map<String, dynamic> json) => _$HomeServicesWebhostingLinksFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesWebhostingLinksToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

