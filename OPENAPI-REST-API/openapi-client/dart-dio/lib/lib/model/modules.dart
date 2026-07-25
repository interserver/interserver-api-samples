//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/module_settings.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'modules.g.dart';

// ignore_for_file: unused_import


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class Modules {
  /// Returns a new [Modules] instance.
  Modules({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is Modules &&
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

  factory Modules.fromJson(Map<String, dynamic> json) => _$ModulesFromJson(json);

  Map<String, dynamic> toJson() => _$ModulesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

