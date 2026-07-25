//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainAllInfoAttributesContactSet {
  /// Returns a new [DomainAllInfoAttributesContactSet] instance.
  DomainAllInfoAttributesContactSet({
    this.owner,
    this.admin,
    this.tech,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainOwnerContact? owner;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainAdminContact? admin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DomainTechContact? tech;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainAllInfoAttributesContactSet &&
    other.owner == owner &&
    other.admin == admin &&
    other.tech == tech;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (owner == null ? 0 : owner!.hashCode) +
    (admin == null ? 0 : admin!.hashCode) +
    (tech == null ? 0 : tech!.hashCode);

  @override
  String toString() => 'DomainAllInfoAttributesContactSet[owner=$owner, admin=$admin, tech=$tech]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.admin != null) {
      json[r'admin'] = this.admin;
    } else {
      json[r'admin'] = null;
    }
    if (this.tech != null) {
      json[r'tech'] = this.tech;
    } else {
      json[r'tech'] = null;
    }
    return json;
  }

  /// Returns a new [DomainAllInfoAttributesContactSet] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainAllInfoAttributesContactSet? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainAllInfoAttributesContactSet(
        owner: DomainOwnerContact.fromJson(json[r'owner']),
        admin: DomainAdminContact.fromJson(json[r'admin']),
        tech: DomainTechContact.fromJson(json[r'tech']),
      );
    }
    return null;
  }

  static List<DomainAllInfoAttributesContactSet> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainAllInfoAttributesContactSet>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainAllInfoAttributesContactSet.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainAllInfoAttributesContactSet> mapFromJson(dynamic json) {
    final map = <String, DomainAllInfoAttributesContactSet>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainAllInfoAttributesContactSet.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainAllInfoAttributesContactSet-objects as value to a dart map
  static Map<String, List<DomainAllInfoAttributesContactSet>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainAllInfoAttributesContactSet>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainAllInfoAttributesContactSet.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

