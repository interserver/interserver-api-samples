//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ScrubIpsRowSchema {
  /// Returns a new [ScrubIpsRowSchema] instance.
  ScrubIpsRowSchema({
    this.scrubIpId,
    this.repeatInvoicesCost,
    this.scrubIpIp,
    this.scrubIpStatus,
    this.servicesName,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scrubIpId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? repeatInvoicesCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scrubIpStatus;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScrubIpsRowSchema &&
    other.scrubIpId == scrubIpId &&
    other.repeatInvoicesCost == repeatInvoicesCost &&
    other.scrubIpIp == scrubIpIp &&
    other.scrubIpStatus == scrubIpStatus &&
    other.servicesName == servicesName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (scrubIpId == null ? 0 : scrubIpId!.hashCode) +
    (repeatInvoicesCost == null ? 0 : repeatInvoicesCost!.hashCode) +
    (scrubIpIp == null ? 0 : scrubIpIp!.hashCode) +
    (scrubIpStatus == null ? 0 : scrubIpStatus!.hashCode) +
    (servicesName == null ? 0 : servicesName!.hashCode);

  @override
  String toString() => 'ScrubIpsRowSchema[scrubIpId=$scrubIpId, repeatInvoicesCost=$repeatInvoicesCost, scrubIpIp=$scrubIpIp, scrubIpStatus=$scrubIpStatus, servicesName=$servicesName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.scrubIpId != null) {
      json[r'scrub_ip_id'] = this.scrubIpId;
    } else {
      json[r'scrub_ip_id'] = null;
    }
    if (this.repeatInvoicesCost != null) {
      json[r'repeat_invoices_cost'] = this.repeatInvoicesCost;
    } else {
      json[r'repeat_invoices_cost'] = null;
    }
    if (this.scrubIpIp != null) {
      json[r'scrub_ip_ip'] = this.scrubIpIp;
    } else {
      json[r'scrub_ip_ip'] = null;
    }
    if (this.scrubIpStatus != null) {
      json[r'scrub_ip_status'] = this.scrubIpStatus;
    } else {
      json[r'scrub_ip_status'] = null;
    }
    if (this.servicesName != null) {
      json[r'services_name'] = this.servicesName;
    } else {
      json[r'services_name'] = null;
    }
    return json;
  }

  /// Returns a new [ScrubIpsRowSchema] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScrubIpsRowSchema? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ScrubIpsRowSchema(
        scrubIpId: mapValueOfType<int>(json, r'scrub_ip_id'),
        repeatInvoicesCost: num.parse('${json[r'repeat_invoices_cost']}'),
        scrubIpIp: mapValueOfType<String>(json, r'scrub_ip_ip'),
        scrubIpStatus: mapValueOfType<String>(json, r'scrub_ip_status'),
        servicesName: mapValueOfType<String>(json, r'services_name'),
      );
    }
    return null;
  }

  static List<ScrubIpsRowSchema> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScrubIpsRowSchema>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScrubIpsRowSchema.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScrubIpsRowSchema> mapFromJson(dynamic json) {
    final map = <String, ScrubIpsRowSchema>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScrubIpsRowSchema.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScrubIpsRowSchema-objects as value to a dart map
  static Map<String, List<ScrubIpsRowSchema>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScrubIpsRowSchema>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScrubIpsRowSchema.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

