//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailStatsTypeVolumeFrom {
  /// Returns a new [MailStatsTypeVolumeFrom] instance.
  MailStatsTypeVolumeFrom({
    this.billingAtSomedomainPeriodCom,
    this.salesAtSomedomainPeriodCom,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? billingAtSomedomainPeriodCom;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? salesAtSomedomainPeriodCom;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailStatsTypeVolumeFrom &&
    other.billingAtSomedomainPeriodCom == billingAtSomedomainPeriodCom &&
    other.salesAtSomedomainPeriodCom == salesAtSomedomainPeriodCom;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (billingAtSomedomainPeriodCom == null ? 0 : billingAtSomedomainPeriodCom!.hashCode) +
    (salesAtSomedomainPeriodCom == null ? 0 : salesAtSomedomainPeriodCom!.hashCode);

  @override
  String toString() => 'MailStatsTypeVolumeFrom[billingAtSomedomainPeriodCom=$billingAtSomedomainPeriodCom, salesAtSomedomainPeriodCom=$salesAtSomedomainPeriodCom]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.billingAtSomedomainPeriodCom != null) {
      json[r'billing@somedomain.com'] = this.billingAtSomedomainPeriodCom;
    } else {
      json[r'billing@somedomain.com'] = null;
    }
    if (this.salesAtSomedomainPeriodCom != null) {
      json[r'sales@somedomain.com'] = this.salesAtSomedomainPeriodCom;
    } else {
      json[r'sales@somedomain.com'] = null;
    }
    return json;
  }

  /// Returns a new [MailStatsTypeVolumeFrom] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailStatsTypeVolumeFrom? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailStatsTypeVolumeFrom(
        billingAtSomedomainPeriodCom: mapValueOfType<int>(json, r'billing@somedomain.com'),
        salesAtSomedomainPeriodCom: mapValueOfType<int>(json, r'sales@somedomain.com'),
      );
    }
    return null;
  }

  static List<MailStatsTypeVolumeFrom> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailStatsTypeVolumeFrom>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailStatsTypeVolumeFrom.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailStatsTypeVolumeFrom> mapFromJson(dynamic json) {
    final map = <String, MailStatsTypeVolumeFrom>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailStatsTypeVolumeFrom.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailStatsTypeVolumeFrom-objects as value to a dart map
  static Map<String, List<MailStatsTypeVolumeFrom>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailStatsTypeVolumeFrom>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailStatsTypeVolumeFrom.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

