//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServiceCategory {
  /// Returns a new [ServiceCategory] instance.
  ServiceCategory({
    required this.categoryId,
    required this.categoryName,
    required this.categoryTag,
    required this.categoryModule,
  });

  int categoryId;

  String categoryName;

  String categoryTag;

  String categoryModule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceCategory &&
    other.categoryId == categoryId &&
    other.categoryName == categoryName &&
    other.categoryTag == categoryTag &&
    other.categoryModule == categoryModule;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (categoryId.hashCode) +
    (categoryName.hashCode) +
    (categoryTag.hashCode) +
    (categoryModule.hashCode);

  @override
  String toString() => 'ServiceCategory[categoryId=$categoryId, categoryName=$categoryName, categoryTag=$categoryTag, categoryModule=$categoryModule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'category_id'] = this.categoryId;
      json[r'category_name'] = this.categoryName;
      json[r'category_tag'] = this.categoryTag;
      json[r'category_module'] = this.categoryModule;
    return json;
  }

  /// Returns a new [ServiceCategory] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceCategory? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'category_id'), 'Required key "ServiceCategory[category_id]" is missing from JSON.');
        assert(json[r'category_id'] != null, 'Required key "ServiceCategory[category_id]" has a null value in JSON.');
        assert(json.containsKey(r'category_name'), 'Required key "ServiceCategory[category_name]" is missing from JSON.');
        assert(json[r'category_name'] != null, 'Required key "ServiceCategory[category_name]" has a null value in JSON.');
        assert(json.containsKey(r'category_tag'), 'Required key "ServiceCategory[category_tag]" is missing from JSON.');
        assert(json[r'category_tag'] != null, 'Required key "ServiceCategory[category_tag]" has a null value in JSON.');
        assert(json.containsKey(r'category_module'), 'Required key "ServiceCategory[category_module]" is missing from JSON.');
        assert(json[r'category_module'] != null, 'Required key "ServiceCategory[category_module]" has a null value in JSON.');
        return true;
      }());

      return ServiceCategory(
        categoryId: mapValueOfType<int>(json, r'category_id')!,
        categoryName: mapValueOfType<String>(json, r'category_name')!,
        categoryTag: mapValueOfType<String>(json, r'category_tag')!,
        categoryModule: mapValueOfType<String>(json, r'category_module')!,
      );
    }
    return null;
  }

  static List<ServiceCategory> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceCategory>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceCategory.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceCategory> mapFromJson(dynamic json) {
    final map = <String, ServiceCategory>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceCategory.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceCategory-objects as value to a dart map
  static Map<String, List<ServiceCategory>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceCategory>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceCategory.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'category_id',
    'category_name',
    'category_tag',
    'category_module',
  };
}

