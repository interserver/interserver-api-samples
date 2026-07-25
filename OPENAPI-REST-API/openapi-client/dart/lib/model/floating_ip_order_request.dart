//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class FloatingIpOrderRequest {
  /// Returns a new [FloatingIpOrderRequest] instance.
  FloatingIpOrderRequest({
    required this.serviceType,
    this.coupon = '',
    this.comment = '',
  });

  /// Floating IP plan service type id from getNewFloatingIp.serviceTypes (must be buyable).
  int serviceType;

  /// Coupon code.
  String coupon;

  /// Free-form note saved on the service row (used on addFloatingIp).
  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FloatingIpOrderRequest &&
    other.serviceType == serviceType &&
    other.coupon == coupon &&
    other.comment == comment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serviceType.hashCode) +
    (coupon.hashCode) +
    (comment.hashCode);

  @override
  String toString() => 'FloatingIpOrderRequest[serviceType=$serviceType, coupon=$coupon, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'serviceType'] = this.serviceType;
      json[r'coupon'] = this.coupon;
      json[r'comment'] = this.comment;
    return json;
  }

  /// Returns a new [FloatingIpOrderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FloatingIpOrderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'serviceType'), 'Required key "FloatingIpOrderRequest[serviceType]" is missing from JSON.');
        assert(json[r'serviceType'] != null, 'Required key "FloatingIpOrderRequest[serviceType]" has a null value in JSON.');
        return true;
      }());

      return FloatingIpOrderRequest(
        serviceType: mapValueOfType<int>(json, r'serviceType')!,
        coupon: mapValueOfType<String>(json, r'coupon') ?? '',
        comment: mapValueOfType<String>(json, r'comment') ?? '',
      );
    }
    return null;
  }

  static List<FloatingIpOrderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FloatingIpOrderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FloatingIpOrderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FloatingIpOrderRequest> mapFromJson(dynamic json) {
    final map = <String, FloatingIpOrderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FloatingIpOrderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FloatingIpOrderRequest-objects as value to a dart map
  static Map<String, List<FloatingIpOrderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FloatingIpOrderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FloatingIpOrderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'serviceType',
  };
}

