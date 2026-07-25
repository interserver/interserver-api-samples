//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'mail_alerts_response_inner.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class MailAlertsResponseInner {
  /// Returns a new [MailAlertsResponseInner] instance.
  MailAlertsResponseInner({

    this.alertId = const Optional.absent(),

    this.alertType = const Optional.absent(),

    this.alertValue = const Optional.absent(),

    this.alertTo = const Optional.absent(),

    this.alertEnabled = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'alert_id',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<int?> alertId;



  @OptionalConverter()
  @JsonKey(
    
    name: r'alert_type',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> alertType;



  @OptionalConverter()
  @JsonKey(
    
    name: r'alert_value',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> alertValue;



  @OptionalConverter()
  @JsonKey(
    
    name: r'alert_to',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> alertTo;



  @OptionalConverter()
  @JsonKey(
    
    name: r'alert_enabled',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> alertEnabled;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is MailAlertsResponseInner &&
      runtimeType == other.runtimeType &&
      equals(
        [
            alertId,
            alertType,
            alertValue,
            alertTo,
            alertEnabled,
        ],
        [
            other.alertId,
            other.alertType,
            other.alertValue,
            other.alertTo,
            other.alertEnabled,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        alertId,
        alertType,
        alertValue,
        alertTo,
        alertEnabled,
    ],);

  factory MailAlertsResponseInner.fromJson(Map<String, dynamic> json) => _$MailAlertsResponseInnerFromJson(json);

  Map<String, dynamic> toJson() => _$MailAlertsResponseInnerToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

