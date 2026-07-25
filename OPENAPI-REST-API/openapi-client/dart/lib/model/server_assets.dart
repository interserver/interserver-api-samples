//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class ServerAssets {
  /// Returns a new [ServerAssets] instance.
  ServerAssets({
    this.title,
    this.size,
    this.type,
    this.header = const [],
    this.rows = const [],
  });

  /// The title of the assets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// The size of the assets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  /// The type of the assets.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// The header of the assets table.
  List<String> header;

  /// The rows of the assets table.
  List<List<String>> rows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerAssets &&
    other.title == title &&
    other.size == size &&
    other.type == type &&
    _deepEquality.equals(other.header, header) &&
    _deepEquality.equals(other.rows, rows);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (title == null ? 0 : title!.hashCode) +
    (size == null ? 0 : size!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (header.hashCode) +
    (rows.hashCode);

  @override
  String toString() => 'ServerAssets[title=$title, size=$size, type=$type, header=$header, rows=$rows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
      json[r'header'] = this.header;
      json[r'rows'] = this.rows;
    return json;
  }

  /// Returns a new [ServerAssets] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerAssets? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerAssets(
        title: mapValueOfType<String>(json, r'title'),
        size: mapValueOfType<int>(json, r'size'),
        type: mapValueOfType<String>(json, r'type'),
        header: json[r'header'] is Iterable
            ? (json[r'header'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        rows: json[r'rows'] is List
          ? (json[r'rows'] as List).map((e) =>
              e == null ? const <String>[] : (e as List).map((value) => value as String).toList(growable: false)
            ).toList()
          :  const [],
      );
    }
    return null;
  }

  static List<ServerAssets> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerAssets>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerAssets.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerAssets> mapFromJson(dynamic json) {
    final map = <String, ServerAssets>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerAssets.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerAssets-objects as value to a dart map
  static Map<String, List<ServerAssets>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerAssets>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerAssets.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

