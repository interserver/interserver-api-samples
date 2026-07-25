//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainOrderRequest {
  /// Returns a new [DomainOrderRequest] instance.
  DomainOrderRequest({
    required this.hostname,
    this.type = const DomainOrderRequestTypeEnum._('register'),
    this.coupon = '',
    this.whoisPrivacy,
  });

  /// Fully-qualified domain to register or transfer (e.g. example.com).
  String hostname;

  /// Order type.
  DomainOrderRequestTypeEnum type;

  /// Coupon code (addDomain only).
  String coupon;

  /// Set to \"enable\" to add Whois privacy (addDomain only).
  DomainOrderRequestWhoisPrivacyEnum? whoisPrivacy;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainOrderRequest &&
    other.hostname == hostname &&
    other.type == type &&
    other.coupon == coupon &&
    other.whoisPrivacy == whoisPrivacy;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hostname.hashCode) +
    (type.hashCode) +
    (coupon.hashCode) +
    (whoisPrivacy == null ? 0 : whoisPrivacy!.hashCode);

  @override
  String toString() => 'DomainOrderRequest[hostname=$hostname, type=$type, coupon=$coupon, whoisPrivacy=$whoisPrivacy]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'hostname'] = this.hostname;
      json[r'type'] = this.type;
      json[r'coupon'] = this.coupon;
    if (this.whoisPrivacy != null) {
      json[r'whois_privacy'] = this.whoisPrivacy;
    } else {
      json[r'whois_privacy'] = null;
    }
    return json;
  }

  /// Returns a new [DomainOrderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainOrderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'hostname'), 'Required key "DomainOrderRequest[hostname]" is missing from JSON.');
        assert(json[r'hostname'] != null, 'Required key "DomainOrderRequest[hostname]" has a null value in JSON.');
        return true;
      }());

      return DomainOrderRequest(
        hostname: mapValueOfType<String>(json, r'hostname')!,
        type: DomainOrderRequestTypeEnum.fromJson(json[r'type']) ?? const DomainOrderRequestTypeEnum._('register'),
        coupon: mapValueOfType<String>(json, r'coupon') ?? '',
        whoisPrivacy: DomainOrderRequestWhoisPrivacyEnum.fromJson(json[r'whois_privacy']),
      );
    }
    return null;
  }

  static List<DomainOrderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainOrderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainOrderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainOrderRequest> mapFromJson(dynamic json) {
    final map = <String, DomainOrderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainOrderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainOrderRequest-objects as value to a dart map
  static Map<String, List<DomainOrderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainOrderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainOrderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'hostname',
  };
}

/// Order type.
enum DomainOrderRequestTypeEnum {
  register._(r'register'),
  transfer._(r'transfer'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const DomainOrderRequestTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DomainOrderRequestTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DomainOrderRequestTypeEnum? fromJson(dynamic value) => DomainOrderRequestTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DomainOrderRequestTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DomainOrderRequestTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainOrderRequestTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainOrderRequestTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainOrderRequestTypeEnum] to String,
/// and [decode] dynamic data back to [DomainOrderRequestTypeEnum].
class DomainOrderRequestTypeEnumTypeTransformer {
  factory DomainOrderRequestTypeEnumTypeTransformer() => _instance ??= const DomainOrderRequestTypeEnumTypeTransformer._();

  const DomainOrderRequestTypeEnumTypeTransformer._();

  String encode(DomainOrderRequestTypeEnum data) => data._value;

  /// Returns the instance of [DomainOrderRequestTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainOrderRequestTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DomainOrderRequestTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'register': return DomainOrderRequestTypeEnum.register;
        case r'transfer': return DomainOrderRequestTypeEnum.transfer;
        case r'unknown_default_open_api': return DomainOrderRequestTypeEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DomainOrderRequestTypeEnumTypeTransformer? _instance;
}


/// Set to \"enable\" to add Whois privacy (addDomain only).
enum DomainOrderRequestWhoisPrivacyEnum {
  enable._(r'enable'),
  disable._(r'disable'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const DomainOrderRequestWhoisPrivacyEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DomainOrderRequestWhoisPrivacyEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DomainOrderRequestWhoisPrivacyEnum? fromJson(dynamic value) => DomainOrderRequestWhoisPrivacyEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DomainOrderRequestWhoisPrivacyEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DomainOrderRequestWhoisPrivacyEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainOrderRequestWhoisPrivacyEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainOrderRequestWhoisPrivacyEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainOrderRequestWhoisPrivacyEnum] to String,
/// and [decode] dynamic data back to [DomainOrderRequestWhoisPrivacyEnum].
class DomainOrderRequestWhoisPrivacyEnumTypeTransformer {
  factory DomainOrderRequestWhoisPrivacyEnumTypeTransformer() => _instance ??= const DomainOrderRequestWhoisPrivacyEnumTypeTransformer._();

  const DomainOrderRequestWhoisPrivacyEnumTypeTransformer._();

  String encode(DomainOrderRequestWhoisPrivacyEnum data) => data._value;

  /// Returns the instance of [DomainOrderRequestWhoisPrivacyEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainOrderRequestWhoisPrivacyEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DomainOrderRequestWhoisPrivacyEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'enable': return DomainOrderRequestWhoisPrivacyEnum.enable;
        case r'disable': return DomainOrderRequestWhoisPrivacyEnum.disable;
        case r'unknown_default_open_api': return DomainOrderRequestWhoisPrivacyEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DomainOrderRequestWhoisPrivacyEnumTypeTransformer? _instance;
}


