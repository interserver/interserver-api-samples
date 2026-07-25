//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services_vps_links.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServicesVpsLinks {
  /// Returns a new [HomeServicesVpsLinks] instance.
  HomeServicesVpsLinks({

    this.n465503 = const Optional.absent(),

    this.n2500081 = const Optional.absent(),

    this.n2578866 = const Optional.absent(),
  });

      /// Link to a VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'465503',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n465503;



      /// Link to a VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'2500081',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n2500081;



      /// Link to a VPS.
  @OptionalConverter()
  @JsonKey(
    
    name: r'2578866',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n2578866;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeServicesVpsLinks &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n465503,
            n2500081,
            n2578866,
        ],
        [
            other.n465503,
            other.n2500081,
            other.n2578866,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n465503,
        n2500081,
        n2578866,
    ],);

  factory HomeServicesVpsLinks.fromJson(Map<String, dynamic> json) => _$HomeServicesVpsLinksFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesVpsLinksToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

