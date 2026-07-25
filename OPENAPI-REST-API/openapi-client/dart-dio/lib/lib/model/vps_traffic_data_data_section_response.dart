//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_traffic_data_data_section_response_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_data_data_section_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VPSTrafficDataDataSectionResponse {
  /// Returns a new [VPSTrafficDataDataSectionResponse] instance.
  VPSTrafficDataDataSectionResponse({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VPSTrafficDataDataSectionResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
        ],
        [
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
    ],);

  factory VPSTrafficDataDataSectionResponse.fromJson(Map<String, dynamic> json) => _$VPSTrafficDataDataSectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VPSTrafficDataDataSectionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

