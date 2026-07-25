//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainOrderServices10001 {
  /// Returns a new [DomainOrderServices10001] instance.
  DomainOrderServices10001({
    this.servicesId,
    this.servicesName,
    this.servicesCost,
    this.servicesCurrency,
    this.servicesCategory,
    this.servicesBuyable,
    this.servicesType,
    this.servicesField1,
    this.servicesField2,
    this.servicesModule,
    this.servicesHidden,
  });

  /// Service ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesId;

  /// Service Name
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesName;

  /// Service Cost
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesCost;

  /// Currency of Service Cost
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesCurrency;

  /// Service Category
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesCategory;

  /// Buyable flag for Service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesBuyable;

  /// Service Type
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesType;

  /// Field 1 of Service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesField1;

  /// Field 2 of Service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesField2;

  /// Module of Service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesModule;

  /// Hidden flag for Service
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? servicesHidden;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainOrderServices10001 &&
    other.servicesId == servicesId &&
    other.servicesName == servicesName &&
    other.servicesCost == servicesCost &&
    other.servicesCurrency == servicesCurrency &&
    other.servicesCategory == servicesCategory &&
    other.servicesBuyable == servicesBuyable &&
    other.servicesType == servicesType &&
    other.servicesField1 == servicesField1 &&
    other.servicesField2 == servicesField2 &&
    other.servicesModule == servicesModule &&
    other.servicesHidden == servicesHidden;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (servicesId == null ? 0 : servicesId!.hashCode) +
    (servicesName == null ? 0 : servicesName!.hashCode) +
    (servicesCost == null ? 0 : servicesCost!.hashCode) +
    (servicesCurrency == null ? 0 : servicesCurrency!.hashCode) +
    (servicesCategory == null ? 0 : servicesCategory!.hashCode) +
    (servicesBuyable == null ? 0 : servicesBuyable!.hashCode) +
    (servicesType == null ? 0 : servicesType!.hashCode) +
    (servicesField1 == null ? 0 : servicesField1!.hashCode) +
    (servicesField2 == null ? 0 : servicesField2!.hashCode) +
    (servicesModule == null ? 0 : servicesModule!.hashCode) +
    (servicesHidden == null ? 0 : servicesHidden!.hashCode);

  @override
  String toString() => 'DomainOrderServices10001[servicesId=$servicesId, servicesName=$servicesName, servicesCost=$servicesCost, servicesCurrency=$servicesCurrency, servicesCategory=$servicesCategory, servicesBuyable=$servicesBuyable, servicesType=$servicesType, servicesField1=$servicesField1, servicesField2=$servicesField2, servicesModule=$servicesModule, servicesHidden=$servicesHidden]';

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
    if (this.servicesCurrency != null) {
      json[r'services_currency'] = this.servicesCurrency;
    } else {
      json[r'services_currency'] = null;
    }
    if (this.servicesCategory != null) {
      json[r'services_category'] = this.servicesCategory;
    } else {
      json[r'services_category'] = null;
    }
    if (this.servicesBuyable != null) {
      json[r'services_buyable'] = this.servicesBuyable;
    } else {
      json[r'services_buyable'] = null;
    }
    if (this.servicesType != null) {
      json[r'services_type'] = this.servicesType;
    } else {
      json[r'services_type'] = null;
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
    if (this.servicesHidden != null) {
      json[r'services_hidden'] = this.servicesHidden;
    } else {
      json[r'services_hidden'] = null;
    }
    return json;
  }

  /// Returns a new [DomainOrderServices10001] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainOrderServices10001? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return DomainOrderServices10001(
        servicesId: mapValueOfType<String>(json, r'services_id'),
        servicesName: mapValueOfType<String>(json, r'services_name'),
        servicesCost: mapValueOfType<String>(json, r'services_cost'),
        servicesCurrency: mapValueOfType<String>(json, r'services_currency'),
        servicesCategory: mapValueOfType<String>(json, r'services_category'),
        servicesBuyable: mapValueOfType<String>(json, r'services_buyable'),
        servicesType: mapValueOfType<String>(json, r'services_type'),
        servicesField1: mapValueOfType<String>(json, r'services_field1'),
        servicesField2: mapValueOfType<String>(json, r'services_field2'),
        servicesModule: mapValueOfType<String>(json, r'services_module'),
        servicesHidden: mapValueOfType<String>(json, r'services_hidden'),
      );
    }
    return null;
  }

  static List<DomainOrderServices10001> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainOrderServices10001>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainOrderServices10001.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainOrderServices10001> mapFromJson(dynamic json) {
    final map = <String, DomainOrderServices10001>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainOrderServices10001.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainOrderServices10001-objects as value to a dart map
  static Map<String, List<DomainOrderServices10001>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainOrderServices10001>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainOrderServices10001.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

