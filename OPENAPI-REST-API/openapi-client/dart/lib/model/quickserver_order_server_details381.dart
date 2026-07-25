//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class QuickserverOrderServerDetails381 {
  /// Returns a new [QuickserverOrderServerDetails381] instance.
  QuickserverOrderServerDetails381({
    this.cpu,
    this.ram,
    this.hd,
    this.cores,
    this.cost,
  });

  /// CPU details of the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cpu;

  /// RAM capacity of the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ram;

  /// Hard disk capacity of the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? hd;

  /// Number of CPU cores.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cores;

  /// Cost of the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? cost;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuickserverOrderServerDetails381 &&
    other.cpu == cpu &&
    other.ram == ram &&
    other.hd == hd &&
    other.cores == cores &&
    other.cost == cost;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cpu == null ? 0 : cpu!.hashCode) +
    (ram == null ? 0 : ram!.hashCode) +
    (hd == null ? 0 : hd!.hashCode) +
    (cores == null ? 0 : cores!.hashCode) +
    (cost == null ? 0 : cost!.hashCode);

  @override
  String toString() => 'QuickserverOrderServerDetails381[cpu=$cpu, ram=$ram, hd=$hd, cores=$cores, cost=$cost]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cpu != null) {
      json[r'cpu'] = this.cpu;
    } else {
      json[r'cpu'] = null;
    }
    if (this.ram != null) {
      json[r'ram'] = this.ram;
    } else {
      json[r'ram'] = null;
    }
    if (this.hd != null) {
      json[r'hd'] = this.hd;
    } else {
      json[r'hd'] = null;
    }
    if (this.cores != null) {
      json[r'cores'] = this.cores;
    } else {
      json[r'cores'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    return json;
  }

  /// Returns a new [QuickserverOrderServerDetails381] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuickserverOrderServerDetails381? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return QuickserverOrderServerDetails381(
        cpu: mapValueOfType<String>(json, r'cpu'),
        ram: mapValueOfType<String>(json, r'ram'),
        hd: mapValueOfType<String>(json, r'hd'),
        cores: mapValueOfType<int>(json, r'cores'),
        cost: mapValueOfType<String>(json, r'cost'),
      );
    }
    return null;
  }

  static List<QuickserverOrderServerDetails381> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuickserverOrderServerDetails381>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuickserverOrderServerDetails381.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuickserverOrderServerDetails381> mapFromJson(dynamic json) {
    final map = <String, QuickserverOrderServerDetails381>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuickserverOrderServerDetails381.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuickserverOrderServerDetails381-objects as value to a dart map
  static Map<String, List<QuickserverOrderServerDetails381>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuickserverOrderServerDetails381>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuickserverOrderServerDetails381.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

