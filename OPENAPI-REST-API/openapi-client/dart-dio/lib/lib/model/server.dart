//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_billing_details.dart';
import 'package:interserver_api/lib/model/server_extra_info_tables.dart';
import 'package:interserver_api/lib/model/server_client_link.dart';
import 'package:interserver_api/lib/model/server_locations.dart';
import 'package:interserver_api/lib/model/server_network_info.dart';
import 'package:interserver_api/lib/model/server_service_info.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Server {
  /// Returns a new [Server] instance.
  Server({

    required  this.ipmiAuth,

    required  this.clientLinks,

    required  this.billingDetails,

    required  this.custCurrency,

    required  this.custCurrencySymbol,

    required  this.package,

    required  this.serviceExtra,

    required  this.locations,

    required  this.networkInfo,

    required  this.extraInfoTables,

    required  this.serviceInfo,
  });

  @JsonKey(
    
    name: r'ipmiAuth',
    required: true,
    includeIfNull: false,
  )


  final bool ipmiAuth;



  @JsonKey(
    
    name: r'client_links',
    required: true,
    includeIfNull: false,
  )


  final List<ServerClientLink> clientLinks;



  @JsonKey(
    
    name: r'billingDetails',
    required: true,
    includeIfNull: false,
  )


  final ServerBillingDetails billingDetails;



  @JsonKey(
    
    name: r'custCurrency',
    required: true,
    includeIfNull: false,
  )


  final String custCurrency;



  @JsonKey(
    
    name: r'custCurrencySymbol',
    required: true,
    includeIfNull: false,
  )


  final String custCurrencySymbol;



  @JsonKey(
    
    name: r'package',
    required: true,
    includeIfNull: false,
  )


  final String package;



  @JsonKey(
    
    name: r'serviceExtra',
    required: true,
    includeIfNull: false,
  )


  final List<String> serviceExtra;



  @JsonKey(
    
    name: r'locations',
    required: true,
    includeIfNull: false,
  )


  final ServerLocations locations;



  @JsonKey(
    
    name: r'networkInfo',
    required: true,
    includeIfNull: false,
  )


  final ServerNetworkInfo networkInfo;



  @JsonKey(
    
    name: r'extraInfoTables',
    required: true,
    includeIfNull: false,
  )


  final ServerExtraInfoTables extraInfoTables;



  @JsonKey(
    
    name: r'serviceInfo',
    required: true,
    includeIfNull: false,
  )


  final ServerServiceInfo serviceInfo;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is Server &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ipmiAuth,
            clientLinks,
            billingDetails,
            custCurrency,
            custCurrencySymbol,
            package,
            serviceExtra,
            locations,
            networkInfo,
            extraInfoTables,
            serviceInfo,
        ],
        [
            other.ipmiAuth,
            other.clientLinks,
            other.billingDetails,
            other.custCurrency,
            other.custCurrencySymbol,
            other.package,
            other.serviceExtra,
            other.locations,
            other.networkInfo,
            other.extraInfoTables,
            other.serviceInfo,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ipmiAuth,
        clientLinks,
        billingDetails,
        custCurrency,
        custCurrencySymbol,
        package,
        serviceExtra,
        locations,
        networkInfo,
        extraInfoTables,
        serviceInfo,
    ],);

  factory Server.fromJson(Map<String, dynamic> json) => _$ServerFromJson(json);

  Map<String, dynamic> toJson() => _$ServerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

