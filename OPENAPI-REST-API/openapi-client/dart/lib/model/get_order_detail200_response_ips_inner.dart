//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetOrderDetail200ResponseIpsInner {
  /// Returns a new [GetOrderDetail200ResponseIpsInner] instance.
  GetOrderDetail200ResponseIpsInner({
    this.serviceId,
    this.serviceModule,
    this.serviceHostname,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? serviceId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceModule;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serviceHostname;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetOrderDetail200ResponseIpsInner &&
    other.serviceId == serviceId &&
    other.serviceModule == serviceModule &&
    other.serviceHostname == serviceHostname;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceId == null ? 0 : serviceId!.hashCode) +
    (serviceModule == null ? 0 : serviceModule!.hashCode) +
    (serviceHostname == null ? 0 : serviceHostname!.hashCode);

  @override
  String toString() => 'GetOrderDetail200ResponseIpsInner[serviceId=$serviceId, serviceModule=$serviceModule, serviceHostname=$serviceHostname]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.serviceId != null) {
      json[r'service_id'] = this.serviceId;
    } else {
      json[r'service_id'] = null;
    }
    if (this.serviceModule != null) {
      json[r'service_module'] = this.serviceModule;
    } else {
      json[r'service_module'] = null;
    }
    if (this.serviceHostname != null) {
      json[r'service_hostname'] = this.serviceHostname;
    } else {
      json[r'service_hostname'] = null;
    }
    return json;
  }

  /// Returns a new [GetOrderDetail200ResponseIpsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetOrderDetail200ResponseIpsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetOrderDetail200ResponseIpsInner(
        serviceId: num.parse('${json[r'service_id']}'),
        serviceModule: mapValueOfType<String>(json, r'service_module'),
        serviceHostname: mapValueOfType<String>(json, r'service_hostname'),
      );
    }
    return null;
  }

  static List<GetOrderDetail200ResponseIpsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetOrderDetail200ResponseIpsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetOrderDetail200ResponseIpsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetOrderDetail200ResponseIpsInner> mapFromJson(dynamic json) {
    final map = <String, GetOrderDetail200ResponseIpsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetOrderDetail200ResponseIpsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetOrderDetail200ResponseIpsInner-objects as value to a dart map
  static Map<String, List<GetOrderDetail200ResponseIpsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetOrderDetail200ResponseIpsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetOrderDetail200ResponseIpsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

