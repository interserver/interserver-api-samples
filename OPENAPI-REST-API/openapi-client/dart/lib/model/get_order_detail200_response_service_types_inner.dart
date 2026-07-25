//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetOrderDetail200ResponseServiceTypesInner {
  /// Returns a new [GetOrderDetail200ResponseServiceTypesInner] instance.
  GetOrderDetail200ResponseServiceTypesInner({
    this.servicesId,
    this.servicesName,
    this.servicesCost,
    this.servicesField1,
    this.servicesField2,
    this.servicesModule,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? servicesId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? servicesCost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesField1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesField2;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesModule;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetOrderDetail200ResponseServiceTypesInner &&
    other.servicesId == servicesId &&
    other.servicesName == servicesName &&
    other.servicesCost == servicesCost &&
    other.servicesField1 == servicesField1 &&
    other.servicesField2 == servicesField2 &&
    other.servicesModule == servicesModule;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (servicesId == null ? 0 : servicesId!.hashCode) +
    (servicesName == null ? 0 : servicesName!.hashCode) +
    (servicesCost == null ? 0 : servicesCost!.hashCode) +
    (servicesField1 == null ? 0 : servicesField1!.hashCode) +
    (servicesField2 == null ? 0 : servicesField2!.hashCode) +
    (servicesModule == null ? 0 : servicesModule!.hashCode);

  @override
  String toString() => 'GetOrderDetail200ResponseServiceTypesInner[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.servicesId != null) {
      json[r'services_id'] = this.servicesId;
    } else {
      json[r'services_id'] = null;
    }
    if (this.servicesName != null) {
      json[r'services_name'] = this.servicesName;
    } else {
      json[r'services_name'] = null;
    }
    if (this.servicesCost != null) {
      json[r'services_cost'] = this.servicesCost;
    } else {
      json[r'services_cost'] = null;
    }
    if (this.servicesField1 != null) {
      json[r'services_field1'] = this.servicesField1;
    } else {
      json[r'services_field1'] = null;
    }
    if (this.servicesField2 != null) {
      json[r'services_field2'] = this.servicesField2;
    } else {
      json[r'services_field2'] = null;
    }
    if (this.servicesModule != null) {
      json[r'services_module'] = this.servicesModule;
    } else {
      json[r'services_module'] = null;
    }
    return json;
  }

  /// Returns a new [GetOrderDetail200ResponseServiceTypesInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetOrderDetail200ResponseServiceTypesInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetOrderDetail200ResponseServiceTypesInner(
        servicesId: mapValueOfType<int>(json, r'services_id'),
        servicesName: mapValueOfType<String>(json, r'services_name'),
        servicesCost: mapValueOfType<int>(json, r'services_cost'),
        servicesField1: mapValueOfType<String>(json, r'services_field1'),
        servicesField2: mapValueOfType<String>(json, r'services_field2'),
        servicesModule: mapValueOfType<String>(json, r'services_module'),
      );
    }
    return null;
  }

  static List<GetOrderDetail200ResponseServiceTypesInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetOrderDetail200ResponseServiceTypesInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetOrderDetail200ResponseServiceTypesInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetOrderDetail200ResponseServiceTypesInner> mapFromJson(dynamic json) {
    final map = <String, GetOrderDetail200ResponseServiceTypesInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetOrderDetail200ResponseServiceTypesInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetOrderDetail200ResponseServiceTypesInner-objects as value to a dart map
  static Map<String, List<GetOrderDetail200ResponseServiceTypesInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetOrderDetail200ResponseServiceTypesInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetOrderDetail200ResponseServiceTypesInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

