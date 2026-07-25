//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LicensesOrderServiceCategories509 {
  /// Returns a new [LicensesOrderServiceCategories509] instance.
  LicensesOrderServiceCategories509({
    this.categoryId,
    this.categoryName,
    this.categoryTag,
    this.categoryModule,
  });

  /// Category ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? categoryId;

  /// Category Name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? categoryName;

  /// Category Tag
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? categoryTag;

  /// Category Module
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? categoryModule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensesOrderServiceCategories509 &&
    other.categoryId == categoryId &&
    other.categoryName == categoryName &&
    other.categoryTag == categoryTag &&
    other.categoryModule == categoryModule;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (categoryId == null ? 0 : categoryId!.hashCode) +
    (categoryName == null ? 0 : categoryName!.hashCode) +
    (categoryTag == null ? 0 : categoryTag!.hashCode) +
    (categoryModule == null ? 0 : categoryModule!.hashCode);

  @override
  String toString() => 'LicensesOrderServiceCategories509[categoryId=$categoryId, categoryName=$categoryName, categoryTag=$categoryTag, categoryModule=$categoryModule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.categoryId != null) {
      json[r'category_id'] = this.categoryId;
    } else {
      json[r'category_id'] = null;
    }
    if (this.categoryName != null) {
      json[r'category_name'] = this.categoryName;
    } else {
      json[r'category_name'] = null;
    }
    if (this.categoryTag != null) {
      json[r'category_tag'] = this.categoryTag;
    } else {
      json[r'category_tag'] = null;
    }
    if (this.categoryModule != null) {
      json[r'category_module'] = this.categoryModule;
    } else {
      json[r'category_module'] = null;
    }
    return json;
  }

  /// Returns a new [LicensesOrderServiceCategories509] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensesOrderServiceCategories509? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return LicensesOrderServiceCategories509(
        categoryId: mapValueOfType<String>(json, r'category_id'),
        categoryName: mapValueOfType<String>(json, r'category_name'),
        categoryTag: mapValueOfType<String>(json, r'category_tag'),
        categoryModule: mapValueOfType<String>(json, r'category_module'),
      );
    }
    return null;
  }

  static List<LicensesOrderServiceCategories509> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensesOrderServiceCategories509>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensesOrderServiceCategories509.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensesOrderServiceCategories509> mapFromJson(dynamic json) {
    final map = <String, LicensesOrderServiceCategories509>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensesOrderServiceCategories509.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensesOrderServiceCategories509-objects as value to a dart map
  static Map<String, List<LicensesOrderServiceCategories509>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensesOrderServiceCategories509>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensesOrderServiceCategories509.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

