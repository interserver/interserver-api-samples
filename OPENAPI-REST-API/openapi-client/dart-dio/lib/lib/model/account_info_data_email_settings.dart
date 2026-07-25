//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/src/equatable_utils.dart';
import 'package:interserver_api/src/optional.dart';

part 'account_info_data_email_settings.g.dart';


@CopyWith()
@JsonSerializable(
  checked: true,
  createToJson: true,
  disallowUnrecognizedKeys: false,
  explicitToJson: true,
)
class AccountInfoDataEmailSettings {
  /// Returns a new [AccountInfoDataEmailSettings] instance.
  AccountInfoDataEmailSettings({

    this.adminSlashCcBadResponse = const Optional.absent(),

    this.adminSlashMassCommunicationsPeriodTpl = const Optional.absent(),
  });

  @OptionalConverter()
  @JsonKey(
    
    name: r'admin/cc_bad_response',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> adminSlashCcBadResponse;



  @OptionalConverter()
  @JsonKey(
    
    name: r'admin/mass_communications.tpl',
    required: false,
    includeIfNull: false,
    readValue: readOptionalValue,
  )


  final Optional<String?> adminSlashMassCommunicationsPeriodTpl;




    bool operator ==(Object other) {
      return identical(this, other) ||
      other is AccountInfoDataEmailSettings &&
      runtimeType == other.runtimeType &&
      equals(
        [
            adminSlashCcBadResponse,
            adminSlashMassCommunicationsPeriodTpl,
        ],
        [
            other.adminSlashCcBadResponse,
            other.adminSlashMassCommunicationsPeriodTpl,
        ]
      );
    }


    @override
    int get hashCode => runtimeType.hashCode ^ mapPropsToHashCode([
        adminSlashCcBadResponse,
        adminSlashMassCommunicationsPeriodTpl,
    ],);

  factory AccountInfoDataEmailSettings.fromJson(Map<String, dynamic> json) => _$AccountInfoDataEmailSettingsFromJson(json);

  Map<String, dynamic> toJson() => _$AccountInfoDataEmailSettingsToJson(this);

  @override
  String toString() {
    return toJson().toString();
  }

}

