//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class MailExtraInfoTable {
  /// Returns a new [MailExtraInfoTable] instance.
  MailExtraInfoTable({
    this.title,
    this.rows = const [],
  });

  /// The title of the extra info table.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The rows of the extra info table.
  List<MailExtraInfoTableRow> rows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailExtraInfoTable &&
    other.title == title &&
    _deepEquality.equals(other.rows, rows);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (rows.hashCode);

  @override
  String toString() => 'MailExtraInfoTable[title=$title, rows=$rows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
      json[r'rows'] = this.rows;
    return json;
  }

  /// Returns a new [MailExtraInfoTable] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailExtraInfoTable? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailExtraInfoTable(
        title: mapValueOfType<String>(json, r'title'),
        rows: MailExtraInfoTableRow.listFromJson(json[r'rows']),
      );
    }
    return null;
  }

  static List<MailExtraInfoTable> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailExtraInfoTable>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailExtraInfoTable.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailExtraInfoTable> mapFromJson(dynamic json) {
    final map = <String, MailExtraInfoTable>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailExtraInfoTable.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailExtraInfoTable-objects as value to a dart map
  static Map<String, List<MailExtraInfoTable>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailExtraInfoTable>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailExtraInfoTable.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

