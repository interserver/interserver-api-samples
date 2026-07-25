//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:interserver_api/lib/model/mail_alerts_response_inner.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_alerts_response.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailAlertsResponse {
  /// Returns a new [MailAlertsResponse] instance.
  MailAlertsResponse({
  });


    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailAlertsResponse &&
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

  factory MailAlertsResponse.fromJson(Map<String, dynamic> json) => _$MailAlertsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MailAlertsResponseToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

