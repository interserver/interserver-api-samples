//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'quickserver_order_templates_ubuntu64.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class QuickserverOrderTemplatesUbuntu64 {
  /// Returns a new [QuickserverOrderTemplatesUbuntu64] instance.
  QuickserverOrderTemplatesUbuntu64({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is QuickserverOrderTemplatesUbuntu64 &&
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

  factory QuickserverOrderTemplatesUbuntu64.fromJson(Map<String, dynamic> json) => _$QuickserverOrderTemplatesUbuntu64FromJson(json);

  Map<String, dynamic> toJson() => _$QuickserverOrderTemplatesUbuntu64ToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

