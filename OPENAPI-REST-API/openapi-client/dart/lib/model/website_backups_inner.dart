//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class WebsiteBackupsInner {
  /// Returns a new [WebsiteBackupsInner] instance.
  WebsiteBackupsInner({
    required this.name,
    this.size,
  });

  String name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? size;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebsiteBackupsInner &&
    other.name == name &&
    other.size == size;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (size == null ? 0 : size!.hashCode);

  @override
  String toString() => 'WebsiteBackupsInner[name=$name, size=$size]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
    if (this.size != null) {
      json[r'size'] = this.size;
    } else {
      json[r'size'] = null;
    }
    return json;
  }

  /// Returns a new [WebsiteBackupsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebsiteBackupsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "WebsiteBackupsInner[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "WebsiteBackupsInner[name]" has a null value in JSON.');
        return true;
      }());

      return WebsiteBackupsInner(
        name: mapValueOfType<String>(json, r'name')!,
        size: mapValueOfType<int>(json, r'size'),
      );
    }
    return null;
  }

  static List<WebsiteBackupsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebsiteBackupsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebsiteBackupsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebsiteBackupsInner> mapFromJson(dynamic json) {
    final map = <String, WebsiteBackupsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebsiteBackupsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebsiteBackupsInner-objects as value to a dart map
  static Map<String, List<WebsiteBackupsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebsiteBackupsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebsiteBackupsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
  };
}

