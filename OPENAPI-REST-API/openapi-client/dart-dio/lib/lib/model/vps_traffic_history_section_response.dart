//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:time_machine/time_machine.dart';
import 'package:interserver_api/lib/model/vps_traffic_history_section_data_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_history_section_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTrafficHistorySectionResponse {
  /// Returns a new [VpsTrafficHistorySectionResponse] instance.
  VpsTrafficHistorySectionResponse({

    required  this.data,

    required  this.times,
  });

  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final List<VpsTrafficHistorySectionDataResponse> data;



  @JsonKey(
    
    name: r'times',
    required: true,
    includeIfNull: false,
  )


  final List<OffsetDateTime> times;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTrafficHistorySectionResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            data,
            times,
        ],
        [
            other.data,
            other.times,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        data,
        times,
    ],);

  factory VpsTrafficHistorySectionResponse.fromJson(Map<String, dynamic> json) => _$VpsTrafficHistorySectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTrafficHistorySectionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

