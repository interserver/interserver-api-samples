//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class LicenseOrderRequest {
  /// Returns a new [LicenseOrderRequest] instance.
  LicenseOrderRequest({
    required this.package,
    required this.ip,
    required this.tos,
    this.frequency = 1,
    this.coupon = '',
    this.comment = '',
  });

  /// License service type id from getNewLicense.serviceTypes (must be buyable).
  int package;

  /// IP address the license is bound to.
  String ip;

  /// Terms-of-service acceptance. Must be true to place the order.
  bool tos;

  /// Billing frequency in months.
  int frequency;

  /// Coupon code.
  String coupon;

  /// Free-form note saved on the service row.
  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is LicenseOrderRequest &&
    other.package == package &&
    other.ip == ip &&
    other.tos == tos &&
    other.frequency == frequency &&
    other.coupon == coupon &&
    other.comment == comment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (package.hashCode) +
    (ip.hashCode) +
    (tos.hashCode) +
    (frequency.hashCode) +
    (coupon.hashCode) +
    (comment.hashCode);

  @override
  String toString() => 'LicenseOrderRequest[package=$package, ip=$ip, tos=$tos, frequency=$frequency, coupon=$coupon, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'package'] = this.package;
      json[r'ip'] = this.ip;
      json[r'tos'] = this.tos;
      json[r'frequency'] = this.frequency;
      json[r'coupon'] = this.coupon;
      json[r'comment'] = this.comment;
    return json;
  }

  /// Returns a new [LicenseOrderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static LicenseOrderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'package'), 'Required key "LicenseOrderRequest[package]" is missing from JSON.');
        assert(json[r'package'] != null, 'Required key "LicenseOrderRequest[package]" has a null value in JSON.');
        assert(json.containsKey(r'ip'), 'Required key "LicenseOrderRequest[ip]" is missing from JSON.');
        assert(json[r'ip'] != null, 'Required key "LicenseOrderRequest[ip]" has a null value in JSON.');
        assert(json.containsKey(r'tos'), 'Required key "LicenseOrderRequest[tos]" is missing from JSON.');
        assert(json[r'tos'] != null, 'Required key "LicenseOrderRequest[tos]" has a null value in JSON.');
        return true;
      }());

      return LicenseOrderRequest(
        package: mapValueOfType<int>(json, r'package')!,
        ip: mapValueOfType<String>(json, r'ip')!,
        tos: mapValueOfType<bool>(json, r'tos')!,
        frequency: mapValueOfType<int>(json, r'frequency') ?? 1,
        coupon: mapValueOfType<String>(json, r'coupon') ?? '',
        comment: mapValueOfType<String>(json, r'comment') ?? '',
      );
    }
    return null;
  }

  static List<LicenseOrderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <LicenseOrderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = LicenseOrderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, LicenseOrderRequest> mapFromJson(dynamic json) {
    final map = <String, LicenseOrderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = LicenseOrderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of LicenseOrderRequest-objects as value to a dart map
  static Map<String, List<LicenseOrderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<LicenseOrderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = LicenseOrderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'package',
    'ip',
    'tos',
  };
}

