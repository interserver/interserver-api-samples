//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailRow {
  /// Returns a new [MailRow] instance.
  MailRow({
    this.mailId,
    this.repeatInvoicesCost,
    this.mailUsername,
    this.mailStatus,
    this.servicesName,
  });

  /// The id of the mail.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailId;

  /// The repeat invoices cost of the mail.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repeatInvoicesCost;

  /// The username of the mail.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailUsername;

  /// The status of the mail.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mailStatus;

  /// The services name of the mail.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesName;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailRow &&
    other.mailId == mailId &&
    other.repeatInvoicesCost == repeatInvoicesCost &&
    other.mailUsername == mailUsername &&
    other.mailStatus == mailStatus &&
    other.servicesName == servicesName;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (mailId == null ? 0 : mailId!.hashCode) +
    (repeatInvoicesCost == null ? 0 : repeatInvoicesCost!.hashCode) +
    (mailUsername == null ? 0 : mailUsername!.hashCode) +
    (mailStatus == null ? 0 : mailStatus!.hashCode) +
    (servicesName == null ? 0 : servicesName!.hashCode);

  @override
  String toString() => 'MailRow[mailId=$mailId, repeatInvoicesCost=$repeatInvoicesCost, mailUsername=$mailUsername, mailStatus=$mailStatus, servicesName=$servicesName]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.mailId != null) {
      json[r'mail_id'] = this.mailId;
    } else {
      json[r'mail_id'] = null;
    }
    if (this.repeatInvoicesCost != null) {
      json[r'repeat_invoices_cost'] = this.repeatInvoicesCost;
    } else {
      json[r'repeat_invoices_cost'] = null;
    }
    if (this.mailUsername != null) {
      json[r'mail_username'] = this.mailUsername;
    } else {
      json[r'mail_username'] = null;
    }
    if (this.mailStatus != null) {
      json[r'mail_status'] = this.mailStatus;
    } else {
      json[r'mail_status'] = null;
    }
    if (this.servicesName != null) {
      json[r'services_name'] = this.servicesName;
    } else {
      json[r'services_name'] = null;
    }
    return json;
  }

  /// Returns a new [MailRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailRow(
        mailId: mapValueOfType<String>(json, r'mail_id'),
        repeatInvoicesCost: mapValueOfType<String>(json, r'repeat_invoices_cost'),
        mailUsername: mapValueOfType<String>(json, r'mail_username'),
        mailStatus: mapValueOfType<String>(json, r'mail_status'),
        servicesName: mapValueOfType<String>(json, r'services_name'),
      );
    }
    return null;
  }

  static List<MailRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailRow> mapFromJson(dynamic json) {
    final map = <String, MailRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailRow-objects as value to a dart map
  static Map<String, List<MailRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

