//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/server_bulk_ipmi_power_response_results_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'server_bulk_ipmi_power_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServerBulkIpmiPowerResponse {
  /// Returns a new [ServerBulkIpmiPowerResponse] instance.
  ServerBulkIpmiPowerResponse({

    required  this.results,
  });

  @JsonKey(
    
    name: r'results',
    required: true,
    includeIfNull: false,
  )


  final List<ServerBulkIpmiPowerResponseResultsInner> results;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServerBulkIpmiPowerResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            results,
        ],
        [
            other.results,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        results,
    ],);

  factory ServerBulkIpmiPowerResponse.fromJson(Map<String, dynamic> json) => _$ServerBulkIpmiPowerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$ServerBulkIpmiPowerResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

