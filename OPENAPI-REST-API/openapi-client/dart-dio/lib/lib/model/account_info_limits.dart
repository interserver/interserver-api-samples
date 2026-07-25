//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/account_info_limits_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_limits.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoLimits {
  /// Returns a new [AccountInfoLimits] instance.
  AccountInfoLimits({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoLimits &&
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

  factory AccountInfoLimits.fromJson(Map<String, dynamic> json) => _$AccountInfoLimitsFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoLimitsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

