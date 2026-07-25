//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MailOrderRequest {
  /// Returns a new [MailOrderRequest] instance.
  MailOrderRequest({
    required this.serviceType,
    this.coupon = '',
    this.comment = '',
  });

  /// Mail plan service type id from getNewMail.serviceTypes (must be buyable).
  int serviceType;

  /// Coupon code.
  String coupon;

  /// Free-form note saved on the service row (used on addMail).
  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailOrderRequest &&
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
  String toString() => 'MailOrderRequest[serviceType=$serviceType, coupon=$coupon, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'serviceType'] = this.serviceType;
      json[r'coupon'] = this.coupon;
      json[r'comment'] = this.comment;
    return json;
  }

  /// Returns a new [MailOrderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailOrderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'serviceType'), 'Required key "MailOrderRequest[serviceType]" is missing from JSON.');
        assert(json[r'serviceType'] != null, 'Required key "MailOrderRequest[serviceType]" has a null value in JSON.');
        return true;
      }());

      return MailOrderRequest(
        serviceType: mapValueOfType<int>(json, r'serviceType')!,
        coupon: mapValueOfType<String>(json, r'coupon') ?? '',
        comment: mapValueOfType<String>(json, r'comment') ?? '',
      );
    }
    return null;
  }

  static List<MailOrderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailOrderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailOrderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailOrderRequest> mapFromJson(dynamic json) {
    final map = <String, MailOrderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailOrderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailOrderRequest-objects as value to a dart map
  static Map<String, List<MailOrderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailOrderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailOrderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'serviceType',
  };
}

