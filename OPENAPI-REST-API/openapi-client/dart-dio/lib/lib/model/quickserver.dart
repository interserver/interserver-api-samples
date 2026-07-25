//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/quickserver_service_master.dart';
import 'package:interserver_api/lib/model/quickserver_billing_details.dart';
import 'package:interserver_api/lib/model/quickserver_service_info.dart';
import 'package:interserver_api/lib/model/quickserver_extra_info_tables.dart';
import 'package:interserver_api/lib/model/quickserver_service_extra.dart';
import 'package:interserver_api/lib/model/quickserver_client_link.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Quickserver {
  /// Returns a new [Quickserver] instance.
  Quickserver({

    required  this.serviceInfo,

    required  this.clientLinks,

    required  this.billingDetails,

    required  this.custCurrency,

    required  this.custCurrencySymbol,

    required  this.serviceMaster,

    required  this.package,

    required  this.osTemplate,

    required  this.serviceExtra,

    required  this.extraInfoTables,

    required  this.cpuGraphData,

    required  this.bandwidthXaxis,

    required  this.bandwidthYaxis,

    required  this.module,

    required  this.token,

    required  this.serviceDiskUsed,

    required  this.serviceDiskTotal,

    required  this.diskPercentage,

    required  this.memory,

    required  this.hdd,

    required  this.serviceOverviewExtra,
  });

  @JsonKey(
    
    name: r'serviceInfo',
    required: true,
    includeIfNull: false,
  )


  final QuickserverServiceInfo serviceInfo;



  @JsonKey(
    
    name: r'client_links',
    required: true,
    includeIfNull: false,
  )


  final List<QuickserverClientLink> clientLinks;



  @JsonKey(
    
    name: r'billingDetails',
    required: true,
    includeIfNull: false,
  )


  final QuickserverBillingDetails billingDetails;



      /// Currency of the customer
  @JsonKey(
    
    name: r'custCurrency',
    required: true,
    includeIfNull: false,
  )


  final String custCurrency;



      /// Currency symbol of the customer
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


  final QuickserverServiceMaster serviceMaster;



      /// Package name
  @JsonKey(
    
    name: r'package',
    required: true,
    includeIfNull: false,
  )


  final String package;



      /// Operating system template
  @JsonKey(
    
    name: r'os_template',
    required: true,
    includeIfNull: false,
  )


  final String osTemplate;



  @JsonKey(
    
    name: r'serviceExtra',
    required: true,
    includeIfNull: false,
  )


  final QuickserverServiceExtra serviceExtra;



  @JsonKey(
    
    name: r'extraInfoTables',
    required: true,
    includeIfNull: false,
  )


  final QuickserverExtraInfoTables extraInfoTables;



      /// CPU graph data
  @JsonKey(
    
    name: r'cpu_graph_data',
    required: true,
    includeIfNull: false,
  )


  final String cpuGraphData;



      /// Bandwidth x-axis data
  @JsonKey(
    
    name: r'bandwidth_xaxis',
    required: true,
    includeIfNull: false,
  )


  final String bandwidthXaxis;



      /// Bandwidth y-axis data
  @JsonKey(
    
    name: r'bandwidth_yaxis',
    required: true,
    includeIfNull: false,
  )


  final String bandwidthYaxis;



      /// Module information
  @JsonKey(
    
    name: r'module',
    required: true,
    includeIfNull: false,
  )


  final String module;



      /// Authentication token
  @JsonKey(
    
    name: r'token',
    required: true,
    includeIfNull: false,
  )


  final String token;



      /// Used disk space
  @JsonKey(
    
    name: r'service_disk_used',
    required: true,
    includeIfNull: false,
  )


  final String serviceDiskUsed;



      /// Total disk space
  @JsonKey(
    
    name: r'service_disk_total',
    required: true,
    includeIfNull: false,
  )


  final String serviceDiskTotal;



      /// Disk usage percentage
  @JsonKey(
    
    name: r'disk_percentage',
    required: true,
    includeIfNull: false,
  )


  final num diskPercentage;



      /// Memory information
  @JsonKey(
    
    name: r'memory',
    required: true,
    includeIfNull: false,
  )


  final String memory;



      /// HDD information
  @JsonKey(
    
    name: r'hdd',
    required: true,
    includeIfNull: false,
  )


  final String hdd;



  @JsonKey(
    
    name: r'service_overview_extra',
    required: true,
    includeIfNull: false,
  )


  final List<String> serviceOverviewExtra;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is Quickserver &&
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
            osTemplate,
            serviceExtra,
            extraInfoTables,
            cpuGraphData,
            bandwidthXaxis,
            bandwidthYaxis,
            module,
            token,
            serviceDiskUsed,
            serviceDiskTotal,
            diskPercentage,
            memory,
            hdd,
            serviceOverviewExtra,
        ],
        [
            other.serviceInfo,
            other.clientLinks,
            other.billingDetails,
            other.custCurrency,
            other.custCurrencySymbol,
            other.serviceMaster,
            other.package,
            other.osTemplate,
            other.serviceExtra,
            other.extraInfoTables,
            other.cpuGraphData,
            other.bandwidthXaxis,
            other.bandwidthYaxis,
            other.module,
            other.token,
            other.serviceDiskUsed,
            other.serviceDiskTotal,
            other.diskPercentage,
            other.memory,
            other.hdd,
            other.serviceOverviewExtra,
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
        osTemplate,
        serviceExtra,
        extraInfoTables,
        cpuGraphData,
        bandwidthXaxis,
        bandwidthYaxis,
        module,
        token,
        serviceDiskUsed,
        serviceDiskTotal,
        diskPercentage,
        memory,
        hdd,
        serviceOverviewExtra,
    ],);

  factory Quickserver.fromJson(Map<String, dynamic> json) => _$QuickserverFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

