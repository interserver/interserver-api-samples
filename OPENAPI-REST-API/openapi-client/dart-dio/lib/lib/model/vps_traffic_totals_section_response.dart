//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_totals_section_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTrafficTotalsSectionResponse {
  /// Returns a new [VpsTrafficTotalsSectionResponse] instance.
  VpsTrafficTotalsSectionResponse({

    required  this.in_,

    required  this.out_,
  });

  @JsonKey(
    
    name: r'in',
    required: true,
    includeIfNull: false,
  )


  final int in_;



  @JsonKey(
    
    name: r'out',
    required: true,
    includeIfNull: false,
  )


  final int out_;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTrafficTotalsSectionResponse &&
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

  factory VpsTrafficTotalsSectionResponse.fromJson(Map<String, dynamic> json) => _$VpsTrafficTotalsSectionResponseFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTrafficTotalsSectionResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

