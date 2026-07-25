//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'monthly_counts.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MonthlyCounts {
  /// Returns a new [MonthlyCounts] instance.
  MonthlyCounts({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MonthlyCounts &&
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

  factory MonthlyCounts.fromJson(Map<String, dynamic> json) => _$MonthlyCountsFromJson(json);

  Map<String, dynamic> toJson() => _$MonthlyCountsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

