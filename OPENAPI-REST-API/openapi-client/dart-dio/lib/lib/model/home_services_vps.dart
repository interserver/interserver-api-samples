//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/home_services_vps_links.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services_vps.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServicesVps {
  /// Returns a new [HomeServicesVps] instance.
  HomeServicesVps({

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


  final Optional<HomeServicesVpsLinks?> links;



      /// Number of VPS services.
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
      other is HomeServicesVps &&
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

  factory HomeServicesVps.fromJson(Map<String, dynamic> json) => _$HomeServicesVpsFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesVpsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

