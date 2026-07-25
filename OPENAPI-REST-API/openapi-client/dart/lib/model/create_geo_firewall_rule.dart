//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class CreateGeoFirewallRule {
  /// Returns a new [CreateGeoFirewallRule] instance.
  CreateGeoFirewallRule({
    required this.xdpAction,
    this.destinationPort = 80,
    this.countryCode,
    this.asn,
  });

  /// 1 = Block,  0 = Whitelist
  CreateGeoFirewallRuleXdpActionEnum xdpAction;

  int destinationPort;

  /// To get country code refer our countries api - https://my.interserver.net/apiv2/account/countries?fetch_by=numcode
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? countryCode;

  /// ASN number
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? asn;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateGeoFirewallRule &&
    other.xdpAction == xdpAction &&
    other.destinationPort == destinationPort &&
    other.countryCode == countryCode &&
    other.asn == asn;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (xdpAction.hashCode) +
    (destinationPort.hashCode) +
    (countryCode == null ? 0 : countryCode!.hashCode) +
    (asn == null ? 0 : asn!.hashCode);

  @override
  String toString() => 'CreateGeoFirewallRule[xdpAction=$xdpAction, destinationPort=$destinationPort, countryCode=$countryCode, asn=$asn]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'xdp_action'] = this.xdpAction;
      json[r'destination_port'] = this.destinationPort;
    if (this.countryCode != null) {
      json[r'country_code'] = this.countryCode;
    } else {
      json[r'country_code'] = null;
    }
    if (this.asn != null) {
      json[r'asn'] = this.asn;
    } else {
      json[r'asn'] = null;
    }
    return json;
  }

  /// Returns a new [CreateGeoFirewallRule] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateGeoFirewallRule? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'xdp_action'), 'Required key "CreateGeoFirewallRule[xdp_action]" is missing from JSON.');
        assert(json[r'xdp_action'] != null, 'Required key "CreateGeoFirewallRule[xdp_action]" has a null value in JSON.');
        return true;
      }());

      return CreateGeoFirewallRule(
        xdpAction: CreateGeoFirewallRuleXdpActionEnum.fromJson(json[r'xdp_action'])!,
        destinationPort: mapValueOfType<int>(json, r'destination_port') ?? 80,
        countryCode: mapValueOfType<int>(json, r'country_code'),
        asn: mapValueOfType<int>(json, r'asn'),
      );
    }
    return null;
  }

  static List<CreateGeoFirewallRule> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateGeoFirewallRule>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateGeoFirewallRule.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateGeoFirewallRule> mapFromJson(dynamic json) {
    final map = <String, CreateGeoFirewallRule>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateGeoFirewallRule.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateGeoFirewallRule-objects as value to a dart map
  static Map<String, List<CreateGeoFirewallRule>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateGeoFirewallRule>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateGeoFirewallRule.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'xdp_action',
  };
}

/// 1 = Block,  0 = Whitelist
enum CreateGeoFirewallRuleXdpActionEnum {
  number0._(0),
  number1._(1),
  unknownDefaultOpenApi._(11184809),
  ;

  /// Instantiate a new enum with the provided value.
  const CreateGeoFirewallRuleXdpActionEnum._(this._value);

  /// The underlying value of this enum member.
  final int _value;

  @override
  String toString() => _value.toString();

  /// Encodes this enum as a value suitable for JSON.
  int toJson() => _value;

  /// Returns the instance of [CreateGeoFirewallRuleXdpActionEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static CreateGeoFirewallRuleXdpActionEnum? fromJson(dynamic value) => CreateGeoFirewallRuleXdpActionEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [CreateGeoFirewallRuleXdpActionEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<CreateGeoFirewallRuleXdpActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateGeoFirewallRuleXdpActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateGeoFirewallRuleXdpActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [CreateGeoFirewallRuleXdpActionEnum] to int,
/// and [decode] dynamic data back to [CreateGeoFirewallRuleXdpActionEnum].
class CreateGeoFirewallRuleXdpActionEnumTypeTransformer {
  factory CreateGeoFirewallRuleXdpActionEnumTypeTransformer() => _instance ??= const CreateGeoFirewallRuleXdpActionEnumTypeTransformer._();

  const CreateGeoFirewallRuleXdpActionEnumTypeTransformer._();

  int encode(CreateGeoFirewallRuleXdpActionEnum data) => data._value;

  /// Returns the instance of [CreateGeoFirewallRuleXdpActionEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  CreateGeoFirewallRuleXdpActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is CreateGeoFirewallRuleXdpActionEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case 0: return CreateGeoFirewallRuleXdpActionEnum.number0;
        case 1: return CreateGeoFirewallRuleXdpActionEnum.number1;
        case 11184809: return CreateGeoFirewallRuleXdpActionEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static CreateGeoFirewallRuleXdpActionEnumTypeTransformer? _instance;
}


