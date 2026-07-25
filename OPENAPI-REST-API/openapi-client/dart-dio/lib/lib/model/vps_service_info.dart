//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsServiceInfo {
  /// Returns a new [VpsServiceInfo] instance.
  VpsServiceInfo({

    this.vpsId = const Optional.absent(),

    this.vpsCustid = const Optional.absent(),

    this.vpsServer = const Optional.absent(),

    this.vpsIp = const Optional.absent(),

    this.vpsIpv6 = const Optional.absent(),

    this.vpsVzid = const Optional.absent(),

    this.vpsCurrency = const Optional.absent(),

    this.vpsType = const Optional.absent(),

    this.vpsOrderDate = const Optional.absent(),

    this.vpsStatus = const Optional.absent(),

    this.vpsInvoice = const Optional.absent(),

    this.vpsCoupon = const Optional.absent(),

    this.vpsExtra = const Optional.absent(),

    this.vpsHostname = const Optional.absent(),

    this.vpsServerStatus = const Optional.absent(),

    this.vpsComment = const Optional.absent(),

    this.vpsSlices = const Optional.absent(),

    this.vpsVnc = const Optional.absent(),

    this.vpsVncPort = const Optional.absent(),

    this.vpsRootpass = const Optional.absent(),

    this.vpsMac = const Optional.absent(),

    this.vpsOs = const Optional.absent(),

    this.vpsVersion = const Optional.absent(),

    this.vpsLocation = const Optional.absent(),

    this.vpsPlatform = const Optional.absent(),

    this.vpsDiskused = const Optional.absent(),

    this.vpsDiskmax = const Optional.absent(),
  });

      /// VPS ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsId;



      /// Customer ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_custid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsCustid;



      /// Server ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_server',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsServer;



      /// IP address of the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsIp;



      /// IPv6 address of the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_ipv6',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsIpv6;



      /// VPS Virtuozzo ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_vzid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsVzid;



      /// Currency used for billing
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsCurrency;



      /// VPS type
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsType;



      /// Date of VPS order
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_order_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsOrderDate;



      /// VPS status
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsStatus;



      /// VPS invoice number
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_invoice',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsInvoice;



      /// VPS coupon code
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsCoupon;



      /// Additional information about the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsExtra;



      /// VPS hostname
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsHostname;



      /// Status of the VPS server
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_server_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsServerStatus;



      /// Comment associated with the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsComment;



      /// Number of VPS slices
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_slices',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsSlices;



      /// VNC address
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_vnc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsVnc;



      /// VNC port
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_vnc_port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsVncPort;



      /// Root password of the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_rootpass',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsRootpass;



      /// MAC address of the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_mac',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsMac;



      /// Operating system of the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_os',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsOs;



      /// Version of the operating system
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_version',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsVersion;



      /// Location of the VPS
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_location',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsLocation;



      /// Virtualization platform
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_platform',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsPlatform;



      /// Amount of disk space used
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_diskused',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsDiskused;



      /// Maximum disk space available
  @OptionalConverter()
  @JsonKey(
    
    name: r'vps_diskmax',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> vpsDiskmax;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsServiceInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            vpsId,
            vpsCustid,
            vpsServer,
            vpsIp,
            vpsIpv6,
            vpsVzid,
            vpsCurrency,
            vpsType,
            vpsOrderDate,
            vpsStatus,
            vpsInvoice,
            vpsCoupon,
            vpsExtra,
            vpsHostname,
            vpsServerStatus,
            vpsComment,
            vpsSlices,
            vpsVnc,
            vpsVncPort,
            vpsRootpass,
            vpsMac,
            vpsOs,
            vpsVersion,
            vpsLocation,
            vpsPlatform,
            vpsDiskused,
            vpsDiskmax,
        ],
        [
            other.vpsId,
            other.vpsCustid,
            other.vpsServer,
            other.vpsIp,
            other.vpsIpv6,
            other.vpsVzid,
            other.vpsCurrency,
            other.vpsType,
            other.vpsOrderDate,
            other.vpsStatus,
            other.vpsInvoice,
            other.vpsCoupon,
            other.vpsExtra,
            other.vpsHostname,
            other.vpsServerStatus,
            other.vpsComment,
            other.vpsSlices,
            other.vpsVnc,
            other.vpsVncPort,
            other.vpsRootpass,
            other.vpsMac,
            other.vpsOs,
            other.vpsVersion,
            other.vpsLocation,
            other.vpsPlatform,
            other.vpsDiskused,
            other.vpsDiskmax,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        vpsId,
        vpsCustid,
        vpsServer,
        vpsIp,
        vpsIpv6,
        vpsVzid,
        vpsCurrency,
        vpsType,
        vpsOrderDate,
        vpsStatus,
        vpsInvoice,
        vpsCoupon,
        vpsExtra,
        vpsHostname,
        vpsServerStatus,
        vpsComment,
        vpsSlices,
        vpsVnc,
        vpsVncPort,
        vpsRootpass,
        vpsMac,
        vpsOs,
        vpsVersion,
        vpsLocation,
        vpsPlatform,
        vpsDiskused,
        vpsDiskmax,
    ],);

  factory VpsServiceInfo.fromJson(Map<String, dynamic> json) => _$VpsServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VpsServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

