//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsTemplatesList {
  /// Returns a new [VpsTemplatesList] instance.
  VpsTemplatesList({
    this.templates = const [],
  });

  /// A listing of the templates.
  List<VpsTemplateRow> templates;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsTemplatesList &&
    _deepEquality.equals(other.templates, templates);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (templates.hashCode);

  @override
  String toString() => 'VpsTemplatesList[templates=$templates]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'templates'] = this.templates;
    return json;
  }

  /// Returns a new [VpsTemplatesList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsTemplatesList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'templates'), 'Required key "VpsTemplatesList[templates]" is missing from JSON.');
        assert(json[r'templates'] != null, 'Required key "VpsTemplatesList[templates]" has a null value in JSON.');
        return true;
      }());

      return VpsTemplatesList(
        templates: VpsTemplateRow.listFromJson(json[r'templates']),
      );
    }
    return null;
  }

  static List<VpsTemplatesList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsTemplatesList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsTemplatesList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsTemplatesList> mapFromJson(dynamic json) {
    final map = <String, VpsTemplatesList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsTemplatesList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsTemplatesList-objects as value to a dart map
  static Map<String, List<VpsTemplatesList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsTemplatesList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsTemplatesList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'templates',
  };
}

