//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/service_type.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'service_types.g.dart';

// ignore_for_file: unused_import


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ServiceTypes {
  /// Returns a new [ServiceTypes] instance.
  ServiceTypes({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ServiceTypes &&
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

  factory ServiceTypes.fromJson(Map<String, dynamic> json) => _$ServiceTypesFromJson(json);

  Map<String, dynamic> toJson() => _$ServiceTypesToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

