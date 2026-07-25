//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LicenseRow {
  /// Returns a new [LicenseRow] instance.
  LicenseRow({
    this.licenseId,
    this.licenseHostname,
    this.licenseIp,
    this.servicesName,
    this.cost,
    this.licenseStatus,
    this.invoicesPaid,
    this.invoicesDate,
  });

  /// The id of the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseId;

  /// The hostname of the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseHostname;

  /// The ip of the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseIp;

  /// The services name of the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesName;

  /// The cost of the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cost;

  /// The status of the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? licenseStatus;

  /// The invoices paid of the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? invoicesPaid;

  /// The invoices date of the license.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? invoicesDate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseRow &&
    other.licenseId == licenseId &&
    other.licenseHostname == licenseHostname &&
    other.licenseIp == licenseIp &&
    other.servicesName == servicesName &&
    other.cost == cost &&
    other.licenseStatus == licenseStatus &&
    other.invoicesPaid == invoicesPaid &&
    other.invoicesDate == invoicesDate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (licenseId == null ? 0 : licenseId!.hashCode) +
    (licenseHostname == null ? 0 : licenseHostname!.hashCode) +
    (licenseIp == null ? 0 : licenseIp!.hashCode) +
    (servicesName == null ? 0 : servicesName!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (licenseStatus == null ? 0 : licenseStatus!.hashCode) +
    (invoicesPaid == null ? 0 : invoicesPaid!.hashCode) +
    (invoicesDate == null ? 0 : invoicesDate!.hashCode);

  @override
  String toString() => 'LicenseRow[licenseId=$licenseId, licenseHostname=$licenseHostname, licenseIp=$licenseIp, servicesName=$servicesName, cost=$cost, licenseStatus=$licenseStatus, invoicesPaid=$invoicesPaid, invoicesDate=$invoicesDate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.licenseId != null) {
      json[r'license_id'] = this.licenseId;
    } else {
      json[r'license_id'] = null;
    }
    if (this.licenseHostname != null) {
      json[r'license_hostname'] = this.licenseHostname;
    } else {
      json[r'license_hostname'] = null;
    }
    if (this.licenseIp != null) {
      json[r'license_ip'] = this.licenseIp;
    } else {
      json[r'license_ip'] = null;
    }
    if (this.servicesName != null) {
      json[r'services_name'] = this.servicesName;
    } else {
      json[r'services_name'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.licenseStatus != null) {
      json[r'license_status'] = this.licenseStatus;
    } else {
      json[r'license_status'] = null;
    }
    if (this.invoicesPaid != null) {
      json[r'invoices_paid'] = this.invoicesPaid;
    } else {
      json[r'invoices_paid'] = null;
    }
    if (this.invoicesDate != null) {
      json[r'invoices_date'] = this.invoicesDate!.toUtc().toIso8601String();
    } else {
      json[r'invoices_date'] = null;
    }
    return json;
  }

  /// Returns a new [LicenseRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return LicenseRow(
        licenseId: mapValueOfType<String>(json, r'license_id'),
        licenseHostname: mapValueOfType<String>(json, r'license_hostname'),
        licenseIp: mapValueOfType<String>(json, r'license_ip'),
        servicesName: mapValueOfType<String>(json, r'services_name'),
        cost: mapValueOfType<String>(json, r'cost'),
        licenseStatus: mapValueOfType<String>(json, r'license_status'),
        invoicesPaid: mapValueOfType<String>(json, r'invoices_paid'),
        invoicesDate: mapDateTime(json, r'invoices_date', r''),
      );
    }
    return null;
  }

  static List<LicenseRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseRow> mapFromJson(dynamic json) {
    final map = <String, LicenseRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseRow-objects as value to a dart map
  static Map<String, List<LicenseRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

