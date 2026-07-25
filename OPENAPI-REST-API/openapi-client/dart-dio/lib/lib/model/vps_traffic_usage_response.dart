//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_traffic_totals_section_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_usage_average_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_usage_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTrafficUsageResponse {
  /// Returns a new [VpsTrafficUsageResponse] instance.
  VpsTrafficUsageResponse({

    required  this.current,

    required  this.peak,

    required  this.average,
  });

  @JsonKey(
    
    name: r'current',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficTotalsSectionResponse current;



  @JsonKey(
    
    name: r'peak',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficTotalsSectionResponse peak;



  @JsonKey(
    
    name: r'average',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficUsageAverageResponse average;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTrafficUsageResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            current,
            peak,
            average,
        ],
        [
            other.current,
            other.peak,
            other.average,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        current,
        peak,
        average,
    ],);

  factory VpsTrafficUsageResponse.fromJson(Map<String, dynamic> json) => _$VpsTrafficUsageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTrafficUsageResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

