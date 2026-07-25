//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'delete_geo_firewall_rule.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeleteGeoFirewallRule {
  /// Returns a new [DeleteGeoFirewallRule] instance.
  DeleteGeoFirewallRule({

    required  this.ruleId,
  });

  @JsonKey(
    
    name: r'rule_id',
    required: true,
    includeIfNull: false,
  )


  final int ruleId;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DeleteGeoFirewallRule &&
      runtimeType == other.runtimeType &&
      equals(
        [
            ruleId,
        ],
        [
            other.ruleId,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        ruleId,
    ],);

  factory DeleteGeoFirewallRule.fromJson(Map<String, dynamic> json) => _$DeleteGeoFirewallRuleFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteGeoFirewallRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

