//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DomainNameserverGetResponseInner {
  /// Returns a new [DomainNameserverGetResponseInner] instance.
  DomainNameserverGetResponseInner({
    required this.name,
    required this.ipaddress,
    required this.canDelete,
  });

  String name;

  String ipaddress;

  /// Whether the registrar allows deletion of this nameserver entry.
  DomainNameserverGetResponseInnerCanDeleteEnum canDelete;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DomainNameserverGetResponseInner &&
    other.name == name &&
    other.ipaddress == ipaddress &&
    other.canDelete == canDelete;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name.hashCode) +
    (ipaddress.hashCode) +
    (canDelete.hashCode);

  @override
  String toString() => 'DomainNameserverGetResponseInner[name=$name, ipaddress=$ipaddress, canDelete=$canDelete]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'name'] = this.name;
      json[r'ipaddress'] = this.ipaddress;
      json[r'can_delete'] = this.canDelete;
    return json;
  }

  /// Returns a new [DomainNameserverGetResponseInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DomainNameserverGetResponseInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'name'), 'Required key "DomainNameserverGetResponseInner[name]" is missing from JSON.');
        assert(json[r'name'] != null, 'Required key "DomainNameserverGetResponseInner[name]" has a null value in JSON.');
        assert(json.containsKey(r'ipaddress'), 'Required key "DomainNameserverGetResponseInner[ipaddress]" is missing from JSON.');
        assert(json[r'ipaddress'] != null, 'Required key "DomainNameserverGetResponseInner[ipaddress]" has a null value in JSON.');
        assert(json.containsKey(r'can_delete'), 'Required key "DomainNameserverGetResponseInner[can_delete]" is missing from JSON.');
        assert(json[r'can_delete'] != null, 'Required key "DomainNameserverGetResponseInner[can_delete]" has a null value in JSON.');
        return true;
      }());

      return DomainNameserverGetResponseInner(
        name: mapValueOfType<String>(json, r'name')!,
        ipaddress: mapValueOfType<String>(json, r'ipaddress')!,
        canDelete: DomainNameserverGetResponseInnerCanDeleteEnum.fromJson(json[r'can_delete'])!,
      );
    }
    return null;
  }

  static List<DomainNameserverGetResponseInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainNameserverGetResponseInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainNameserverGetResponseInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DomainNameserverGetResponseInner> mapFromJson(dynamic json) {
    final map = <String, DomainNameserverGetResponseInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DomainNameserverGetResponseInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DomainNameserverGetResponseInner-objects as value to a dart map
  static Map<String, List<DomainNameserverGetResponseInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DomainNameserverGetResponseInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DomainNameserverGetResponseInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'name',
    'ipaddress',
    'can_delete',
  };
}

/// Whether the registrar allows deletion of this nameserver entry.
enum DomainNameserverGetResponseInnerCanDeleteEnum {
  n0._(r'0'),
  n1._(r'1'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const DomainNameserverGetResponseInnerCanDeleteEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DomainNameserverGetResponseInnerCanDeleteEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DomainNameserverGetResponseInnerCanDeleteEnum? fromJson(dynamic value) => DomainNameserverGetResponseInnerCanDeleteEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DomainNameserverGetResponseInnerCanDeleteEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DomainNameserverGetResponseInnerCanDeleteEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DomainNameserverGetResponseInnerCanDeleteEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DomainNameserverGetResponseInnerCanDeleteEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DomainNameserverGetResponseInnerCanDeleteEnum] to String,
/// and [decode] dynamic data back to [DomainNameserverGetResponseInnerCanDeleteEnum].
class DomainNameserverGetResponseInnerCanDeleteEnumTypeTransformer {
  factory DomainNameserverGetResponseInnerCanDeleteEnumTypeTransformer() => _instance ??= const DomainNameserverGetResponseInnerCanDeleteEnumTypeTransformer._();

  const DomainNameserverGetResponseInnerCanDeleteEnumTypeTransformer._();

  String encode(DomainNameserverGetResponseInnerCanDeleteEnum data) => data._value;

  /// Returns the instance of [DomainNameserverGetResponseInnerCanDeleteEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DomainNameserverGetResponseInnerCanDeleteEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DomainNameserverGetResponseInnerCanDeleteEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'0': return DomainNameserverGetResponseInnerCanDeleteEnum.n0;
        case r'1': return DomainNameserverGetResponseInnerCanDeleteEnum.n1;
        case r'unknown_default_open_api': return DomainNameserverGetResponseInnerCanDeleteEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DomainNameserverGetResponseInnerCanDeleteEnumTypeTransformer? _instance;
}


