//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class BackupsOrder {
  /// Returns a new [BackupsOrder] instance.
  BackupsOrder({
    required this.packageCosts,
    required this.serviceTypes,
  });

  BackupsOrderPackageCosts packageCosts;

  BackupsOrderServiceTypes serviceTypes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BackupsOrder &&
    other.packageCosts == packageCosts &&
    other.serviceTypes == serviceTypes;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (packageCosts.hashCode) +
    (serviceTypes.hashCode);

  @override
  String toString() => 'BackupsOrder[packageCosts=$packageCosts, serviceTypes=$serviceTypes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'packageCosts'] = this.packageCosts;
      json[r'serviceTypes'] = this.serviceTypes;
    return json;
  }

  /// Returns a new [BackupsOrder] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BackupsOrder? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'packageCosts'), 'Required key "BackupsOrder[packageCosts]" is missing from JSON.');
        assert(json[r'packageCosts'] != null, 'Required key "BackupsOrder[packageCosts]" has a null value in JSON.');
        assert(json.containsKey(r'serviceTypes'), 'Required key "BackupsOrder[serviceTypes]" is missing from JSON.');
        assert(json[r'serviceTypes'] != null, 'Required key "BackupsOrder[serviceTypes]" has a null value in JSON.');
        return true;
      }());

      return BackupsOrder(
        packageCosts: BackupsOrderPackageCosts.fromJson(json[r'packageCosts'])!,
        serviceTypes: BackupsOrderServiceTypes.fromJson(json[r'serviceTypes'])!,
      );
    }
    return null;
  }

  static List<BackupsOrder> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BackupsOrder>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BackupsOrder.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BackupsOrder> mapFromJson(dynamic json) {
    final map = <String, BackupsOrder>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BackupsOrder.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BackupsOrder-objects as value to a dart map
  static Map<String, List<BackupsOrder>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BackupsOrder>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BackupsOrder.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'packageCosts',
    'serviceTypes',
  };
}

