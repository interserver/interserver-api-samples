//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_row.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsRow {
  /// Returns a new [VpsRow] instance.
  VpsRow({

    required  this.vpsId,

    required  this.vpsName,

    required  this.repeatInvoicesCost,

    required  this.vpsHostname,

    required  this.vpsIp,

    required  this.vpsStatus,

    required  this.servicesName,

    required  this.vpsComment,
  });

      /// The id of the vps.
  @JsonKey(
    
    name: r'vps_id',
    required: true,
    includeIfNull: false,
  )


  final String vpsId;



      /// The name of the vps.
  @JsonKey(
    
    name: r'vps_name',
    required: true,
    includeIfNull: false,
  )


  final String vpsName;



      /// The repeat invoices cost of the vps.
  @JsonKey(
    
    name: r'repeat_invoices_cost',
    required: true,
    includeIfNull: false,
  )


  final String repeatInvoicesCost;



      /// The hostname of the vps.
  @JsonKey(
    
    name: r'vps_hostname',
    required: true,
    includeIfNull: false,
  )


  final String vpsHostname;



      /// The ip of the vps.
  @JsonKey(
    
    name: r'vps_ip',
    required: true,
    includeIfNull: false,
  )


  final String vpsIp;



      /// The status of the vps.
  @JsonKey(
    
    name: r'vps_status',
    required: true,
    includeIfNull: false,
  )


  final String vpsStatus;



      /// The services name of the vps.
  @JsonKey(
    
    name: r'services_name',
    required: true,
    includeIfNull: false,
  )


  final String servicesName;



      /// The comment of the vps.
  @JsonKey(
    
    name: r'vps_comment',
    required: true,
    includeIfNull: false,
  )


  final String vpsComment;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsRow &&
      runtimeType == other.runtimeType &&
      equals(
        [
            vpsId,
            vpsName,
            repeatInvoicesCost,
            vpsHostname,
            vpsIp,
            vpsStatus,
            servicesName,
            vpsComment,
        ],
        [
            other.vpsId,
            other.vpsName,
            other.repeatInvoicesCost,
            other.vpsHostname,
            other.vpsIp,
            other.vpsStatus,
            other.servicesName,
            other.vpsComment,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        vpsId,
        vpsName,
        repeatInvoicesCost,
        vpsHostname,
        vpsIp,
        vpsStatus,
        servicesName,
        vpsComment,
    ],);

  factory VpsRow.fromJson(Map<String, dynamic> json) => _$VpsRowFromJson(json);

  Map<String, dynamic> toJson() => _$VpsRowToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

