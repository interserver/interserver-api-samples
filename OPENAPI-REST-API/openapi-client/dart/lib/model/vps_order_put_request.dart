//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsOrderPutRequest {
  /// Returns a new [VpsOrderPutRequest] instance.
  VpsOrderPutRequest({
    required this.osDistro,
    this.slices = 1,
    required this.vpsPlatform,
    this.period = 1,
    this.location = 1,
    required this.osVersion,
    this.hostname = '',
    required this.rootpass,
    this.controlpanel,
    this.coupon = '',
    this.comment = '',
  });

  /// OS Distribution
  String osDistro;

  /// Number of slices
  ///
  /// Minimum value: 1
  /// Maximum value: 32
  int slices;

  /// VPS Platform
  VpsOrderPutRequestVpsPlatformEnum vpsPlatform;

  /// Billing Period or Frequency
  ///
  /// Minimum value: 1
  /// Maximum value: 12
  int period;

  /// Location
  ///
  /// Minimum value: 1
  /// Maximum value: 3
  int location;

  /// OS Version
  String osVersion;

  /// The hostname to assign to the VPS
  String hostname;

  /// Root password to assign to the VVPS
  String rootpass;

  /// Control Panel
  VpsOrderPutRequestControlpanelEnum? controlpanel;

  /// Coupon
  String coupon;

  /// Order comments or notes
  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsOrderPutRequest &&
    other.osDistro == osDistro &&
    other.slices == slices &&
    other.vpsPlatform == vpsPlatform &&
    other.period == period &&
    other.location == location &&
    other.osVersion == osVersion &&
    other.hostname == hostname &&
    other.rootpass == rootpass &&
    other.controlpanel == controlpanel &&
    other.coupon == coupon &&
    other.comment == comment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (osDistro.hashCode) +
    (slices.hashCode) +
    (vpsPlatform.hashCode) +
    (period.hashCode) +
    (location.hashCode) +
    (osVersion.hashCode) +
    (hostname.hashCode) +
    (rootpass.hashCode) +
    (controlpanel == null ? 0 : controlpanel!.hashCode) +
    (coupon.hashCode) +
    (comment.hashCode);

  @override
  String toString() => 'VpsOrderPutRequest[osDistro=$osDistro, slices=$slices, vpsPlatform=$vpsPlatform, period=$period, location=$location, osVersion=$osVersion, hostname=$hostname, rootpass=$rootpass, controlpanel=$controlpanel, coupon=$coupon, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'osDistro'] = this.osDistro;
      json[r'slices'] = this.slices;
      json[r'vpsPlatform'] = this.vpsPlatform;
      json[r'period'] = this.period;
      json[r'location'] = this.location;
      json[r'osVersion'] = this.osVersion;
      json[r'hostname'] = this.hostname;
      json[r'rootpass'] = this.rootpass;
    if (this.controlpanel != null) {
      json[r'controlpanel'] = this.controlpanel;
    } else {
      json[r'controlpanel'] = null;
    }
      json[r'coupon'] = this.coupon;
      json[r'comment'] = this.comment;
    return json;
  }

  /// Returns a new [VpsOrderPutRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsOrderPutRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'osDistro'), 'Required key "VpsOrderPutRequest[osDistro]" is missing from JSON.');
        assert(json[r'osDistro'] != null, 'Required key "VpsOrderPutRequest[osDistro]" has a null value in JSON.');
        assert(json.containsKey(r'slices'), 'Required key "VpsOrderPutRequest[slices]" is missing from JSON.');
        assert(json[r'slices'] != null, 'Required key "VpsOrderPutRequest[slices]" has a null value in JSON.');
        assert(json.containsKey(r'vpsPlatform'), 'Required key "VpsOrderPutRequest[vpsPlatform]" is missing from JSON.');
        assert(json[r'vpsPlatform'] != null, 'Required key "VpsOrderPutRequest[vpsPlatform]" has a null value in JSON.');
        assert(json.containsKey(r'period'), 'Required key "VpsOrderPutRequest[period]" is missing from JSON.');
        assert(json[r'period'] != null, 'Required key "VpsOrderPutRequest[period]" has a null value in JSON.');
        assert(json.containsKey(r'location'), 'Required key "VpsOrderPutRequest[location]" is missing from JSON.');
        assert(json[r'location'] != null, 'Required key "VpsOrderPutRequest[location]" has a null value in JSON.');
        assert(json.containsKey(r'osVersion'), 'Required key "VpsOrderPutRequest[osVersion]" is missing from JSON.');
        assert(json[r'osVersion'] != null, 'Required key "VpsOrderPutRequest[osVersion]" has a null value in JSON.');
        assert(json.containsKey(r'hostname'), 'Required key "VpsOrderPutRequest[hostname]" is missing from JSON.');
        assert(json[r'hostname'] != null, 'Required key "VpsOrderPutRequest[hostname]" has a null value in JSON.');
        assert(json.containsKey(r'rootpass'), 'Required key "VpsOrderPutRequest[rootpass]" is missing from JSON.');
        assert(json[r'rootpass'] != null, 'Required key "VpsOrderPutRequest[rootpass]" has a null value in JSON.');
        return true;
      }());

      return VpsOrderPutRequest(
        osDistro: mapValueOfType<String>(json, r'osDistro')!,
        slices: mapValueOfType<int>(json, r'slices')!,
        vpsPlatform: VpsOrderPutRequestVpsPlatformEnum.fromJson(json[r'vpsPlatform'])!,
        period: mapValueOfType<int>(json, r'period')!,
        location: mapValueOfType<int>(json, r'location')!,
        osVersion: mapValueOfType<String>(json, r'osVersion')!,
        hostname: mapValueOfType<String>(json, r'hostname')!,
        rootpass: mapValueOfType<String>(json, r'rootpass')!,
        controlpanel: VpsOrderPutRequestControlpanelEnum.fromJson(json[r'controlpanel']),
        coupon: mapValueOfType<String>(json, r'coupon') ?? '',
        comment: mapValueOfType<String>(json, r'comment') ?? '',
      );
    }
    return null;
  }

  static List<VpsOrderPutRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderPutRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderPutRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsOrderPutRequest> mapFromJson(dynamic json) {
    final map = <String, VpsOrderPutRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsOrderPutRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsOrderPutRequest-objects as value to a dart map
  static Map<String, List<VpsOrderPutRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsOrderPutRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsOrderPutRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'osDistro',
    'slices',
    'vpsPlatform',
    'period',
    'location',
    'osVersion',
    'hostname',
    'rootpass',
  };
}

