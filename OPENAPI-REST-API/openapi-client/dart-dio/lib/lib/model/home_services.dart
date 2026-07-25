//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/home_services_servers.dart';
import 'package:interserver_api/lib/model/home_services_licenses.dart';
import 'package:interserver_api/lib/model/home_services_webhosting.dart';
import 'package:interserver_api/lib/model/home_services_domains.dart';
import 'package:interserver_api/lib/model/home_services_backups.dart';
import 'package:interserver_api/lib/model/home_services_vps.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_services.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeServices {
  /// Returns a new [HomeServices] instance.
  HomeServices({

    this.domains = const Optional.absent(),

    this.webhosting = const Optional.absent(),

    this.vps = const Optional.absent(),

    this.licenses = const Optional.absent(),

    this.servers = const Optional.absent(),

    this.backups = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'domains',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeServicesDomains?> domains;



  @OptionalConverter()
  @JsonKey(
    
    name: r'webhosting',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeServicesWebhosting?> webhosting;



  @OptionalConverter()
  @JsonKey(
    
    name: r'vps',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeServicesVps?> vps;



  @OptionalConverter()
  @JsonKey(
    
    name: r'licenses',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeServicesLicenses?> licenses;



  @OptionalConverter()
  @JsonKey(
    
    name: r'servers',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeServicesServers?> servers;



  @OptionalConverter()
  @JsonKey(
    
    name: r'backups',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeServicesBackups?> backups;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeServices &&
      runtimeType == other.runtimeType &&
      equals(
        [
            domains,
            webhosting,
            vps,
            licenses,
            servers,
            backups,
        ],
        [
            other.domains,
            other.webhosting,
            other.vps,
            other.licenses,
            other.servers,
            other.backups,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        domains,
        webhosting,
        vps,
        licenses,
        servers,
        backups,
    ],);

  factory HomeServices.fromJson(Map<String, dynamic> json) => _$HomeServicesFromJson(json);

  Map<String, dynamic> toJson() => _$HomeServicesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

