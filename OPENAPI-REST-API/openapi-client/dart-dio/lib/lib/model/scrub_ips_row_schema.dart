//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'scrub_ips_row_schema.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScrubIpsRowSchema {
  /// Returns a new [ScrubIpsRowSchema] instance.
  ScrubIpsRowSchema({

    this.scrubIpId = const Optional.absent(),

    this.repeatInvoicesCost = const Optional.absent(),

    this.scrubIpIp = const Optional.absent(),

    this.scrubIpStatus = const Optional.absent(),

    this.servicesName = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> scrubIpId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'repeat_invoices_cost',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> repeatInvoicesCost;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpIp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'scrub_ip_status',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> scrubIpStatus;



  @OptionalConverter()
  @JsonKey(
    
    name: r'services_name',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> servicesName;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ScrubIpsRowSchema &&
      runtimeType == other.runtimeType &&
      equals(
        [
            scrubIpId,
            repeatInvoicesCost,
            scrubIpIp,
            scrubIpStatus,
            servicesName,
        ],
        [
            other.scrubIpId,
            other.repeatInvoicesCost,
            other.scrubIpIp,
            other.scrubIpStatus,
            other.servicesName,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        scrubIpId,
        repeatInvoicesCost,
        scrubIpIp,
        scrubIpStatus,
        servicesName,
    ],);

  factory ScrubIpsRowSchema.fromJson(Map<String, dynamic> json) => _$ScrubIpsRowSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$ScrubIpsRowSchemaToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

