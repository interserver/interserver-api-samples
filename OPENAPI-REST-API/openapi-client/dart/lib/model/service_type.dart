//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServiceType {
  /// Returns a new [ServiceType] instance.
  ServiceType({
    required this.stId,
    required this.stName,
    required this.stCategory,
    required this.stModule,
  });

  int stId;

  String stName;

  int stCategory;

  String stModule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServiceType &&
    other.stId == stId &&
    other.stName == stName &&
    other.stCategory == stCategory &&
    other.stModule == stModule;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (stId.hashCode) +
    (stName.hashCode) +
    (stCategory.hashCode) +
    (stModule.hashCode);

  @override
  String toString() => 'ServiceType[stId=$stId, stName=$stName, stCategory=$stCategory, stModule=$stModule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'st_id'] = this.stId;
      json[r'st_name'] = this.stName;
      json[r'st_category'] = this.stCategory;
      json[r'st_module'] = this.stModule;
    return json;
  }

  /// Returns a new [ServiceType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServiceType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'st_id'), 'Required key "ServiceType[st_id]" is missing from JSON.');
        assert(json[r'st_id'] != null, 'Required key "ServiceType[st_id]" has a null value in JSON.');
        assert(json.containsKey(r'st_name'), 'Required key "ServiceType[st_name]" is missing from JSON.');
        assert(json[r'st_name'] != null, 'Required key "ServiceType[st_name]" has a null value in JSON.');
        assert(json.containsKey(r'st_category'), 'Required key "ServiceType[st_category]" is missing from JSON.');
        assert(json[r'st_category'] != null, 'Required key "ServiceType[st_category]" has a null value in JSON.');
        assert(json.containsKey(r'st_module'), 'Required key "ServiceType[st_module]" is missing from JSON.');
        assert(json[r'st_module'] != null, 'Required key "ServiceType[st_module]" has a null value in JSON.');
        return true;
      }());

      return ServiceType(
        stId: mapValueOfType<int>(json, r'st_id')!,
        stName: mapValueOfType<String>(json, r'st_name')!,
        stCategory: mapValueOfType<int>(json, r'st_category')!,
        stModule: mapValueOfType<String>(json, r'st_module')!,
      );
    }
    return null;
  }

  static List<ServiceType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServiceType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServiceType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServiceType> mapFromJson(dynamic json) {
    final map = <String, ServiceType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServiceType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServiceType-objects as value to a dart map
  static Map<String, List<ServiceType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServiceType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServiceType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'st_id',
    'st_name',
    'st_category',
    'st_module',
  };
}

