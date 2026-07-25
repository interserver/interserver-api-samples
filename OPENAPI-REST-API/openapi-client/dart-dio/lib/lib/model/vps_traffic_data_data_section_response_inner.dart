//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_data_data_section_response_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VPSTrafficDataDataSectionResponseInner {
  /// Returns a new [VPSTrafficDataDataSectionResponseInner] instance.
  VPSTrafficDataDataSectionResponseInner({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VPSTrafficDataDataSectionResponseInner &&
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

  factory VPSTrafficDataDataSectionResponseInner.fromJson(Map<String, dynamic> json) => _$VPSTrafficDataDataSectionResponseInnerFromJson(json);

  Map<String, dynamic> toJson() => _$VPSTrafficDataDataSectionResponseInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

