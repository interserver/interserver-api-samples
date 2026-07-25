//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_traffic_usage_average_section_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_usage_average_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTrafficUsageAverageResponse {
  /// Returns a new [VpsTrafficUsageAverageResponse] instance.
  VpsTrafficUsageAverageResponse({

    required  this.in_,

    required  this.out_,
  });

  @JsonKey(
    
    name: r'in',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficUsageAverageSectionResponse in_;



  @JsonKey(
    
    name: r'out',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficUsageAverageSectionResponse out_;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTrafficUsageAverageResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            in_,
            out_,
        ],
        [
            other.in_,
            other.out_,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        in_,
        out_,
    ],);

  factory VpsTrafficUsageAverageResponse.fromJson(Map<String, dynamic> json) => _$VpsTrafficUsageAverageResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTrafficUsageAverageResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

