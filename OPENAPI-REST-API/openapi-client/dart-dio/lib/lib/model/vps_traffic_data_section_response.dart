//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_traffic_data_data_section_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_data_section_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTrafficDataSectionResponse {
  /// Returns a new [VpsTrafficDataSectionResponse] instance.
  VpsTrafficDataSectionResponse({

    required  this.name,

    required  this.data,
  });

  @JsonKey(
    
    name: r'name',
    required: true,
    includeIfNull: false,
  )


  final String name;



  @JsonKey(
    
    name: r'data',
    required: true,
    includeIfNull: false,
  )


  final List<VPSTrafficDataDataSectionResponse> data;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTrafficDataSectionResponse &&
      runtimeType == other.runtimeType &&
      equals(
        [
            name,
            data,
        ],
        [
            other.name,
            other.data,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        name,
        data,
    ],);

  factory VpsTrafficDataSectionResponse.fromJson(Map<String, dynamic> json) => _$VpsTrafficDataSectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTrafficDataSectionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

