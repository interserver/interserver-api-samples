//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'backup_service_info.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class BackupServiceInfo {
  /// Returns a new [BackupServiceInfo] instance.
  BackupServiceInfo({

    this.backupId = const Optional.absent(),

    this.backupServer = const Optional.absent(),

    this.backupUsername = const Optional.absent(),

    this.backupType = const Optional.absent(),

    this.backupCurrency = const Optional.absent(),

    this.backupOrderDate = const Optional.absent(),

    this.backupCustid = const Optional.absent(),

    this.backupQuota = const Optional.absent(),

    this.backupIp = const Optional.absent(),

    this.backupStatus = const Optional.absent(),

    this.backupInvoice = const Optional.absent(),

    this.backupCoupon = const Optional.absent(),

    this.backupExtra = const Optional.absent(),

    this.backupServerStatus = const Optional.absent(),

    this.backupComment = const Optional.absent(),
  });

      /// Backup ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupId;



      /// Backup server ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_server',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupServer;



      /// Backup username.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_username',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupUsername;



      /// Backup type.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupType;



      /// Backup currency.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_currency',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupCurrency;



      /// Backup order date.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_order_date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupOrderDate;



      /// Backup customer ID.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_custid',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupCustid;



      /// Backup quota.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_quota',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupQuota;



      /// Backup IP address.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupIp;



      /// Backup status.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupStatus;



      /// Backup invoice.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_invoice',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupInvoice;



      /// Backup coupon.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_coupon',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupCoupon;



      /// Backup extra information.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_extra',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupExtra;



      /// Backup server status.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_server_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupServerStatus;



      /// Backup comment.
  @OptionalConverter()
  @JsonKey(
    
    name: r'backup_comment',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> backupComment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is BackupServiceInfo &&
      runtimeType == other.runtimeType &&
      equals(
        [
            backupId,
            backupServer,
            backupUsername,
            backupType,
            backupCurrency,
            backupOrderDate,
            backupCustid,
            backupQuota,
            backupIp,
            backupStatus,
            backupInvoice,
            backupCoupon,
            backupExtra,
            backupServerStatus,
            backupComment,
        ],
        [
            other.backupId,
            other.backupServer,
            other.backupUsername,
            other.backupType,
            other.backupCurrency,
            other.backupOrderDate,
            other.backupCustid,
            other.backupQuota,
            other.backupIp,
            other.backupStatus,
            other.backupInvoice,
            other.backupCoupon,
            other.backupExtra,
            other.backupServerStatus,
            other.backupComment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        backupId,
        backupServer,
        backupUsername,
        backupType,
        backupCurrency,
        backupOrderDate,
        backupCustid,
        backupQuota,
        backupIp,
        backupStatus,
        backupInvoice,
        backupCoupon,
        backupExtra,
        backupServerStatus,
        backupComment,
    ],);

  factory BackupServiceInfo.fromJson(Map<String, dynamic> json) => _$BackupServiceInfoFromJson(json);

  Map<String, dynamic> toJson() => _$BackupServiceInfoToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

