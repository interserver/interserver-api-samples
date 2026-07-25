//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServicesInfo {
  /// Returns a new [ServicesInfo] instance.
  ServicesInfo({
    required this.modules,
    required this.services,
    required this.serviceTypes,
    required this.serviceCategories,
  });

  Modules modules;

  Services services;

  ServiceTypes serviceTypes;

  ServiceCategories serviceCategories;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServicesInfo &&
    other.modules == modules &&
    other.services == services &&
    other.serviceTypes == serviceTypes &&
    other.serviceCategories == serviceCategories;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (modules.hashCode) +
    (services.hashCode) +
    (serviceTypes.hashCode) +
    (serviceCategories.hashCode);

  @override
  String toString() => 'ServicesInfo[modules=$modules, services=$services, serviceTypes=$serviceTypes, serviceCategories=$serviceCategories]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'modules'] = this.modules;
      json[r'services'] = this.services;
      json[r'serviceTypes'] = this.serviceTypes;
      json[r'serviceCategories'] = this.serviceCategories;
    return json;
  }

  /// Returns a new [ServicesInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServicesInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'modules'), 'Required key "ServicesInfo[modules]" is missing from JSON.');
        assert(json[r'modules'] != null, 'Required key "ServicesInfo[modules]" has a null value in JSON.');
        assert(json.containsKey(r'services'), 'Required key "ServicesInfo[services]" is missing from JSON.');
        assert(json[r'services'] != null, 'Required key "ServicesInfo[services]" has a null value in JSON.');
        assert(json.containsKey(r'serviceTypes'), 'Required key "ServicesInfo[serviceTypes]" is missing from JSON.');
        assert(json[r'serviceTypes'] != null, 'Required key "ServicesInfo[serviceTypes]" has a null value in JSON.');
        assert(json.containsKey(r'serviceCategories'), 'Required key "ServicesInfo[serviceCategories]" is missing from JSON.');
        assert(json[r'serviceCategories'] != null, 'Required key "ServicesInfo[serviceCategories]" has a null value in JSON.');
        return true;
      }());

      return ServicesInfo(
        modules: Modules.fromJson(json[r'modules'])!,
        services: Services.fromJson(json[r'services'])!,
        serviceTypes: ServiceTypes.fromJson(json[r'serviceTypes'])!,
        serviceCategories: ServiceCategories.fromJson(json[r'serviceCategories'])!,
      );
    }
    return null;
  }

  static List<ServicesInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServicesInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServicesInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServicesInfo> mapFromJson(dynamic json) {
    final map = <String, ServicesInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServicesInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServicesInfo-objects as value to a dart map
  static Map<String, List<ServicesInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServicesInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServicesInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'modules',
    'services',
    'serviceTypes',
    'serviceCategories',
  };
}

