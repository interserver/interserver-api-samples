//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverServiceInfo {
  /// Returns a new [QuickserverServiceInfo] instance.
  QuickserverServiceInfo({

    this.qsId = const Optional.absent(),

    this.qsCustid = const Optional.absent(),

    this.qsServer = const Optional.absent(),

    this.qsIp = const Optional.absent(),

    this.qsIpv6 = const Optional.absent(),

    this.qsVzid = const Optional.absent(),

    this.qsCurrency = const Optional.absent(),

    this.qsType = const Optional.absent(),

    this.qsOrderDate = const Optional.absent(),

    this.qsStatus = const Optional.absent(),

    this.qsInvoice = const Optional.absent(),

    this.qsCoupon = const Optional.absent(),

    this.qsExtra = const Optional.absent(),

    this.qsHostname = const Optional.absent(),

    this.qsServerStatus = const Optional.absent(),

    this.qsComment = const Optional.absent(),

    this.qsSlices = const Optional.absent(),

    this.qsVnc = const Optional.absent(),

    this.qsVncPort = const Optional.absent(),

    this.qsRootpass = const Optional.absent(),

    this.qsMac = const Optional.absent(),

    this.qsOs = const Optional.absent(),

    this.qsVersion = const Optional.absent(),

    this.qsLocation = const Optional.absent(),

    this.qsPlatform = const Optional.absent(),
  });

      /// Quickserver ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsId;



      /// Customer ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_custid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsCustid;



      /// Server information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_server',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsServer;



      /// IP address
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsIp;



      /// IPv6 address (null)
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_ipv6',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsIpv6;



      /// VZ ID
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_vzid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsVzid;



      /// Currency
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsCurrency;



      /// Type
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsType;



      /// Order date
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_order_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsOrderDate;



      /// Status
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsStatus;



      /// Invoice number
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_invoice',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsInvoice;



      /// Coupon information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsCoupon;



      /// Extra information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsExtra;



      /// Hostname
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsHostname;



      /// Server status
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_server_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsServerStatus;



      /// Comment
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsComment;



      /// Slices information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_slices',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsSlices;



      /// VNC information
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_vnc',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsVnc;



      /// VNC port (null)
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_vnc_port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> qsVncPort;



      /// Root password
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_rootpass',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsRootpass;



      /// MAC address
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_mac',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsMac;



      /// Operating system
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_os',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsOs;



      /// OS version
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_version',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsVersion;



      /// Location
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_location',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsLocation;



      /// Platform (null)
  @OptionalConverter()
  @JsonKey(
    
    name: r'qs_platform',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> qsPlatform;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverServiceInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            qsId,
            qsCustid,
            qsServer,
            qsIp,
            qsIpv6,
            qsVzid,
            qsCurrency,
            qsType,
            qsOrderDate,
            qsStatus,
            qsInvoice,
            qsCoupon,
            qsExtra,
            qsHostname,
            qsServerStatus,
            qsComment,
            qsSlices,
            qsVnc,
            qsVncPort,
            qsRootpass,
            qsMac,
            qsOs,
            qsVersion,
            qsLocation,
            qsPlatform,
        ],
        [
            other.qsId,
            other.qsCustid,
            other.qsServer,
            other.qsIp,
            other.qsIpv6,
            other.qsVzid,
            other.qsCurrency,
            other.qsType,
            other.qsOrderDate,
            other.qsStatus,
            other.qsInvoice,
            other.qsCoupon,
            other.qsExtra,
            other.qsHostname,
            other.qsServerStatus,
            other.qsComment,
            other.qsSlices,
            other.qsVnc,
            other.qsVncPort,
            other.qsRootpass,
            other.qsMac,
            other.qsOs,
            other.qsVersion,
            other.qsLocation,
            other.qsPlatform,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        qsId,
        qsCustid,
        qsServer,
        qsIp,
        qsIpv6,
        qsVzid,
        qsCurrency,
        qsType,
        qsOrderDate,
        qsStatus,
        qsInvoice,
        qsCoupon,
        qsExtra,
        qsHostname,
        qsServerStatus,
        qsComment,
        qsSlices,
        qsVnc,
        qsVncPort,
        qsRootpass,
        qsMac,
        qsOs,
        qsVersion,
        qsLocation,
        qsPlatform,
    ],);

  factory QuickserverServiceInfo.fromJson(Map<String, dynamic> json) => _$QuickserverServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

