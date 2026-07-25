//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class Service {
  /// Returns a new [Service] instance.
  Service({
    required this.servicesId,
    required this.servicesName,
    required this.servicesCost,
    required this.servicesCurrency,
    required this.servicesCategory,
    required this.servicesBuyable,
    required this.servicesType,
    required this.servicesField1,
    required this.servicesField2,
    required this.servicesModule,
  });

  int servicesId;

  String servicesName;

  num servicesCost;

  String servicesCurrency;

  int servicesCategory;

  bool servicesBuyable;

  int servicesType;

  String servicesField1;

  String servicesField2;

  String servicesModule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Service &&
    other.servicesId == servicesId &&
    other.servicesName == servicesName &&
    other.servicesCost == servicesCost &&
    other.servicesCurrency == servicesCurrency &&
    other.servicesCategory == servicesCategory &&
    other.servicesBuyable == servicesBuyable &&
    other.servicesType == servicesType &&
    other.servicesField1 == servicesField1 &&
    other.servicesField2 == servicesField2 &&
    other.servicesModule == servicesModule;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (servicesId.hashCode) +
    (servicesName.hashCode) +
    (servicesCost.hashCode) +
    (servicesCurrency.hashCode) +
    (servicesCategory.hashCode) +
    (servicesBuyable.hashCode) +
    (servicesType.hashCode) +
    (servicesField1.hashCode) +
    (servicesField2.hashCode) +
    (servicesModule.hashCode);

  @override
  String toString() => 'Service[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCurrency=$servicesCurrency, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'services_id'] = this.servicesId;
      json[r'services_name'] = this.servicesName;
      json[r'services_cost'] = this.servicesCost;
      json[r'services_currency'] = this.servicesCurrency;
      json[r'services_category'] = this.servicesCategory;
      json[r'services_buyable'] = this.servicesBuyable;
      json[r'services_type'] = this.servicesType;
      json[r'services_field1'] = this.servicesField1;
      json[r'services_field2'] = this.servicesField2;
      json[r'services_module'] = this.servicesModule;
    return json;
  }

  /// Returns a new [Service] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Service? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'services_id'), 'Required key "Service[services_id]" is missing from JSON.');
        assert(json[r'services_id'] != null, 'Required key "Service[services_id]" has a null value in JSON.');
        assert(json.containsKey(r'services_name'), 'Required key "Service[services_name]" is missing from JSON.');
        assert(json[r'services_name'] != null, 'Required key "Service[services_name]" has a null value in JSON.');
        assert(json.containsKey(r'services_cost'), 'Required key "Service[services_cost]" is missing from JSON.');
        assert(json[r'services_cost'] != null, 'Required key "Service[services_cost]" has a null value in JSON.');
        assert(json.containsKey(r'services_currency'), 'Required key "Service[services_currency]" is missing from JSON.');
        assert(json[r'services_currency'] != null, 'Required key "Service[services_currency]" has a null value in JSON.');
        assert(json.containsKey(r'services_category'), 'Required key "Service[services_category]" is missing from JSON.');
        assert(json[r'services_category'] != null, 'Required key "Service[services_category]" has a null value in JSON.');
        assert(json.containsKey(r'services_buyable'), 'Required key "Service[services_buyable]" is missing from JSON.');
        assert(json[r'services_buyable'] != null, 'Required key "Service[services_buyable]" has a null value in JSON.');
        assert(json.containsKey(r'services_type'), 'Required key "Service[services_type]" is missing from JSON.');
        assert(json[r'services_type'] != null, 'Required key "Service[services_type]" has a null value in JSON.');
        assert(json.containsKey(r'services_field1'), 'Required key "Service[services_field1]" is missing from JSON.');
        assert(json[r'services_field1'] != null, 'Required key "Service[services_field1]" has a null value in JSON.');
        assert(json.containsKey(r'services_field2'), 'Required key "Service[services_field2]" is missing from JSON.');
        assert(json[r'services_field2'] != null, 'Required key "Service[services_field2]" has a null value in JSON.');
        assert(json.containsKey(r'services_module'), 'Required key "Service[services_module]" is missing from JSON.');
        assert(json[r'services_module'] != null, 'Required key "Service[services_module]" has a null value in JSON.');
        return true;
      }());

      return Service(
        servicesId: mapValueOfType<int>(json, r'services_id')!,
        servicesName: mapValueOfType<String>(json, r'services_name')!,
        servicesCost: num.parse('${json[r'services_cost']}'),
        servicesCurrency: mapValueOfType<String>(json, r'services_currency')!,
        servicesCategory: mapValueOfType<int>(json, r'services_category')!,
        servicesBuyable: mapValueOfType<bool>(json, r'services_buyable')!,
        servicesType: mapValueOfType<int>(json, r'services_type')!,
        servicesField1: mapValueOfType<String>(json, r'services_field1')!,
        servicesField2: mapValueOfType<String>(json, r'services_field2')!,
        servicesModule: mapValueOfType<String>(json, r'services_module')!,
      );
    }
    return null;
  }

  static List<Service> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Service>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Service.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Service> mapFromJson(dynamic json) {
    final map = <String, Service>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Service.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Service-objects as value to a dart map
  static Map<String, List<Service>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Service>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Service.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'services_id',
    'services_name',
    'services_cost',
    'services_currency',
    'services_category',
    'services_buyable',
    'services_type',
    'services_field1',
    'services_field2',
    'services_module',
  };
}

