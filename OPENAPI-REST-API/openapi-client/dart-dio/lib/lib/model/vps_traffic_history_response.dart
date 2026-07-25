//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_traffic_history_section_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_history_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTrafficHistoryResponse {
  /// Returns a new [VpsTrafficHistoryResponse] instance.
  VpsTrafficHistoryResponse({

    required  this.hour,

    required  this.day,
  });

  @JsonKey(
    
    name: r'hour',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficHistorySectionResponse hour;



  @JsonKey(
    
    name: r'day',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficHistorySectionResponse day;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTrafficHistoryResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            hour,
            day,
        ],
        [
            other.hour,
            other.day,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        hour,
        day,
    ],);

  factory VpsTrafficHistoryResponse.fromJson(Map<String, dynamic> json) => _$VpsTrafficHistoryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTrafficHistoryResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

