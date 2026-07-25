//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_bulk_ipmi_power_response_results_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerBulkIpmiPowerResponseResultsInner {
  /// Returns a new [ServerBulkIpmiPowerResponseResultsInner] instance.
  ServerBulkIpmiPowerResponseResultsInner({

    this.id = const Optional.absent(),

    this.asset = const Optional.absent(),

    this.text = const Optional.absent(),

    this.error = const Optional.absent(),
  });

      /// Server ID this result corresponds to.
  @OptionalConverter()
  @JsonKey(
    
    name: r'id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> id;



      /// Asset ID that was queried for the server (omitted on errors before asset selection).
  @OptionalConverter()
  @JsonKey(
    
    name: r'asset',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> asset;



      /// IPMI power-status output for this server.
  @OptionalConverter()
  @JsonKey(
    
    name: r'text',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> text;



      /// Error message for this server, if processing failed (mutually exclusive with `text`).
  @OptionalConverter()
  @JsonKey(
    
    name: r'error',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> error;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerBulkIpmiPowerResponseResultsInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            id,
            asset,
            text,
            error,
        ],
        [
            other.id,
            other.asset,
            other.text,
            other.error,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        id,
        asset,
        text,
        error,
    ],);

  factory ServerBulkIpmiPowerResponseResultsInner.fromJson(Map<String, dynamic> json) => _$ServerBulkIpmiPowerResponseResultsInnerFromJson(json);

  Map<String, dynamic> toJson() => _$ServerBulkIpmiPowerResponseResultsInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

