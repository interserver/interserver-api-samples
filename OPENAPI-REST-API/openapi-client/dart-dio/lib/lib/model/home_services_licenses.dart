//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/home_services_licenses_links.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services_licenses.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServicesLicenses {
  /// Returns a new [HomeServicesLicenses] instance.
  HomeServicesLicenses({

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


  final Optional<HomeServicesLicensesLinks?> links;



      /// Number of licenses.
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
      other is HomeServicesLicenses &&
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

  factory HomeServicesLicenses.fromJson(Map<String, dynamic> json) => _$HomeServicesLicensesFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesLicensesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

