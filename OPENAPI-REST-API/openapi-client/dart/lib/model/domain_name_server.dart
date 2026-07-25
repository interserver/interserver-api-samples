//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainNameServer {
  /// Returns a new [DomainNameServer] instance.
  DomainNameServer({
    this.sortorder,
    this.name,
    this.ipaddress,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sortorder;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipaddress;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainNameServer &&
    other.sortorder == sortorder &&
    other.name == name &&
    other.ipaddress == ipaddress;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sortorder == null ? 0 : sortorder!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (ipaddress == null ? 0 : ipaddress!.hashCode);

  @override
  String toString() => 'DomainNameServer[sortorder=$sortorder, name=$name, ipaddress=$ipaddress]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.sortorder != null) {
      json[r'sortorder'] = this.sortorder;
    } else {
      json[r'sortorder'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.ipaddress != null) {
      json[r'ipaddress'] = this.ipaddress;
    } else {
      json[r'ipaddress'] = null;
    }
    return json;
  }

  /// Returns a new [DomainNameServer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainNameServer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainNameServer(
        sortorder: mapValueOfType<String>(json, r'sortorder'),
        name: mapValueOfType<String>(json, r'name'),
        ipaddress: mapValueOfType<String>(json, r'ipaddress'),
      );
    }
    return null;
  }

  static List<DomainNameServer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainNameServer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainNameServer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainNameServer> mapFromJson(dynamic json) {
    final map = <String, DomainNameServer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainNameServer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainNameServer-objects as value to a dart map
  static Map<String, List<DomainNameServer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainNameServer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainNameServer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

