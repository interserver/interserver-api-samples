//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'delete_firewall_rule.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeleteFirewallRule {
  /// Returns a new [DeleteFirewallRule] instance.
  DeleteFirewallRule({

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
      other is DeleteFirewallRule &&
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

  factory DeleteFirewallRule.fromJson(Map<String, dynamic> json) => _$DeleteFirewallRuleFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteFirewallRuleToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