/// VPS Platform
enum VpsOrderPutRequestVpsPlatformEnum {
  kvm._(r'kvm'),
  hyperv._(r'hyperv'),
  kvmstorage._(r'kvmstorage'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const VpsOrderPutRequestVpsPlatformEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [VpsOrderPutRequestVpsPlatformEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static VpsOrderPutRequestVpsPlatformEnum? fromJson(dynamic value) => VpsOrderPutRequestVpsPlatformEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [VpsOrderPutRequestVpsPlatformEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<VpsOrderPutRequestVpsPlatformEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderPutRequestVpsPlatformEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderPutRequestVpsPlatformEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VpsOrderPutRequestVpsPlatformEnum] to String,
/// and [decode] dynamic data back to [VpsOrderPutRequestVpsPlatformEnum].
class VpsOrderPutRequestVpsPlatformEnumTypeTransformer {
  factory VpsOrderPutRequestVpsPlatformEnumTypeTransformer() => _instance ??= const VpsOrderPutRequestVpsPlatformEnumTypeTransformer._();

  const VpsOrderPutRequestVpsPlatformEnumTypeTransformer._();

  String encode(VpsOrderPutRequestVpsPlatformEnum data) => data._value;

  /// Returns the instance of [VpsOrderPutRequestVpsPlatformEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VpsOrderPutRequestVpsPlatformEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is VpsOrderPutRequestVpsPlatformEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'kvm': return VpsOrderPutRequestVpsPlatformEnum.kvm;
        case r'hyperv': return VpsOrderPutRequestVpsPlatformEnum.hyperv;
        case r'kvmstorage': return VpsOrderPutRequestVpsPlatformEnum.kvmstorage;
        case r'unknown_default_open_api': return VpsOrderPutRequestVpsPlatformEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static VpsOrderPutRequestVpsPlatformEnumTypeTransformer? _instance;
}


/// Control Panel
enum VpsOrderPutRequestControlpanelEnum {
  none._(r'none'),
  cpanel._(r'cpanel'),
  da._(r'da'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const VpsOrderPutRequestControlpanelEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [VpsOrderPutRequestControlpanelEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static VpsOrderPutRequestControlpanelEnum? fromJson(dynamic value) => VpsOrderPutRequestControlpanelEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [VpsOrderPutRequestControlpanelEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<VpsOrderPutRequestControlpanelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderPutRequestControlpanelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderPutRequestControlpanelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VpsOrderPutRequestControlpanelEnum] to String,
/// and [decode] dynamic data back to [VpsOrderPutRequestControlpanelEnum].
class VpsOrderPutRequestControlpanelEnumTypeTransformer {
  factory VpsOrderPutRequestControlpanelEnumTypeTransformer() => _instance ??= const VpsOrderPutRequestControlpanelEnumTypeTransformer._();

  const VpsOrderPutRequestControlpanelEnumTypeTransformer._();

  String encode(VpsOrderPutRequestControlpanelEnum data) => data._value;

  /// Returns the instance of [VpsOrderPutRequestControlpanelEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VpsOrderPutRequestControlpanelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is VpsOrderPutRequestControlpanelEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'none': return VpsOrderPutRequestControlpanelEnum.none;
        case r'cpanel': return VpsOrderPutRequestControlpanelEnum.cpanel;
        case r'da': return VpsOrderPutRequestControlpanelEnum.da;
        case r'unknown_default_open_api': return VpsOrderPutRequestControlpanelEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static VpsOrderPutRequestControlpanelEnumTypeTransformer? _instance;
}


