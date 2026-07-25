//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/home_services_domains_links.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services_domains.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServicesDomains {
  /// Returns a new [HomeServicesDomains] instance.
  HomeServicesDomains({

    this.links = const Optional.absent(),

    this.count = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'links',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeServicesDomainsLinks?> links;



      /// Number of domains.
  @OptionalConverter()
  @JsonKey(
    
    name: r'count',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> count;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeServicesDomains &&
      runtimeType == other.runtimeType &&
      equals(
        [
            links,
            count,
        ],
        [
            other.links,
            other.count,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        links,
        count,
    ],);

  factory HomeServicesDomains.fromJson(Map<String, dynamic> json) => _$HomeServicesDomainsFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesDomainsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

