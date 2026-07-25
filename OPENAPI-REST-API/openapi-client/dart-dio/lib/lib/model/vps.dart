//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_billing_details.dart';
import 'package:interserver_api/lib/model/vps_cp_data.dart';
import 'package:interserver_api/lib/model/vps_service_master.dart';
import 'package:interserver_api/lib/model/vps_extra_info_tables.dart';
import 'package:interserver_api/lib/model/vps_plesk12_data.dart';
import 'package:interserver_api/lib/model/vps_client_link.dart';
import 'package:interserver_api/lib/model/vps_service_extra.dart';
import 'package:interserver_api/lib/model/vps_service_addons.dart';
import 'package:interserver_api/lib/model/vps_service_info.dart';
import 'package:interserver_api/lib/model/vps_da_data.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Vps {
  /// Returns a new [Vps] instance.
  Vps({

    required  this.serviceInfo,

    required  this.clientLinks,

    required  this.billingDetails,

    required  this.custCurrency,

    required  this.custCurrencySymbol,

    required  this.serviceMaster,

    required  this.package,

    required  this.serviceExtra,

    required  this.extraInfoTables,

    required  this.module,

    required  this.token,

    required  this.daLink,

    required  this.srLink,

    required  this.cpData,

    required  this.daData,

    required  this.plesk12Data,

    required  this.serviceAddons,

    this.osTemplate = const Optional.absent(),

    this.cpuGraphData = const Optional.absent(),
  });

  @JsonKey(
    
    name: r'serviceInfo',
    required: true,
    includeIfNull: false,
  )


  final VpsServiceInfo serviceInfo;



  @JsonKey(
    
    name: r'client_links',
    required: true,
    includeIfNull: false,
  )


  final List<VpsClientLink> clientLinks;



  @JsonKey(
    
    name: r'billingDetails',
    required: true,
    includeIfNull: false,
  )


  final VpsBillingDetails billingDetails;



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
    
    name: r'serviceMaster',
    required: true,
    includeIfNull: false,
  )


  final VpsServiceMaster serviceMaster;



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


  final VpsServiceExtra serviceExtra;



  @JsonKey(
    
    name: r'extraInfoTables',
    required: true,
    includeIfNull: false,
  )


  final VpsExtraInfoTables extraInfoTables;



  @JsonKey(
    
    name: r'module',
    required: true,
    includeIfNull: false,
  )


  final String module;



  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false,
  )


  final String token;



  @JsonKey(
    
    name: r'da_link',
    required: true,
    includeIfNull: false,
  )


  final int daLink;



  @JsonKey(
    
    name: r'sr_link',
    required: true,
    includeIfNull: false,
  )


  final int srLink;



  @JsonKey(
    
    name: r'cp_data',
    required: true,
    includeIfNull: false,
  )


  final VpsCPData cpData;



  @JsonKey(
    
    name: r'da_data',
    required: true,
    includeIfNull: false,
  )


  final VpsDAData daData;



  @JsonKey(
    
    name: r'plesk12_data',
    required: true,
    includeIfNull: false,
  )


  final VpsPlesk12Data plesk12Data;



  @JsonKey(
    
    name: r'serviceAddons',
    required: true,
    includeIfNull: false,
  )


  final VpsServiceAddons serviceAddons;



  @OptionalConverter()
  @JsonKey(
    
    name: r'os_template',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> osTemplate;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cpu_graph_data',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<Object?> cpuGraphData;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is Vps &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serviceInfo,
            clientLinks,
            billingDetails,
            custCurrency,
            custCurrencySymbol,
            serviceMaster,
            package,
            serviceExtra,
            extraInfoTables,
            module,
            token,
            daLink,
            srLink,
            cpData,
            daData,
            plesk12Data,
            serviceAddons,
            osTemplate,
            cpuGraphData,
        ],
        [
            other.serviceInfo,
            other.clientLinks,
            other.billingDetails,
            other.custCurrency,
            other.custCurrencySymbol,
            other.serviceMaster,
            other.package,
            other.serviceExtra,
            other.extraInfoTables,
            other.module,
            other.token,
            other.daLink,
            other.srLink,
            other.cpData,
            other.daData,
            other.plesk12Data,
            other.serviceAddons,
            other.osTemplate,
            other.cpuGraphData,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serviceInfo,
        clientLinks,
        billingDetails,
        custCurrency,
        custCurrencySymbol,
        serviceMaster,
        package,
        serviceExtra,
        extraInfoTables,
        module,
        token,
        daLink,
        srLink,
        cpData,
        daData,
        plesk12Data,
        serviceAddons,
        osTemplate,
        cpuGraphData,
    ],);

  factory Vps.fromJson(Map<String, dynamic> json) => _$VpsFromJson(json);

  Map<String, dynamic> toJson() => _$VpsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

