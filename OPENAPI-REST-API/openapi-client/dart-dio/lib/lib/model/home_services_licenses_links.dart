//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services_licenses_links.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServicesLicensesLinks {
  /// Returns a new [HomeServicesLicensesLinks] instance.
  HomeServicesLicensesLinks({

    this.n386522 = const Optional.absent(),
  });

      /// Link to a license.
  @OptionalConverter()
  @JsonKey(
    
    name: r'386522',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n386522;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeServicesLicensesLinks &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n386522,
        ],
        [
            other.n386522,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n386522,
    ],);

  factory HomeServicesLicensesLinks.fromJson(Map<String, dynamic> json) => _$HomeServicesLicensesLinksFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesLicensesLinksToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

