//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/home_services_servers_links.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services_servers.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServicesServers {
  /// Returns a new [HomeServicesServers] instance.
  HomeServicesServers({

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


  final Optional<HomeServicesServersLinks?> links;



      /// Number of servers.
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
      other is HomeServicesServers &&
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

  factory HomeServicesServers.fromJson(Map<String, dynamic> json) => _$HomeServicesServersFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesServersToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

