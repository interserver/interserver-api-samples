//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class QuickserverIpTableRow {
  /// Returns a new [QuickserverIpTableRow] instance.
  QuickserverIpTableRow({
    this.desc,
    this.value,
  });

  /// Description
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? desc;

  /// Value
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QuickserverIpTableRow &&
    other.desc == desc &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (desc == null ? 0 : desc!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'QuickserverIpTableRow[desc=$desc, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.desc != null) {
      json[r'desc'] = this.desc;
    } else {
      json[r'desc'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [QuickserverIpTableRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QuickserverIpTableRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return QuickserverIpTableRow(
        desc: mapValueOfType<String>(json, r'desc'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<QuickserverIpTableRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QuickserverIpTableRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QuickserverIpTableRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QuickserverIpTableRow> mapFromJson(dynamic json) {
    final map = <String, QuickserverIpTableRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QuickserverIpTableRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QuickserverIpTableRow-objects as value to a dart map
  static Map<String, List<QuickserverIpTableRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QuickserverIpTableRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QuickserverIpTableRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

