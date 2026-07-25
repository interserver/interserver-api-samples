//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class UpdateTicket {
  /// Returns a new [UpdateTicket] instance.
  UpdateTicket({
    this.ip,
    this.ipAddress,
    this.customerServerAccess,
    this.rootPassword,
    this.sudoUsername,
    this.sudoPassword,
    this.port,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ip;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipAddress;

  UpdateTicketCustomerServerAccessEnum? customerServerAccess;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rootPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sudoUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sudoPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpdateTicket &&
    other.ip == ip &&
    other.ipAddress == ipAddress &&
    other.customerServerAccess == customerServerAccess &&
    other.rootPassword == rootPassword &&
    other.sudoUsername == sudoUsername &&
    other.sudoPassword == sudoPassword &&
    other.port == port;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ip == null ? 0 : ip!.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (customerServerAccess == null ? 0 : customerServerAccess!.hashCode) +
    (rootPassword == null ? 0 : rootPassword!.hashCode) +
    (sudoUsername == null ? 0 : sudoUsername!.hashCode) +
    (sudoPassword == null ? 0 : sudoPassword!.hashCode) +
    (port == null ? 0 : port!.hashCode);

  @override
  String toString() => 'UpdateTicket[ip=$ip, ipAddress=$ipAddress, customerServerAccess=$customerServerAccess, rootPassword=$rootPassword, sudoUsername=$sudoUsername, sudoPassword=$sudoPassword, port=$port]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.ip != null) {
      json[r'ip'] = this.ip;
    } else {
      json[r'ip'] = null;
    }
    if (this.ipAddress != null) {
      json[r'ip_address'] = this.ipAddress;
    } else {
      json[r'ip_address'] = null;
    }
    if (this.customerServerAccess != null) {
      json[r'customer_server_access'] = this.customerServerAccess;
    } else {
      json[r'customer_server_access'] = null;
    }
    if (this.rootPassword != null) {
      json[r'root_password'] = this.rootPassword;
    } else {
      json[r'root_password'] = null;
    }
    if (this.sudoUsername != null) {
      json[r'sudo_username'] = this.sudoUsername;
    } else {
      json[r'sudo_username'] = null;
    }
    if (this.sudoPassword != null) {
      json[r'sudo_password'] = this.sudoPassword;
    } else {
      json[r'sudo_password'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    return json;
  }

  /// Returns a new [UpdateTicket] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpdateTicket? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return UpdateTicket(
        ip: mapValueOfType<String>(json, r'ip'),
        ipAddress: mapValueOfType<String>(json, r'ip_address'),
        customerServerAccess: UpdateTicketCustomerServerAccessEnum.fromJson(json[r'customer_server_access']),
        rootPassword: mapValueOfType<String>(json, r'root_password'),
        sudoUsername: mapValueOfType<String>(json, r'sudo_username'),
        sudoPassword: mapValueOfType<String>(json, r'sudo_password'),
        port: mapValueOfType<int>(json, r'port'),
      );
    }
    return null;
  }

  static List<UpdateTicket> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTicket>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTicket.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpdateTicket> mapFromJson(dynamic json) {
    final map = <String, UpdateTicket>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpdateTicket.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpdateTicket-objects as value to a dart map
  static Map<String, List<UpdateTicket>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpdateTicket>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpdateTicket.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


enum UpdateTicketCustomerServerAccessEnum {
  y._(r'y'),
  n._(r'n'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const UpdateTicketCustomerServerAccessEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [UpdateTicketCustomerServerAccessEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static UpdateTicketCustomerServerAccessEnum? fromJson(dynamic value) => UpdateTicketCustomerServerAccessEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [UpdateTicketCustomerServerAccessEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<UpdateTicketCustomerServerAccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpdateTicketCustomerServerAccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpdateTicketCustomerServerAccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [UpdateTicketCustomerServerAccessEnum] to String,
/// and [decode] dynamic data back to [UpdateTicketCustomerServerAccessEnum].
class UpdateTicketCustomerServerAccessEnumTypeTransformer {
  factory UpdateTicketCustomerServerAccessEnumTypeTransformer() => _instance ??= const UpdateTicketCustomerServerAccessEnumTypeTransformer._();

  const UpdateTicketCustomerServerAccessEnumTypeTransformer._();

  String encode(UpdateTicketCustomerServerAccessEnum data) => data._value;

  /// Returns the instance of [UpdateTicketCustomerServerAccessEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  UpdateTicketCustomerServerAccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is UpdateTicketCustomerServerAccessEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'y': return UpdateTicketCustomerServerAccessEnum.y;
        case r'n': return UpdateTicketCustomerServerAccessEnum.n;
        case r'unknown_default_open_api': return UpdateTicketCustomerServerAccessEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static UpdateTicketCustomerServerAccessEnumTypeTransformer? _instance;
}


