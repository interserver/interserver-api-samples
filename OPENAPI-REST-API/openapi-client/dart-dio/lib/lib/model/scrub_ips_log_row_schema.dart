//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'scrub_ips_log_row_schema.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ScrubIpsLogRowSchema {
  /// Returns a new [ScrubIpsLogRowSchema] instance.
  ScrubIpsLogRowSchema({

    this.date = const Optional.absent(),

    this.filter = const Optional.absent(),

    this.blockedIp = const Optional.absent(),

    this.targetIp = const Optional.absent(),

    this.targetPort = const Optional.absent(),

    this.protocol = const Optional.absent(),

    this.byteCount = const Optional.absent(),

    this.xdpAction = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'date',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> date;



  @OptionalConverter()
  @JsonKey(
    
    name: r'filter',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> filter;



  @OptionalConverter()
  @JsonKey(
    
    name: r'blocked_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> blockedIp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'target_ip',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> targetIp;



  @OptionalConverter()
  @JsonKey(
    
    name: r'target_port',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> targetPort;



  @OptionalConverter()
  @JsonKey(
    
    name: r'protocol',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> protocol;



  @OptionalConverter()
  @JsonKey(
    
    name: r'byte_count',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<num?> byteCount;



  @OptionalConverter()
  @JsonKey(
    
    name: r'xdp_action',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> xdpAction;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ScrubIpsLogRowSchema &&
      runtimeType == other.runtimeType &&
      equals(
        [
            date,
            filter,
            blockedIp,
            targetIp,
            targetPort,
            protocol,
            byteCount,
            xdpAction,
        ],
        [
            other.date,
            other.filter,
            other.blockedIp,
            other.targetIp,
            other.targetPort,
            other.protocol,
            other.byteCount,
            other.xdpAction,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        date,
        filter,
        blockedIp,
        targetIp,
        targetPort,
        protocol,
        byteCount,
        xdpAction,
    ],);

  factory ScrubIpsLogRowSchema.fromJson(Map<String, dynamic> json) => _$ScrubIpsLogRowSchemaFromJson(json);

  Map<String, dynamic> toJson() => _$ScrubIpsLogRowSchemaToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

