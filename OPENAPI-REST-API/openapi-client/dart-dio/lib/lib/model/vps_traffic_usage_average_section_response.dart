//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_usage_average_section_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTrafficUsageAverageSectionResponse {
  /// Returns a new [VpsTrafficUsageAverageSectionResponse] instance.
  VpsTrafficUsageAverageSectionResponse({

    required  this.total,

    required  this.count,

    required  this.value,
  });

  @JsonKey(
    
    name: r'total',
    required: true,
    includeIfNull: false,
  )


  final int total;



  @JsonKey(
    
    name: r'count',
    required: true,
    includeIfNull: false,
  )


  final int count;



  @JsonKey(
    
    name: r'value',
    required: true,
    includeIfNull: false,
  )


  final int value;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTrafficUsageAverageSectionResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            total,
            count,
            value,
        ],
        [
            other.total,
            other.count,
            other.value,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        total,
        count,
        value,
    ],);

  factory VpsTrafficUsageAverageSectionResponse.fromJson(Map<String, dynamic> json) => _$VpsTrafficUsageAverageSectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTrafficUsageAverageSectionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

