//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class AccountInfoDataEmailSettings {
  /// Returns a new [AccountInfoDataEmailSettings] instance.
  AccountInfoDataEmailSettings({
    this.adminSlashCcBadResponse,
    this.adminSlashMassCommunicationsPeriodTpl,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? adminSlashCcBadResponse;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? adminSlashMassCommunicationsPeriodTpl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountInfoDataEmailSettings &&
    other.adminSlashCcBadResponse == adminSlashCcBadResponse &&
    other.adminSlashMassCommunicationsPeriodTpl == adminSlashMassCommunicationsPeriodTpl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (adminSlashCcBadResponse == null ? 0 : adminSlashCcBadResponse!.hashCode) +
    (adminSlashMassCommunicationsPeriodTpl == null ? 0 : adminSlashMassCommunicationsPeriodTpl!.hashCode);

  @override
  String toString() => 'AccountInfoDataEmailSettings[adminSlashCcBadResponse=$adminSlashCcBadResponse, adminSlashMassCommunicationsPeriodTpl=$adminSlashMassCommunicationsPeriodTpl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.adminSlashCcBadResponse != null) {
      json[r'admin/cc_bad_response'] = this.adminSlashCcBadResponse;
    } else {
      json[r'admin/cc_bad_response'] = null;
    }
    if (this.adminSlashMassCommunicationsPeriodTpl != null) {
      json[r'admin/mass_communications.tpl'] = this.adminSlashMassCommunicationsPeriodTpl;
    } else {
      json[r'admin/mass_communications.tpl'] = null;
    }
    return json;
  }

  /// Returns a new [AccountInfoDataEmailSettings] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountInfoDataEmailSettings? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return AccountInfoDataEmailSettings(
        adminSlashCcBadResponse: mapValueOfType<String>(json, r'admin/cc_bad_response'),
        adminSlashMassCommunicationsPeriodTpl: mapValueOfType<String>(json, r'admin/mass_communications.tpl'),
      );
    }
    return null;
  }

  static List<AccountInfoDataEmailSettings> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountInfoDataEmailSettings>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountInfoDataEmailSettings.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountInfoDataEmailSettings> mapFromJson(dynamic json) {
    final map = <String, AccountInfoDataEmailSettings>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountInfoDataEmailSettings.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountInfoDataEmailSettings-objects as value to a dart map
  static Map<String, List<AccountInfoDataEmailSettings>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountInfoDataEmailSettings>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountInfoDataEmailSettings.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

