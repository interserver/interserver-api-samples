//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/vps_traffic_totals_section_response.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'vps_traffic_totals_resposne.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class VpsTrafficTotalsResposne {
  /// Returns a new [VpsTrafficTotalsResposne] instance.
  VpsTrafficTotalsResposne({

    required  this.day,

    required  this.month,

    required  this.year,

    required  this.all,
  });

  @JsonKey(
    
    name: r'day',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficTotalsSectionResponse day;



  @JsonKey(
    
    name: r'month',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficTotalsSectionResponse month;



  @JsonKey(
    
    name: r'year',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficTotalsSectionResponse year;



  @JsonKey(
    
    name: r'all',
    required: true,
    includeIfNull: false,
  )


  final VpsTrafficTotalsSectionResponse all;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is VpsTrafficTotalsResposne &&
      runtimeType == other.runtimeType &&
      equals(
        [
            day,
            month,
            year,
            all,
        ],
        [
            other.day,
            other.month,
            other.year,
            other.all,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        day,
        month,
        year,
        all,
    ],);

  factory VpsTrafficTotalsResposne.fromJson(Map<String, dynamic> json) => _$VpsTrafficTotalsResposneFromJson(json);

  Map<String, dynamic> toJson() => _$VpsTrafficTotalsResposneToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

