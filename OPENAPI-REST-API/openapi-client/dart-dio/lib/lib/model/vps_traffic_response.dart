//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_traffic_usage_response.dart';
import 'package:time_machine/time_machine.dart';
import 'package:interserver_api/lib/model/vps_traffic_history_response.dart';
import 'package:interserver_api/lib/model/vps_traffic_totals_resposne.dart';
import 'package:interserver_api/lib/model/vps_traffic_data_section_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTrafficResponse {
  /// Returns a new [VpsTrafficResponse] instance.
  VpsTrafficResponse({

    required  this.name,

    required  this.target,

    required  this.interval,

    required  this.history,

    required  this.last,

    required  this.times,

    required  this.totals,

    required  this.usage,

    required  this.data,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'target',
    required: true,
    includeIfNull: false,
  )


  final String target;



  @JsonKey(
    
    name: r'interval',
    required: true,
    includeIfNull: false,
  )


  final int interval;



  @JsonKey(
    
    name: r'history',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficHistoryResponse history;



  @JsonKey(
    
    name: r'last',
    required: true,
    includeIfNull: false,
  )


  final OffsetDateTime last;



  @JsonKey(
    
    name: r'times',
    required: true,
    includeIfNull: false,
  )


  final List<OffsetDateTime> times;



  @JsonKey(
    
    name: r'totals',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficTotalsResposne totals;



  @JsonKey(
    
    name: r'usage',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficUsageResponse usage;



  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final List<VpsTrafficDataSectionResponse> data;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTrafficResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            target,
            interval,
            history,
            last,
            times,
            totals,
            usage,
            data,
        ],
        [
            other.name,
            other.target,
            other.interval,
            other.history,
            other.last,
            other.times,
            other.totals,
            other.usage,
            other.data,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        target,
        interval,
        history,
        last,
        times,
        totals,
        usage,
        data,
    ],);

  factory VpsTrafficResponse.fromJson(Map<String, dynamic> json) => _$VpsTrafficResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTrafficResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

