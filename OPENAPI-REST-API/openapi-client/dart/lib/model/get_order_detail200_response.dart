//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class GetOrderDetail200Response {
  /// Returns a new [GetOrderDetail200Response] instance.
  GetOrderDetail200Response({
    this.packageCosts,
    this.serviceTypes = const [],
    this.ips = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  GetOrderDetail200ResponsePackageCosts? packageCosts;

  List<GetOrderDetail200ResponseServiceTypesInner> serviceTypes;

  List<GetOrderDetail200ResponseIpsInner> ips;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GetOrderDetail200Response &&
    other.packageCosts == packageCosts &&
    _deepEquality.equals(other.serviceTypes, serviceTypes) &&
    _deepEquality.equals(other.ips, ips);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (packageCosts == null ? 0 : packageCosts!.hashCode) +
    (serviceTypes.hashCode) +
    (ips.hashCode);

  @override
  String toString() => 'GetOrderDetail200Response[packageCosts=$packageCosts, serviceTypes=$serviceTypes, ips=$ips]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.packageCosts != null) {
      json[r'packageCosts'] = this.packageCosts;
    } else {
      json[r'packageCosts'] = null;
    }
      json[r'serviceTypes'] = this.serviceTypes;
      json[r'ips'] = this.ips;
    return json;
  }

  /// Returns a new [GetOrderDetail200Response] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GetOrderDetail200Response? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return GetOrderDetail200Response(
        packageCosts: GetOrderDetail200ResponsePackageCosts.fromJson(json[r'packageCosts']),
        serviceTypes: GetOrderDetail200ResponseServiceTypesInner.listFromJson(json[r'serviceTypes']),
        ips: GetOrderDetail200ResponseIpsInner.listFromJson(json[r'ips']),
      );
    }
    return null;
  }

  static List<GetOrderDetail200Response> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GetOrderDetail200Response>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GetOrderDetail200Response.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GetOrderDetail200Response> mapFromJson(dynamic json) {
    final map = <String, GetOrderDetail200Response>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GetOrderDetail200Response.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GetOrderDetail200Response-objects as value to a dart map
  static Map<String, List<GetOrderDetail200Response>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GetOrderDetail200Response>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GetOrderDetail200Response.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

