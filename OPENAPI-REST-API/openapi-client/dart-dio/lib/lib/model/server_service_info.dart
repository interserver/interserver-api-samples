//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerServiceInfo {
  /// Returns a new [ServerServiceInfo] instance.
  ServerServiceInfo({

    this.serverId = const Optional.absent(),

    this.serverHostname = const Optional.absent(),

    this.serverCustid = const Optional.absent(),

    this.serverType = const Optional.absent(),

    this.serverCurrency = const Optional.absent(),

    this.serverOrderDate = const Optional.absent(),

    this.serverInvoice = const Optional.absent(),

    this.serverCoupon = const Optional.absent(),

    this.serverStatus = const Optional.absent(),

    this.serverRoot = const Optional.absent(),

    this.serverDedicatedTag = const Optional.absent(),

    this.serverCustomTag = const Optional.absent(),

    this.serverComment = const Optional.absent(),

    this.serverInitialBill = const Optional.absent(),

    this.serverHardware = const Optional.absent(),

    this.serverIps = const Optional.absent(),

    this.serverMonthlyBill = const Optional.absent(),

    this.serverSetup = const Optional.absent(),

    this.serverDiscount = const Optional.absent(),

    this.serverRep = const Optional.absent(),

    this.serverDate = const Optional.absent(),

    this.serverTotalCost = const Optional.absent(),

    this.serverLocation = const Optional.absent(),

    this.serverHardwareOrdered = const Optional.absent(),

    this.serverBilled = const Optional.absent(),

    this.serverWelcomeEmail = const Optional.absent(),

    this.serverDedicatedCpu = const Optional.absent(),

    this.serverDedicatedMemory = const Optional.absent(),

    this.serverDedicatedHd1 = const Optional.absent(),

    this.serverDedicatedHd2 = const Optional.absent(),

    this.serverDedicatedBandwidth = const Optional.absent(),

    this.serverDedicatedIps = const Optional.absent(),

    this.serverDedicatedOs = const Optional.absent(),

    this.serverDedicatedCp = const Optional.absent(),

    this.serverDedicatedRaid = const Optional.absent(),

    this.serverExtra = const Optional.absent(),
  });

      /// The ID of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverId;



      /// The hostname of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_hostname',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverHostname;



      /// The customer ID associated with the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_custid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverCustid;



      /// The type of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverType;



      /// The currency used for billing.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverCurrency;



      /// The date when the server was ordered.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_order_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverOrderDate;



      /// The invoice number for the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_invoice',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverInvoice;



      /// The coupon associated with the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverCoupon;



      /// The status of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverStatus;



      /// The root of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_root',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverRoot;



      /// The dedicated tag of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_tag',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedTag;



      /// The custom tag of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_custom_tag',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverCustomTag;



      /// Comments related to the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverComment;



      /// The initial billing amount for the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_initial_bill',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverInitialBill;



      /// The hardware information of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_hardware',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverHardware;



      /// The number of IPs associated with the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverIps;



      /// The monthly billing amount for the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_monthly_bill',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverMonthlyBill;



      /// The setup status of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_setup',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverSetup;



      /// Discount information for the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_discount',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDiscount;



      /// The reputation of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_rep',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverRep;



      /// The date related to the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDate;



      /// The total cost of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_total_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverTotalCost;



      /// The location of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_location',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverLocation;



      /// The ordered hardware for the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_hardware_ordered',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverHardwareOrdered;



      /// The billed amount for the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_billed',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverBilled;



      /// Indicates whether a welcome email was sent.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_welcome_email',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverWelcomeEmail;



      /// The number of dedicated CPUs for the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_cpu',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedCpu;



      /// The amount of dedicated memory for the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_memory',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedMemory;



      /// The size of the first dedicated hard drive.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_hd1',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedHd1;



      /// The size of the second dedicated hard drive.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_hd2',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedHd2;



      /// The bandwidth of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_bandwidth',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedBandwidth;



      /// The number of dedicated IPs for the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_ips',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedIps;



      /// The operating system of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_os',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedOs;



      /// The control panel of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_cp',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedCp;



      /// The RAID configuration of the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_dedicated_raid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverDedicatedRaid;



      /// Additional information about the server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'server_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> serverExtra;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerServiceInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            serverId,
            serverHostname,
            serverCustid,
            serverType,
            serverCurrency,
            serverOrderDate,
            serverInvoice,
            serverCoupon,
            serverStatus,
            serverRoot,
            serverDedicatedTag,
            serverCustomTag,
            serverComment,
            serverInitialBill,
            serverHardware,
            serverIps,
            serverMonthlyBill,
            serverSetup,
            serverDiscount,
            serverRep,
            serverDate,
            serverTotalCost,
            serverLocation,
            serverHardwareOrdered,
            serverBilled,
            serverWelcomeEmail,
            serverDedicatedCpu,
            serverDedicatedMemory,
            serverDedicatedHd1,
            serverDedicatedHd2,
            serverDedicatedBandwidth,
            serverDedicatedIps,
            serverDedicatedOs,
            serverDedicatedCp,
            serverDedicatedRaid,
            serverExtra,
        ],
        [
            other.serverId,
            other.serverHostname,
            other.serverCustid,
            other.serverType,
            other.serverCurrency,
            other.serverOrderDate,
            other.serverInvoice,
            other.serverCoupon,
            other.serverStatus,
            other.serverRoot,
            other.serverDedicatedTag,
            other.serverCustomTag,
            other.serverComment,
            other.serverInitialBill,
            other.serverHardware,
            other.serverIps,
            other.serverMonthlyBill,
            other.serverSetup,
            other.serverDiscount,
            other.serverRep,
            other.serverDate,
            other.serverTotalCost,
            other.serverLocation,
            other.serverHardwareOrdered,
            other.serverBilled,
            other.serverWelcomeEmail,
            other.serverDedicatedCpu,
            other.serverDedicatedMemory,
            other.serverDedicatedHd1,
            other.serverDedicatedHd2,
            other.serverDedicatedBandwidth,
            other.serverDedicatedIps,
            other.serverDedicatedOs,
            other.serverDedicatedCp,
            other.serverDedicatedRaid,
            other.serverExtra,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        serverId,
        serverHostname,
        serverCustid,
        serverType,
        serverCurrency,
        serverOrderDate,
        serverInvoice,
        serverCoupon,
        serverStatus,
        serverRoot,
        serverDedicatedTag,
        serverCustomTag,
        serverComment,
        serverInitialBill,
        serverHardware,
        serverIps,
        serverMonthlyBill,
        serverSetup,
        serverDiscount,
        serverRep,
        serverDate,
        serverTotalCost,
        serverLocation,
        serverHardwareOrdered,
        serverBilled,
        serverWelcomeEmail,
        serverDedicatedCpu,
        serverDedicatedMemory,
        serverDedicatedHd1,
        serverDedicatedHd2,
        serverDedicatedBandwidth,
        serverDedicatedIps,
        serverDedicatedOs,
        serverDedicatedCp,
        serverDedicatedRaid,
        serverExtra,
    ],);

  factory ServerServiceInfo.fromJson(Map<String, dynamic> json) => _$ServerServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$ServerServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

