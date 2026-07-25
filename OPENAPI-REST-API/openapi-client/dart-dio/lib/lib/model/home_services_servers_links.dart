//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services_servers_links.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServicesServersLinks {
  /// Returns a new [HomeServicesServersLinks] instance.
  HomeServicesServersLinks({

    this.n16058 = const Optional.absent(),
  });

      /// Link to a server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'16058',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> n16058;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeServicesServersLinks &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n16058,
        ],
        [
            other.n16058,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n16058,
    ],);

  factory HomeServicesServersLinks.fromJson(Map<String, dynamic> json) => _$HomeServicesServersLinksFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesServersLinksToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

