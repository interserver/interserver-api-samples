//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerIpmiPowerRequest {
  /// Returns a new [ServerIpmiPowerRequest] instance.
  ServerIpmiPowerRequest({
    required this.action,
    this.asset,
  });

  /// The power action to send to the ipmi controller.
  ServerIpmiPowerRequestActionEnum action;

  /// The Asset ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? asset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerIpmiPowerRequest &&
    other.action == action &&
    other.asset == asset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action.hashCode) +
    (asset == null ? 0 : asset!.hashCode);

  @override
  String toString() => 'ServerIpmiPowerRequest[action=$action, asset=$asset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'action'] = this.action;
    if (this.asset != null) {
      json[r'asset'] = this.asset;
    } else {
      json[r'asset'] = null;
    }
    return json;
  }

  /// Returns a new [ServerIpmiPowerRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerIpmiPowerRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'action'), 'Required key "ServerIpmiPowerRequest[action]" is missing from JSON.');
        assert(json[r'action'] != null, 'Required key "ServerIpmiPowerRequest[action]" has a null value in JSON.');
        return true;
      }());

      return ServerIpmiPowerRequest(
        action: ServerIpmiPowerRequestActionEnum.fromJson(json[r'action'])!,
        asset: mapValueOfType<int>(json, r'asset'),
      );
    }
    return null;
  }

  static List<ServerIpmiPowerRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerIpmiPowerRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerIpmiPowerRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerIpmiPowerRequest> mapFromJson(dynamic json) {
    final map = <String, ServerIpmiPowerRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerIpmiPowerRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerIpmiPowerRequest-objects as value to a dart map
  static Map<String, List<ServerIpmiPowerRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerIpmiPowerRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerIpmiPowerRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'action',
  };
}

/// The power action to send to the ipmi controller.
enum ServerIpmiPowerRequestActionEnum {
  cycle._(r'cycle'),
  reset._(r'reset'),
  on_._(r'on'),
  off._(r'off'),
  soft._(r'soft'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const ServerIpmiPowerRequestActionEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [ServerIpmiPowerRequestActionEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static ServerIpmiPowerRequestActionEnum? fromJson(dynamic value) => ServerIpmiPowerRequestActionEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [ServerIpmiPowerRequestActionEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<ServerIpmiPowerRequestActionEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerIpmiPowerRequestActionEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerIpmiPowerRequestActionEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [ServerIpmiPowerRequestActionEnum] to String,
/// and [decode] dynamic data back to [ServerIpmiPowerRequestActionEnum].
class ServerIpmiPowerRequestActionEnumTypeTransformer {
  factory ServerIpmiPowerRequestActionEnumTypeTransformer() => _instance ??= const ServerIpmiPowerRequestActionEnumTypeTransformer._();

  const ServerIpmiPowerRequestActionEnumTypeTransformer._();

  String encode(ServerIpmiPowerRequestActionEnum data) => data._value;

  /// Returns the instance of [ServerIpmiPowerRequestActionEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  ServerIpmiPowerRequestActionEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is ServerIpmiPowerRequestActionEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'cycle': return ServerIpmiPowerRequestActionEnum.cycle;
        case r'reset': return ServerIpmiPowerRequestActionEnum.reset;
        case r'on': return ServerIpmiPowerRequestActionEnum.on_;
        case r'off': return ServerIpmiPowerRequestActionEnum.off;
        case r'soft': return ServerIpmiPowerRequestActionEnum.soft;
        case r'unknown_default_open_api': return ServerIpmiPowerRequestActionEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static ServerIpmiPowerRequestActionEnumTypeTransformer? _instance;
}


