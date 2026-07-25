//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'delete_mail_alert_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class DeleteMailAlertRequest {
  /// Returns a new [DeleteMailAlertRequest] instance.
  DeleteMailAlertRequest({

    required  this.alertId,
  });

      /// The ID of the alert to delete.
  @JsonKey(
    
    name: r'alert_id',
    required: true,
    includeIfNull: false,
  )


  final int alertId;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is DeleteMailAlertRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            alertId,
        ],
        [
            other.alertId,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        alertId,
    ],);

  factory DeleteMailAlertRequest.fromJson(Map<String, dynamic> json) => _$DeleteMailAlertRequestFromJson(json);

  Map<String, dynamic> toJson() => _$DeleteMailAlertRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

