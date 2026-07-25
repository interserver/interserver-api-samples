//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class LicensesOrder {
  /// Returns a new [LicensesOrder] instance.
  LicensesOrder({
    this.serviceCategories,
    this.packageCosts,
    this.serviceTypes,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LicensesOrderServiceCategories? serviceCategories;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LicensesOrderPackageCosts? packageCosts;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  LicensesOrderServiceTypes? serviceTypes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicensesOrder &&
    other.serviceCategories == serviceCategories &&
    other.packageCosts == packageCosts &&
    other.serviceTypes == serviceTypes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceCategories == null ? 0 : serviceCategories!.hashCode) +
    (packageCosts == null ? 0 : packageCosts!.hashCode) +
    (serviceTypes == null ? 0 : serviceTypes!.hashCode);

  @override
  String toString() => 'LicensesOrder[serviceCategories=$serviceCategories, packageCosts=$packageCosts, serviceTypes=$serviceTypes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.serviceCategories != null) {
      json[r'serviceCategories'] = this.serviceCategories;
    } else {
      json[r'serviceCategories'] = null;
    }
    if (this.packageCosts != null) {
      json[r'packageCosts'] = this.packageCosts;
    } else {
      json[r'packageCosts'] = null;
    }
    if (this.serviceTypes != null) {
      json[r'serviceTypes'] = this.serviceTypes;
    } else {
      json[r'serviceTypes'] = null;
    }
    return json;
  }

  /// Returns a new [LicensesOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicensesOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return LicensesOrder(
        serviceCategories: LicensesOrderServiceCategories.fromJson(json[r'serviceCategories']),
        packageCosts: LicensesOrderPackageCosts.fromJson(json[r'packageCosts']),
        serviceTypes: LicensesOrderServiceTypes.fromJson(json[r'serviceTypes']),
      );
    }
    return null;
  }

  static List<LicensesOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicensesOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicensesOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicensesOrder> mapFromJson(dynamic json) {
    final map = <String, LicensesOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicensesOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicensesOrder-objects as value to a dart map
  static Map<String, List<LicensesOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicensesOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicensesOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

