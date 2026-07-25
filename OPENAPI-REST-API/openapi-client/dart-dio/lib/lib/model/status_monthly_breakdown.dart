//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/monthly_counts.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'status_monthly_breakdown.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class StatusMonthlyBreakdown {
  /// Returns a new [StatusMonthlyBreakdown] instance.
  StatusMonthlyBreakdown({

    required  this.default_,

    required  this.failed,

    required  this.rejected,

    required  this.pending,

    required  this.locked,

    required  this.paid,
  });

  @JsonKey(
    
    name: r'default',
    required: true,
    includeIfNull: false,
  )


  final MonthlyCounts default_;



  @JsonKey(
    
    name: r'failed',
    required: true,
    includeIfNull: false,
  )


  final MonthlyCounts failed;



  @JsonKey(
    
    name: r'rejected',
    required: true,
    includeIfNull: false,
  )


  final MonthlyCounts rejected;



  @JsonKey(
    
    name: r'pending',
    required: true,
    includeIfNull: false,
  )


  final MonthlyCounts pending;



  @JsonKey(
    
    name: r'locked',
    required: true,
    includeIfNull: false,
  )


  final MonthlyCounts locked;



  @JsonKey(
    
    name: r'paid',
    required: true,
    includeIfNull: false,
  )


  final MonthlyCounts paid;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is StatusMonthlyBreakdown &&
      runtimeType == other.runtimeType &&
      equals(
        [
            default_,
            failed,
            rejected,
            pending,
            locked,
            paid,
        ],
        [
            other.default_,
            other.failed,
            other.rejected,
            other.pending,
            other.locked,
            other.paid,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        default_,
        failed,
        rejected,
        pending,
        locked,
        paid,
    ],);

  factory StatusMonthlyBreakdown.fromJson(Map<String, dynamic> json) => _$StatusMonthlyBreakdownFromJson(json);

  Map<String, dynamic> toJson() => _$StatusMonthlyBreakdownToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

