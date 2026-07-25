//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services_domains_links.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServicesDomainsLinks {
  /// Returns a new [HomeServicesDomainsLinks] instance.
  HomeServicesDomainsLinks({

    this.n376114 = const Optional.absent(),

    this.n376503 = const Optional.absent(),

    this.n592337 = const Optional.absent(),
  });

      /// Link to a domain.
  @OptionalConverter()
  @JsonKey(
    
    name: r'376114',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n376114;



      /// Link to a domain.
  @OptionalConverter()
  @JsonKey(
    
    name: r'376503',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n376503;



      /// Link to a domain.
  @OptionalConverter()
  @JsonKey(
    
    name: r'592337',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n592337;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeServicesDomainsLinks &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n376114,
            n376503,
            n592337,
        ],
        [
            other.n376114,
            other.n376503,
            other.n592337,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n376114,
        n376503,
        n592337,
    ],);

  factory HomeServicesDomainsLinks.fromJson(Map<String, dynamic> json) => _$HomeServicesDomainsLinksFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesDomainsLinksToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

