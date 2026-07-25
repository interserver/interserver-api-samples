//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_alert_update_request.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailAlertUpdateRequest {
  /// Returns a new [MailAlertUpdateRequest] instance.
  MailAlertUpdateRequest({

    this.alertId = const Optional.absent(),

    this.type = const Optional.absent(),

    this.value = const Optional.absent(),

    this.to = const Optional.absent(),

    this.enabled = const Optional.absent(),
  });

      /// Alert ID to update.
  @OptionalConverter()
  @JsonKey(
    
    name: r'alert_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> alertId;



      /// Alert type identifier.
  @OptionalConverter()
  @JsonKey(
    
    name: r'type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> type;



      /// Alert value or threshold.
  @OptionalConverter()
  @JsonKey(
    
    name: r'value',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> value;



      /// Email address to notify.
  @OptionalConverter()
  @JsonKey(
    
    name: r'to',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> to;



      /// Whether the alert is enabled.
  @OptionalConverter()
  @JsonKey(
    
    name: r'enabled',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> enabled;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailAlertUpdateRequest &&
      runtimeType == other.runtimeType &&
      equals(
        [
            alertId,
            type,
            value,
            to,
            enabled,
        ],
        [
            other.alertId,
            other.type,
            other.value,
            other.to,
            other.enabled,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        alertId,
        type,
        value,
        to,
        enabled,
    ],);

  factory MailAlertUpdateRequest.fromJson(Map<String, dynamic> json) => _$MailAlertUpdateRequestFromJson(json);

  Map<String, dynamic> toJson() => _$MailAlertUpdateRequestToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

