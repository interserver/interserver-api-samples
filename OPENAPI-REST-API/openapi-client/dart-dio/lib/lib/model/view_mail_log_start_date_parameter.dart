//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'view_mail_log_start_date_parameter.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class ViewMailLogStartDateParameter {
  /// Returns a new [ViewMailLogStartDateParameter] instance.
  ViewMailLogStartDateParameter({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is ViewMailLogStartDateParameter &&
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

  factory ViewMailLogStartDateParameter.fromJson(Map<String, dynamic> json) => _$ViewMailLogStartDateParameterFromJson(json);

  Map<String, dynamic> toJson() => _$ViewMailLogStartDateParameterToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

