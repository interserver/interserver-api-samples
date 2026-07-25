//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainRow {
  /// Returns a new [DomainRow] instance.
  DomainRow({
    this.domainId,
    this.domainHostname,
    this.domainExpireDate,
    this.cost,
    this.domainStatus,
  });

  /// The ID number of the domain in our billing system.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainId;

  /// The hostname of the domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainHostname;

  /// The expiration date of the domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainExpireDate;

  /// The cost of the domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cost;

  /// The billing / registration status of the domain.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domainStatus;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainRow &&
    other.domainId == domainId &&
    other.domainHostname == domainHostname &&
    other.domainExpireDate == domainExpireDate &&
    other.cost == cost &&
    other.domainStatus == domainStatus;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domainId == null ? 0 : domainId!.hashCode) +
    (domainHostname == null ? 0 : domainHostname!.hashCode) +
    (domainExpireDate == null ? 0 : domainExpireDate!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (domainStatus == null ? 0 : domainStatus!.hashCode);

  @override
  String toString() => 'DomainRow[domainId=$domainId, domainHostname=$domainHostname, domainExpireDate=$domainExpireDate, cost=$cost, domainStatus=$domainStatus]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domainId != null) {
      json[r'domain_id'] = this.domainId;
    } else {
      json[r'domain_id'] = null;
    }
    if (this.domainHostname != null) {
      json[r'domain_hostname'] = this.domainHostname;
    } else {
      json[r'domain_hostname'] = null;
    }
    if (this.domainExpireDate != null) {
      json[r'domain_expire_date'] = this.domainExpireDate;
    } else {
      json[r'domain_expire_date'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.domainStatus != null) {
      json[r'domain_status'] = this.domainStatus;
    } else {
      json[r'domain_status'] = null;
    }
    return json;
  }

  /// Returns a new [DomainRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainRow(
        domainId: mapValueOfType<String>(json, r'domain_id'),
        domainHostname: mapValueOfType<String>(json, r'domain_hostname'),
        domainExpireDate: mapValueOfType<String>(json, r'domain_expire_date'),
        cost: mapValueOfType<String>(json, r'cost'),
        domainStatus: mapValueOfType<String>(json, r'domain_status'),
      );
    }
    return null;
  }

  static List<DomainRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainRow> mapFromJson(dynamic json) {
    final map = <String, DomainRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainRow-objects as value to a dart map
  static Map<String, List<DomainRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

