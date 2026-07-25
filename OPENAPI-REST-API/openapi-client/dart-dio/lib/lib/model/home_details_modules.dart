//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/home_details_modules_licenses.dart';
import 'package:interserver_api/lib/model/home_details_modules_quickservers.dart';
import 'package:interserver_api/lib/model/home_details_modules_servers.dart';
import 'package:interserver_api/lib/model/home_details_modules_webhosting.dart';
import 'package:interserver_api/lib/model/home_details_modules_domains.dart';
import 'package:interserver_api/lib/model/home_details_modules_vps.dart';
import 'package:interserver_api/lib/model/home_details_modules_backups.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'home_details_modules.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class HomeDetailsModules {
  /// Returns a new [HomeDetailsModules] instance.
  HomeDetailsModules({

    this.domains = const Optional.absent(),

    this.webhosting = const Optional.absent(),

    this.vps = const Optional.absent(),

    this.licenses = const Optional.absent(),

    this.backups = const Optional.absent(),

    this.servers = const Optional.absent(),

    this.quickservers = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'domains',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeDetailsModulesDomains?> domains;



  @OptionalConverter()
  @JsonKey(
    
    name: r'webhosting',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeDetailsModulesWebhosting?> webhosting;



  @OptionalConverter()
  @JsonKey(
    
    name: r'vps',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeDetailsModulesVps?> vps;



  @OptionalConverter()
  @JsonKey(
    
    name: r'licenses',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeDetailsModulesLicenses?> licenses;



  @OptionalConverter()
  @JsonKey(
    
    name: r'backups',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeDetailsModulesBackups?> backups;



  @OptionalConverter()
  @JsonKey(
    
    name: r'servers',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeDetailsModulesServers?> servers;



  @OptionalConverter()
  @JsonKey(
    
    name: r'quickservers',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<HomeDetailsModulesQuickservers?> quickservers;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is HomeDetailsModules &&
      runtimeType == other.runtimeType &&
      equals(
        [
            domains,
            webhosting,
            vps,
            licenses,
            backups,
            servers,
            quickservers,
        ],
        [
            other.domains,
            other.webhosting,
            other.vps,
            other.licenses,
            other.backups,
            other.servers,
            other.quickservers,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        domains,
        webhosting,
        vps,
        licenses,
        backups,
        servers,
        quickservers,
    ],);

  factory HomeDetailsModules.fromJson(Map<String, dynamic> json) => _$HomeDetailsModulesFromJson(json);

  Map<String, dynamic> toJson() => _$HomeDetailsModulesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

