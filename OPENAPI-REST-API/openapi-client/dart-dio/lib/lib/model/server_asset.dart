//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_lease.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_asset.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerAsset {
  /// Returns a new [ServerAsset] instance.
  ServerAsset({

    required  this.id,

    required  this.orderId,

    required  this.hostname,

    required  this.status,

    required  this.primaryIpv4,

    required  this.primaryIpv6,

    required  this.datacenter,

    required  this.typeId,

    required  this.assetTag,

    required  this.rack,

    required  this.row,

    required  this.col,

    required  this.unitStart,

    required  this.unitEnd,

    required  this.unitSub,

    required  this.ipmiMac,

    required  this.ipmiIp,

    required  this.ipmiWorking,

    required  this.company,

    required  this.comments,

    required  this.make,

    required  this.model,

    required  this.description,

    required  this.customerId,

    required  this.externalId,

    required  this.billingStatus,

    required  this.overdue,

    required  this.assetId,

    required  this.assetName,

    required  this.rackId,

    required  this.rackName,

    required  this.rackLocation,

    required  this.rackSize,

    required  this.rackX,

    required  this.rackY,

    required  this.switchports,

    required  this.vlans,

    required  this.vlans6,

    required  this.lease,

    this.mac = const Optional.absent(),

    this.ipmiAdminUsername = const Optional.absent(),

    this.ipmiAdminPassword = const Optional.absent(),

    this.ipmiClientUsername = const Optional.absent(),

    this.ipmiClientPassword = const Optional.absent(),

    this.ipmiUpdated = const Optional.absent(),

    this.createTimestamp = const Optional.absent(),

    this.updateTimestamp = const Optional.absent(),

    this.comment = const Optional.absent(),
  });

      /// Unique identifier for the asset.
  @JsonKey(
    
    name: r'id',
    required: true,
    includeIfNull: false,
  )


  final int id;



      /// Order identifier for the asset.
  @JsonKey(
    
    name: r'order_id',
    required: true,
    includeIfNull: false,
  )


  final String orderId;



      /// Hostname associated with the asset.
  @JsonKey(
    
    name: r'hostname',
    required: true,
    includeIfNull: false,
  )


  final String hostname;



      /// Status of the asset.
  @JsonKey(
    
    name: r'status',
    required: true,
    includeIfNull: false,
  )


  final String status;



      /// Primary IPv4 address of the asset.
  @JsonKey(
    
    name: r'primary_ipv4',
    required: true,
    includeIfNull: false,
  )


  final String primaryIpv4;



      /// Primary IPv6 address of the asset.
  @JsonKey(
    
    name: r'primary_ipv6',
    required: true,
    includeIfNull: false,
  )


  final String primaryIpv6;



      /// Datacenter identifier for the asset.
  @JsonKey(
    
    name: r'datacenter',
    required: true,
    includeIfNull: false,
  )


  final String datacenter;



      /// Type identifier for the asset.
  @JsonKey(
    
    name: r'type_id',
    required: true,
    includeIfNull: false,
  )


  final String typeId;



      /// Asset tag associated with the asset.
  @JsonKey(
    
    name: r'asset_tag',
    required: true,
    includeIfNull: false,
  )


  final String assetTag;



      /// Rack identifier for the asset.
  @JsonKey(
    
    name: r'rack',
    required: true,
    includeIfNull: false,
  )


  final String rack;



      /// Row identifier for the asset.
  @JsonKey(
    
    name: r'row',
    required: true,
    includeIfNull: false,
  )


  final String row;



      /// Column identifier for the asset.
  @JsonKey(
    
    name: r'col',
    required: true,
    includeIfNull: false,
  )


  final String col;



      /// Starting unit identifier for the asset.
  @JsonKey(
    
    name: r'unit_start',
    required: true,
    includeIfNull: false,
  )


  final String unitStart;



      /// Ending unit identifier for the asset.
  @JsonKey(
    
    name: r'unit_end',
    required: true,
    includeIfNull: false,
  )


  final String unitEnd;



      /// Subunit identifier for the asset.
  @JsonKey(
    
    name: r'unit_sub',
    required: true,
    includeIfNull: false,
  )


  final String unitSub;



      /// IPMI MAC address associated with the asset.
  @JsonKey(
    
    name: r'ipmi_mac',
    required: true,
    includeIfNull: false,
  )


  final String ipmiMac;



      /// IPMI IP address associated with the asset.
  @JsonKey(
    
    name: r'ipmi_ip',
    required: true,
    includeIfNull: false,
  )


  final String ipmiIp;



      /// IPMI working status associated with the asset.
  @JsonKey(
    
    name: r'ipmi_working',
    required: true,
    includeIfNull: false,
  )


  final String ipmiWorking;



      /// Company associated with the asset.
  @JsonKey(
    
    name: r'company',
    required: true,
    includeIfNull: false,
  )


  final String company;



      /// Comments associated with the asset.
  @JsonKey(
    
    name: r'comments',
    required: true,
    includeIfNull: false,
  )


  final String comments;



      /// Make of the asset.
  @JsonKey(
    
    name: r'make',
    required: true,
    includeIfNull: false,
  )


  final String make;



      /// Model of the asset.
  @JsonKey(
    
    name: r'model',
    required: true,
    includeIfNull: false,
  )


  final String model;



      /// Description of the asset.
  @JsonKey(
    
    name: r'description',
    required: true,
    includeIfNull: false,
  )


  final String description;



      /// Customer identifier for the asset.
  @JsonKey(
    
    name: r'customer_id',
    required: true,
    includeIfNull: false,
  )


  final String customerId;



      /// External identifier for the asset.
  @JsonKey(
    
    name: r'external_id',
    required: true,
    includeIfNull: false,
  )


  final String externalId;



      /// Billing status of the asset.
  @JsonKey(
    
    name: r'billing_status',
    required: true,
    includeIfNull: false,
  )


  final String billingStatus;



      /// Overdue status of the asset.
  @JsonKey(
    
    name: r'overdue',
    required: true,
    includeIfNull: false,
  )


  final String overdue;



      /// Asset identifier for the asset.
  @JsonKey(
    
    name: r'asset_id',
    required: true,
    includeIfNull: false,
  )


  final String assetId;



      /// Name of the asset.
  @JsonKey(
    
    name: r'asset_name',
    required: true,
    includeIfNull: false,
  )


  final String assetName;



      /// Rack identifier for the asset.
  @JsonKey(
    
    name: r'rack_id',
    required: true,
    includeIfNull: false,
  )


  final String rackId;



      /// Rack name associated with the asset.
  @JsonKey(
    
    name: r'rack_name',
    required: true,
    includeIfNull: false,
  )


  final String rackName;



      /// Location of the rack associated with the asset.
  @JsonKey(
    
    name: r'rack_location',
    required: true,
    includeIfNull: false,
  )


  final String rackLocation;



      /// Size of the rack associated with the asset.
  @JsonKey(
    
    name: r'rack_size',
    required: true,
    includeIfNull: false,
  )


  final String rackSize;



      /// X-coordinate of the asset within the rack.
  @JsonKey(
    
    name: r'rack_x',
    required: true,
    includeIfNull: false,
  )


  final String rackX;



      /// Y-coordinate of the asset within the rack.
  @JsonKey(
    
    name: r'rack_y',
    required: true,
    includeIfNull: false,
  )


  final String rackY;



      /// List of switchports associated with the asset.
  @JsonKey(
    
    name: r'switchports',
    required: true,
    includeIfNull: false,
  )


  final List<int> switchports;



      /// List of VLANs associated with the asset.
  @JsonKey(
    
    name: r'vlans',
    required: true,
    includeIfNull: false,
  )


  final List<String> vlans;



      /// List of IPv6 VLANs associated with the asset.
  @JsonKey(
    
    name: r'vlans6',
    required: true,
    includeIfNull: false,
  )


  final List<String> vlans6;



  @JsonKey(
    
    name: r'lease',
    required: true,
    includeIfNull: false,
  )


  final ServerLease lease;



      /// MAC address associated with the asset.
  @OptionalConverter()
  @JsonKey(
    
    name: r'mac',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> mac;



      /// IPMI admin username associated with the asset.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ipmi_admin_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipmiAdminUsername;



      /// IPMI admin password associated with the asset.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ipmi_admin_password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipmiAdminPassword;



      /// IPMI client username associated with the asset.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ipmi_client_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipmiClientUsername;



      /// IPMI client password associated with the asset.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ipmi_client_password',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipmiClientPassword;



      /// IPMI update status associated with the asset.
  @OptionalConverter()
  @JsonKey(
    
    name: r'ipmi_updated',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> ipmiUpdated;



      /// Timestamp of asset creation.
  @OptionalConverter()
  @JsonKey(
    
    name: r'create_timestamp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> createTimestamp;



      /// Timestamp of asset update.
  @OptionalConverter()
  @JsonKey(
    
    name: r'update_timestamp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> updateTimestamp;



      /// Comment associated with the asset.
  @OptionalConverter()
  @JsonKey(
    
    name: r'comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> comment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerAsset &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            orderId,
            hostname,
            status,
            primaryIpv4,
            primaryIpv6,
            datacenter,
            typeId,
            assetTag,
            rack,
            row,
            col,
            unitStart,
            unitEnd,
            unitSub,
            ipmiMac,
            ipmiIp,
            ipmiWorking,
            company,
            comments,
            make,
            model,
            description,
            customerId,
            externalId,
            billingStatus,
            overdue,
            assetId,
            assetName,
            rackId,
            rackName,
            rackLocation,
            rackSize,
            rackX,
            rackY,
            switchports,
            vlans,
            vlans6,
            lease,
            mac,
            ipmiAdminUsername,
            ipmiAdminPassword,
            ipmiClientUsername,
            ipmiClientPassword,
            ipmiUpdated,
            createTimestamp,
            updateTimestamp,
            comment,
        ],
        [
            other.id,
            other.orderId,
            other.hostname,
            other.status,
            other.primaryIpv4,
            other.primaryIpv6,
            other.datacenter,
            other.typeId,
            other.assetTag,
            other.rack,
            other.row,
            other.col,
            other.unitStart,
            other.unitEnd,
            other.unitSub,
            other.ipmiMac,
            other.ipmiIp,
            other.ipmiWorking,
            other.company,
            other.comments,
            other.make,
            other.model,
            other.description,
            other.customerId,
            other.externalId,
            other.billingStatus,
            other.overdue,
            other.assetId,
            other.assetName,
            other.rackId,
            other.rackName,
            other.rackLocation,
            other.rackSize,
            other.rackX,
            other.rackY,
            other.switchports,
            other.vlans,
            other.vlans6,
            other.lease,
            other.mac,
            other.ipmiAdminUsername,
            other.ipmiAdminPassword,
            other.ipmiClientUsername,
            other.ipmiClientPassword,
            other.ipmiUpdated,
            other.createTimestamp,
            other.updateTimestamp,
            other.comment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        orderId,
        hostname,
        status,
        primaryIpv4,
        primaryIpv6,
        datacenter,
        typeId,
        assetTag,
        rack,
        row,
        col,
        unitStart,
        unitEnd,
        unitSub,
        ipmiMac,
        ipmiIp,
        ipmiWorking,
        company,
        comments,
        make,
        model,
        description,
        customerId,
        externalId,
        billingStatus,
        overdue,
        assetId,
        assetName,
        rackId,
        rackName,
        rackLocation,
        rackSize,
        rackX,
        rackY,
        switchports,
        vlans,
        vlans6,
        lease,
        mac,
        ipmiAdminUsername,
        ipmiAdminPassword,
        ipmiClientUsername,
        ipmiClientPassword,
        ipmiUpdated,
        createTimestamp,
        updateTimestamp,
        comment,
    ],);

  factory ServerAsset.fromJson(Map<String, dynamic> json) => _$ServerAssetFromJson(json);

  Map<String, dynamic> toJson() => _$ServerAssetToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

