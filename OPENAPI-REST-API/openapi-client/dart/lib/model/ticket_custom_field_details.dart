//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class TicketCustomFieldDetails {
  /// Returns a new [TicketCustomFieldDetails] instance.
  TicketCustomFieldDetails({
    this.customerServerAccess,
    this.ipAddress,
    this.rootPassword,
    this.sudoUser,
    this.sudoPassword,
    this.port,
  });

  TicketCustomFieldDetailsCustomerServerAccessEnum? customerServerAccess;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ipAddress;

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
  String? sudoUser;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sudoPassword;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TicketCustomFieldDetails &&
    other.customerServerAccess == customerServerAccess &&
    other.ipAddress == ipAddress &&
    other.rootPassword == rootPassword &&
    other.sudoUser == sudoUser &&
    other.sudoPassword == sudoPassword &&
    other.port == port;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (customerServerAccess == null ? 0 : customerServerAccess!.hashCode) +
    (ipAddress == null ? 0 : ipAddress!.hashCode) +
    (rootPassword == null ? 0 : rootPassword!.hashCode) +
    (sudoUser == null ? 0 : sudoUser!.hashCode) +
    (sudoPassword == null ? 0 : sudoPassword!.hashCode) +
    (port == null ? 0 : port!.hashCode);

  @override
  String toString() => 'TicketCustomFieldDetails[customerServerAccess=$customerServerAccess, ipAddress=$ipAddress, rootPassword=$rootPassword, sudoUser=$sudoUser, sudoPassword=$sudoPassword, port=$port]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.customerServerAccess != null) {
      json[r'Customer Server Access'] = this.customerServerAccess;
    } else {
      json[r'Customer Server Access'] = null;
    }
    if (this.ipAddress != null) {
      json[r'Ip Address'] = this.ipAddress;
    } else {
      json[r'Ip Address'] = null;
    }
    if (this.rootPassword != null) {
      json[r'Root Password'] = this.rootPassword;
    } else {
      json[r'Root Password'] = null;
    }
    if (this.sudoUser != null) {
      json[r'Sudo User'] = this.sudoUser;
    } else {
      json[r'Sudo User'] = null;
    }
    if (this.sudoPassword != null) {
      json[r'Sudo Password'] = this.sudoPassword;
    } else {
      json[r'Sudo Password'] = null;
    }
    if (this.port != null) {
      json[r'Port'] = this.port;
    } else {
      json[r'Port'] = null;
    }
    return json;
  }

  /// Returns a new [TicketCustomFieldDetails] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TicketCustomFieldDetails? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return TicketCustomFieldDetails(
        customerServerAccess: TicketCustomFieldDetailsCustomerServerAccessEnum.fromJson(json[r'Customer Server Access']),
        ipAddress: mapValueOfType<String>(json, r'Ip Address'),
        rootPassword: mapValueOfType<String>(json, r'Root Password'),
        sudoUser: mapValueOfType<String>(json, r'Sudo User'),
        sudoPassword: mapValueOfType<int>(json, r'Sudo Password'),
        port: mapValueOfType<int>(json, r'Port'),
      );
    }
    return null;
  }

  static List<TicketCustomFieldDetails> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketCustomFieldDetails>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketCustomFieldDetails.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TicketCustomFieldDetails> mapFromJson(dynamic json) {
    final map = <String, TicketCustomFieldDetails>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TicketCustomFieldDetails.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TicketCustomFieldDetails-objects as value to a dart map
  static Map<String, List<TicketCustomFieldDetails>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TicketCustomFieldDetails>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TicketCustomFieldDetails.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


enum TicketCustomFieldDetailsCustomerServerAccessEnum {
  y._(r'y'),
  n._(r'n'),
  ;

  /// Instantiate a new enum with the provided value.
  const TicketCustomFieldDetailsCustomerServerAccessEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [TicketCustomFieldDetailsCustomerServerAccessEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static TicketCustomFieldDetailsCustomerServerAccessEnum? fromJson(dynamic value) => TicketCustomFieldDetailsCustomerServerAccessEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [TicketCustomFieldDetailsCustomerServerAccessEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<TicketCustomFieldDetailsCustomerServerAccessEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TicketCustomFieldDetailsCustomerServerAccessEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TicketCustomFieldDetailsCustomerServerAccessEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [TicketCustomFieldDetailsCustomerServerAccessEnum] to String,
/// and [decode] dynamic data back to [TicketCustomFieldDetailsCustomerServerAccessEnum].
class TicketCustomFieldDetailsCustomerServerAccessEnumTypeTransformer {
  factory TicketCustomFieldDetailsCustomerServerAccessEnumTypeTransformer() => _instance ??= const TicketCustomFieldDetailsCustomerServerAccessEnumTypeTransformer._();

  const TicketCustomFieldDetailsCustomerServerAccessEnumTypeTransformer._();

  String encode(TicketCustomFieldDetailsCustomerServerAccessEnum data) => data._value;

  /// Returns the instance of [TicketCustomFieldDetailsCustomerServerAccessEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  TicketCustomFieldDetailsCustomerServerAccessEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is TicketCustomFieldDetailsCustomerServerAccessEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'y': return TicketCustomFieldDetailsCustomerServerAccessEnum.y;
        case r'n': return TicketCustomFieldDetailsCustomerServerAccessEnum.n;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static TicketCustomFieldDetailsCustomerServerAccessEnumTypeTransformer? _instance;
}


