//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_location1.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_locations.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerLocations {
  /// Returns a new [ServerLocations] instance.
  ServerLocations({

    this.n1 = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerLocation1?> n1;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerLocations &&
      runtimeType == other.runtimeType &&
      equals(
        [
            n1,
        ],
        [
            other.n1,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        n1,
    ],);

  factory ServerLocations.fromJson(Map<String, dynamic> json) => _$ServerLocationsFromJson(json);

  Map<String, dynamic> toJson() => _$ServerLocationsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

