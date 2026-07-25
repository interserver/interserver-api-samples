//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class TicketDetails {
  /// Returns a new [TicketDetails] instance.
  TicketDetails({
    this.ticketid,
    this.ticketmaskid,
    this.department,
    this.status,
    this.priority,
    this.subject,
    this.createdOn,
    this.updatedOn,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? ticketid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ticketmaskid;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? department;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? priority;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdOn;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedOn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketDetails &&
    other.ticketid == ticketid &&
    other.ticketmaskid == ticketmaskid &&
    other.department == department &&
    other.status == status &&
    other.priority == priority &&
    other.subject == subject &&
    other.createdOn == createdOn &&
    other.updatedOn == updatedOn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ticketid == null ? 0 : ticketid!.hashCode) +
    (ticketmaskid == null ? 0 : ticketmaskid!.hashCode) +
    (department == null ? 0 : department!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (priority == null ? 0 : priority!.hashCode) +
    (subject == null ? 0 : subject!.hashCode) +
    (createdOn == null ? 0 : createdOn!.hashCode) +
    (updatedOn == null ? 0 : updatedOn!.hashCode);

  @override
  String toString() => 'TicketDetails[ticketid=$ticketid, ticketmaskid=$ticketmaskid, department=$department, status=$status, priority=$priority, subject=$subject, createdOn=$createdOn, updatedOn=$updatedOn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ticketid != null) {
      json[r'ticketid'] = this.ticketid;
    } else {
      json[r'ticketid'] = null;
    }
    if (this.ticketmaskid != null) {
      json[r'ticketmaskid'] = this.ticketmaskid;
    } else {
      json[r'ticketmaskid'] = null;
    }
    if (this.department != null) {
      json[r'department'] = this.department;
    } else {
      json[r'department'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.priority != null) {
      json[r'priority'] = this.priority;
    } else {
      json[r'priority'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    if (this.createdOn != null) {
      json[r'created_on'] = this.createdOn;
    } else {
      json[r'created_on'] = null;
    }
    if (this.updatedOn != null) {
      json[r'updated_on'] = this.updatedOn;
    } else {
      json[r'updated_on'] = null;
    }
    return json;
  }

  /// Returns a new [TicketDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return TicketDetails(
        ticketid: mapValueOfType<int>(json, r'ticketid'),
        ticketmaskid: mapValueOfType<String>(json, r'ticketmaskid'),
        department: mapValueOfType<String>(json, r'department'),
        status: mapValueOfType<String>(json, r'status'),
        priority: mapValueOfType<String>(json, r'priority'),
        subject: mapValueOfType<String>(json, r'subject'),
        createdOn: mapValueOfType<String>(json, r'created_on'),
        updatedOn: mapValueOfType<String>(json, r'updated_on'),
      );
    }
    return null;
  }

  static List<TicketDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketDetails> mapFromJson(dynamic json) {
    final map = <String, TicketDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketDetails-objects as value to a dart map
  static Map<String, List<TicketDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

