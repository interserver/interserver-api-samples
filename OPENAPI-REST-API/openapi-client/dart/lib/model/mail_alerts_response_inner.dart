//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailAlertsResponseInner {
  /// Returns a new [MailAlertsResponseInner] instance.
  MailAlertsResponseInner({
    this.alertId,
    this.alertType,
    this.alertValue,
    this.alertTo,
    this.alertEnabled,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? alertId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alertType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alertValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alertTo;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? alertEnabled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailAlertsResponseInner &&
    other.alertId == alertId &&
    other.alertType == alertType &&
    other.alertValue == alertValue &&
    other.alertTo == alertTo &&
    other.alertEnabled == alertEnabled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alertId == null ? 0 : alertId!.hashCode) +
    (alertType == null ? 0 : alertType!.hashCode) +
    (alertValue == null ? 0 : alertValue!.hashCode) +
    (alertTo == null ? 0 : alertTo!.hashCode) +
    (alertEnabled == null ? 0 : alertEnabled!.hashCode);

  @override
  String toString() => 'MailAlertsResponseInner[alertId=$alertId, alertType=$alertType, alertValue=$alertValue, alertTo=$alertTo, alertEnabled=$alertEnabled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.alertId != null) {
      json[r'alert_id'] = this.alertId;
    } else {
      json[r'alert_id'] = null;
    }
    if (this.alertType != null) {
      json[r'alert_type'] = this.alertType;
    } else {
      json[r'alert_type'] = null;
    }
    if (this.alertValue != null) {
      json[r'alert_value'] = this.alertValue;
    } else {
      json[r'alert_value'] = null;
    }
    if (this.alertTo != null) {
      json[r'alert_to'] = this.alertTo;
    } else {
      json[r'alert_to'] = null;
    }
    if (this.alertEnabled != null) {
      json[r'alert_enabled'] = this.alertEnabled;
    } else {
      json[r'alert_enabled'] = null;
    }
    return json;
  }

  /// Returns a new [MailAlertsResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailAlertsResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailAlertsResponseInner(
        alertId: mapValueOfType<int>(json, r'alert_id'),
        alertType: mapValueOfType<String>(json, r'alert_type'),
        alertValue: mapValueOfType<String>(json, r'alert_value'),
        alertTo: mapValueOfType<String>(json, r'alert_to'),
        alertEnabled: mapValueOfType<String>(json, r'alert_enabled'),
      );
    }
    return null;
  }

  static List<MailAlertsResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailAlertsResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailAlertsResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailAlertsResponseInner> mapFromJson(dynamic json) {
    final map = <String, MailAlertsResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailAlertsResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailAlertsResponseInner-objects as value to a dart map
  static Map<String, List<MailAlertsResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailAlertsResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailAlertsResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

