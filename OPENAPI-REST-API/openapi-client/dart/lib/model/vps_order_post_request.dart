//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class VpsOrderPostRequest {
  /// Returns a new [VpsOrderPostRequest] instance.
  VpsOrderPostRequest({
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
  VpsOrderPostRequestVpsPlatformEnum vpsPlatform;

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
  VpsOrderPostRequestControlpanelEnum? controlpanel;

  /// Coupon
  String coupon;

  /// Order comments or notes
  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsOrderPostRequest &&
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
  String toString() => 'VpsOrderPostRequest[osDistro=$osDistro, slices=$slices, vpsPlatform=$vpsPlatform, period=$period, location=$location, osVersion=$osVersion, hostname=$hostname, rootpass=$rootpass, controlpanel=$controlpanel, coupon=$coupon, comment=$comment]';

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

  /// Returns a new [VpsOrderPostRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsOrderPostRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'osDistro'), 'Required key "VpsOrderPostRequest[osDistro]" is missing from JSON.');
        assert(json[r'osDistro'] != null, 'Required key "VpsOrderPostRequest[osDistro]" has a null value in JSON.');
        assert(json.containsKey(r'slices'), 'Required key "VpsOrderPostRequest[slices]" is missing from JSON.');
        assert(json[r'slices'] != null, 'Required key "VpsOrderPostRequest[slices]" has a null value in JSON.');
        assert(json.containsKey(r'vpsPlatform'), 'Required key "VpsOrderPostRequest[vpsPlatform]" is missing from JSON.');
        assert(json[r'vpsPlatform'] != null, 'Required key "VpsOrderPostRequest[vpsPlatform]" has a null value in JSON.');
        assert(json.containsKey(r'period'), 'Required key "VpsOrderPostRequest[period]" is missing from JSON.');
        assert(json[r'period'] != null, 'Required key "VpsOrderPostRequest[period]" has a null value in JSON.');
        assert(json.containsKey(r'location'), 'Required key "VpsOrderPostRequest[location]" is missing from JSON.');
        assert(json[r'location'] != null, 'Required key "VpsOrderPostRequest[location]" has a null value in JSON.');
        assert(json.containsKey(r'osVersion'), 'Required key "VpsOrderPostRequest[osVersion]" is missing from JSON.');
        assert(json[r'osVersion'] != null, 'Required key "VpsOrderPostRequest[osVersion]" has a null value in JSON.');
        assert(json.containsKey(r'hostname'), 'Required key "VpsOrderPostRequest[hostname]" is missing from JSON.');
        assert(json[r'hostname'] != null, 'Required key "VpsOrderPostRequest[hostname]" has a null value in JSON.');
        assert(json.containsKey(r'rootpass'), 'Required key "VpsOrderPostRequest[rootpass]" is missing from JSON.');
        assert(json[r'rootpass'] != null, 'Required key "VpsOrderPostRequest[rootpass]" has a null value in JSON.');
        return true;
      }());

      return VpsOrderPostRequest(
        osDistro: mapValueOfType<String>(json, r'osDistro')!,
        slices: mapValueOfType<int>(json, r'slices')!,
        vpsPlatform: VpsOrderPostRequestVpsPlatformEnum.fromJson(json[r'vpsPlatform'])!,
        period: mapValueOfType<int>(json, r'period')!,
        location: mapValueOfType<int>(json, r'location')!,
        osVersion: mapValueOfType<String>(json, r'osVersion')!,
        hostname: mapValueOfType<String>(json, r'hostname')!,
        rootpass: mapValueOfType<String>(json, r'rootpass')!,
        controlpanel: VpsOrderPostRequestControlpanelEnum.fromJson(json[r'controlpanel']),
        coupon: mapValueOfType<String>(json, r'coupon') ?? '',
        comment: mapValueOfType<String>(json, r'comment') ?? '',
      );
    }
    return null;
  }

  static List<VpsOrderPostRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderPostRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderPostRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsOrderPostRequest> mapFromJson(dynamic json) {
    final map = <String, VpsOrderPostRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsOrderPostRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsOrderPostRequest-objects as value to a dart map
  static Map<String, List<VpsOrderPostRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsOrderPostRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsOrderPostRequest.listFromJson(entry.value, growable: growable,);
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
enum VpsOrderPostRequestVpsPlatformEnum {
  kvm._(r'kvm'),
  hyperv._(r'hyperv'),
  kvmstorage._(r'kvmstorage'),
  ;

  /// Instantiate a new enum with the provided value.
  const VpsOrderPostRequestVpsPlatformEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [VpsOrderPostRequestVpsPlatformEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static VpsOrderPostRequestVpsPlatformEnum? fromJson(dynamic value) => VpsOrderPostRequestVpsPlatformEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [VpsOrderPostRequestVpsPlatformEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<VpsOrderPostRequestVpsPlatformEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderPostRequestVpsPlatformEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderPostRequestVpsPlatformEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VpsOrderPostRequestVpsPlatformEnum] to String,
/// and [decode] dynamic data back to [VpsOrderPostRequestVpsPlatformEnum].
class VpsOrderPostRequestVpsPlatformEnumTypeTransformer {
  factory VpsOrderPostRequestVpsPlatformEnumTypeTransformer() => _instance ??= const VpsOrderPostRequestVpsPlatformEnumTypeTransformer._();

  const VpsOrderPostRequestVpsPlatformEnumTypeTransformer._();

  String encode(VpsOrderPostRequestVpsPlatformEnum data) => data._value;

  /// Returns the instance of [VpsOrderPostRequestVpsPlatformEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VpsOrderPostRequestVpsPlatformEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is VpsOrderPostRequestVpsPlatformEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'kvm': return VpsOrderPostRequestVpsPlatformEnum.kvm;
        case r'hyperv': return VpsOrderPostRequestVpsPlatformEnum.hyperv;
        case r'kvmstorage': return VpsOrderPostRequestVpsPlatformEnum.kvmstorage;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static VpsOrderPostRequestVpsPlatformEnumTypeTransformer? _instance;
}


/// Control Panel
enum VpsOrderPostRequestControlpanelEnum {
  none._(r'none'),
  cpanel._(r'cpanel'),
  da._(r'da'),
  ;

  /// Instantiate a new enum with the provided value.
  const VpsOrderPostRequestControlpanelEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [VpsOrderPostRequestControlpanelEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static VpsOrderPostRequestControlpanelEnum? fromJson(dynamic value) => VpsOrderPostRequestControlpanelEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [VpsOrderPostRequestControlpanelEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<VpsOrderPostRequestControlpanelEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsOrderPostRequestControlpanelEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsOrderPostRequestControlpanelEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [VpsOrderPostRequestControlpanelEnum] to String,
/// and [decode] dynamic data back to [VpsOrderPostRequestControlpanelEnum].
class VpsOrderPostRequestControlpanelEnumTypeTransformer {
  factory VpsOrderPostRequestControlpanelEnumTypeTransformer() => _instance ??= const VpsOrderPostRequestControlpanelEnumTypeTransformer._();

  const VpsOrderPostRequestControlpanelEnumTypeTransformer._();

  String encode(VpsOrderPostRequestControlpanelEnum data) => data._value;

  /// Returns the instance of [VpsOrderPostRequestControlpanelEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  VpsOrderPostRequestControlpanelEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is VpsOrderPostRequestControlpanelEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'none': return VpsOrderPostRequestControlpanelEnum.none;
        case r'cpanel': return VpsOrderPostRequestControlpanelEnum.cpanel;
        case r'da': return VpsOrderPostRequestControlpanelEnum.da;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static VpsOrderPostRequestControlpanelEnumTypeTransformer? _instance;
}


