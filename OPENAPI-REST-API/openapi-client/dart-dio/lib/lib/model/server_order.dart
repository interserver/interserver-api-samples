//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_order_bandwidth_li.dart';
import 'package:interserver_api/lib/model/server_order_memory_li.dart';
import 'package:interserver_api/lib/model/server_order_cp_li.dart';
import 'package:interserver_api/lib/model/server_order_raid.dart';
import 'package:interserver_api/lib/model/server_order_config_ids.dart';
import 'package:interserver_api/lib/model/server_order_field_labels.dart';
import 'package:interserver_api/lib/model/server_order_ips_li.dart';
import 'package:interserver_api/lib/model/server_order_os_li.dart';
import 'package:interserver_api/lib/model/server_order_form_values.dart';
import 'package:interserver_api/lib/model/server_order_cpu_li.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_order.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerOrder {
  /// Returns a new [ServerOrder] instance.
  ServerOrder({

    this.formValues = const Optional.absent(),

    this.configIds = const Optional.absent(),

    this.cpu = const Optional.absent(),

    this.fieldLabel = const Optional.absent(),

    this.cpuLi = const Optional.absent(),

    this.memoryLi = const Optional.absent(),

    this.bandwidthLi = const Optional.absent(),

    this.ipsLi = const Optional.absent(),

    this.osLi = const Optional.absent(),

    this.cpLi = const Optional.absent(),

    this.raidLi = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'form_values',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderFormValues?> formValues;



  @OptionalConverter()
  @JsonKey(
    
    name: r'config_ids',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderConfigIds?> configIds;



      /// Number of CPUs for the server order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'cpu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> cpu;



  @OptionalConverter()
  @JsonKey(
    
    name: r'field_label',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderFieldLabels?> fieldLabel;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cpu_li',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderCpuLi?> cpuLi;



  @OptionalConverter()
  @JsonKey(
    
    name: r'memory_li',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderMemoryLi?> memoryLi;



  @OptionalConverter()
  @JsonKey(
    
    name: r'bandwidth_li',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderBandwidthLi?> bandwidthLi;



  @OptionalConverter()
  @JsonKey(
    
    name: r'ips_li',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderIpsLi?> ipsLi;



  @OptionalConverter()
  @JsonKey(
    
    name: r'os_li',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderOsLi?> osLi;



  @OptionalConverter()
  @JsonKey(
    
    name: r'cp_li',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<ServerOrderCpLi?> cpLi;



      /// RAID options for the server order.
  @OptionalConverter()
  @JsonKey(
    
    name: r'raid_li',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<List<ServerOrderRAID>?> raidLi;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerOrder &&
      runtimeType == other.runtimeType &&
      equals(
        [
            formValues,
            configIds,
            cpu,
            fieldLabel,
            cpuLi,
            memoryLi,
            bandwidthLi,
            ipsLi,
            osLi,
            cpLi,
            raidLi,
        ],
        [
            other.formValues,
            other.configIds,
            other.cpu,
            other.fieldLabel,
            other.cpuLi,
            other.memoryLi,
            other.bandwidthLi,
            other.ipsLi,
            other.osLi,
            other.cpLi,
            other.raidLi,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        formValues,
        configIds,
        cpu,
        fieldLabel,
        cpuLi,
        memoryLi,
        bandwidthLi,
        ipsLi,
        osLi,
        cpLi,
        raidLi,
    ],);

  factory ServerOrder.fromJson(Map<String, dynamic> json) => _$ServerOrderFromJson(json);

  Map<String, dynamic> toJson() => _$ServerOrderToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

