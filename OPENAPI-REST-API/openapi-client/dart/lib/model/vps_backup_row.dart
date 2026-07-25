//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsBackupRow {
  /// Returns a new [VpsBackupRow] instance.
  VpsBackupRow({
    required this.type,
    required this.service,
    required this.name,
    required this.size,
    required this.date,
  });

  /// Backup Type
  String type;

  /// The service id such as vps  id.
  int service;

  /// The name of the backup.
  String name;

  /// Size of the file in bytes
  int size;

  /// The creation date of the backup in a unix timestamp.
  int date;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsBackupRow &&
    other.type == type &&
    other.service == service &&
    other.name == name &&
    other.size == size &&
    other.date == date;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (service.hashCode) +
    (name.hashCode) +
    (size.hashCode) +
    (date.hashCode);

  @override
  String toString() => 'VpsBackupRow[type=$type, service=$service, name=$name, size=$size, date=$date]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'service'] = this.service;
      json[r'name'] = this.name;
      json[r'size'] = this.size;
      json[r'date'] = this.date;
    return json;
  }

  /// Returns a new [VpsBackupRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsBackupRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'type'), 'Required key "VpsBackupRow[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "VpsBackupRow[type]" has a null value in JSON.');
        assert(json.containsKey(r'service'), 'Required key "VpsBackupRow[service]" is missing from JSON.');
        assert(json[r'service'] != null, 'Required key "VpsBackupRow[service]" has a null value in JSON.');
        assert(json.containsKey(r'name'), 'Required key "VpsBackupRow[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "VpsBackupRow[name]" has a null value in JSON.');
        assert(json.containsKey(r'size'), 'Required key "VpsBackupRow[size]" is missing from JSON.');
        assert(json[r'size'] != null, 'Required key "VpsBackupRow[size]" has a null value in JSON.');
        assert(json.containsKey(r'date'), 'Required key "VpsBackupRow[date]" is missing from JSON.');
        assert(json[r'date'] != null, 'Required key "VpsBackupRow[date]" has a null value in JSON.');
        return true;
      }());

      return VpsBackupRow(
        type: mapValueOfType<String>(json, r'type')!,
        service: mapValueOfType<int>(json, r'service')!,
        name: mapValueOfType<String>(json, r'name')!,
        size: mapValueOfType<int>(json, r'size')!,
        date: mapValueOfType<int>(json, r'date')!,
      );
    }
    return null;
  }

  static List<VpsBackupRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsBackupRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsBackupRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsBackupRow> mapFromJson(dynamic json) {
    final map = <String, VpsBackupRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsBackupRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsBackupRow-objects as value to a dart map
  static Map<String, List<VpsBackupRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsBackupRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsBackupRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'service',
    'name',
    'size',
    'date',
  };
}

