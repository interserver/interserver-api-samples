//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_max_mind_response_risk_score.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoMaxMindResponseRiskScore {
  /// Returns a new [AccountInfoMaxMindResponseRiskScore] instance.
  AccountInfoMaxMindResponseRiskScore({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoMaxMindResponseRiskScore &&
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

  factory AccountInfoMaxMindResponseRiskScore.fromJson(Map<String, dynamic> json) => _$AccountInfoMaxMindResponseRiskScoreFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoMaxMindResponseRiskScoreToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

