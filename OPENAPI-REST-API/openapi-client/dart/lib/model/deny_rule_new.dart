//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class DenyRuleNew {
  /// Returns a new [DenyRuleNew] instance.
  DenyRuleNew({
    required this.type,
    required this.data,
    this.user,
  });

  /// The type of deny rule.
  DenyRuleNewTypeEnum type;

  /// The content of the rule.  If a domain type rule then an example would be google.com. For a begins with type an example would be msgid-.  For the email typer an example would be user@server.com.
  String data;

  /// Mail account username that will be tied to this rule.  If not specified the first active mail order will be used.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  @override
  bool operator ==(Object other) => identical(this, other) || other is DenyRuleNew &&
    other.type == type &&
    other.data == data &&
    other.user == user;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (type.hashCode) +
    (data.hashCode) +
    (user == null ? 0 : user!.hashCode);

  @override
  String toString() => 'DenyRuleNew[type=$type, data=$data, user=$user]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'type'] = this.type;
      json[r'data'] = this.data;
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
    return json;
  }

  /// Returns a new [DenyRuleNew] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static DenyRuleNew? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'type'), 'Required key "DenyRuleNew[type]" is missing from JSON.');
        assert(json[r'type'] != null, 'Required key "DenyRuleNew[type]" has a null value in JSON.');
        assert(json.containsKey(r'data'), 'Required key "DenyRuleNew[data]" is missing from JSON.');
        assert(json[r'data'] != null, 'Required key "DenyRuleNew[data]" has a null value in JSON.');
        return true;
      }());

      return DenyRuleNew(
        type: DenyRuleNewTypeEnum.fromJson(json[r'type'])!,
        data: mapValueOfType<String>(json, r'data')!,
        user: mapValueOfType<String>(json, r'user'),
      );
    }
    return null;
  }

  static List<DenyRuleNew> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DenyRuleNew>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DenyRuleNew.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, DenyRuleNew> mapFromJson(dynamic json) {
    final map = <String, DenyRuleNew>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = DenyRuleNew.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of DenyRuleNew-objects as value to a dart map
  static Map<String, List<DenyRuleNew>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<DenyRuleNew>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = DenyRuleNew.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'type',
    'data',
  };
}

/// The type of deny rule.
enum DenyRuleNewTypeEnum {
  domain._(r'domain'),
  email._(r'email'),
  startswith._(r'startswith'),
  destination._(r'destination'),
  unknownDefaultOpenApi._(r'unknown_default_open_api'),
  ;

  /// Instantiate a new enum with the provided value.
  const DenyRuleNewTypeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [DenyRuleNewTypeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static DenyRuleNewTypeEnum? fromJson(dynamic value) => DenyRuleNewTypeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [DenyRuleNewTypeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<DenyRuleNewTypeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <DenyRuleNewTypeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = DenyRuleNewTypeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [DenyRuleNewTypeEnum] to String,
/// and [decode] dynamic data back to [DenyRuleNewTypeEnum].
class DenyRuleNewTypeEnumTypeTransformer {
  factory DenyRuleNewTypeEnumTypeTransformer() => _instance ??= const DenyRuleNewTypeEnumTypeTransformer._();

  const DenyRuleNewTypeEnumTypeTransformer._();

  String encode(DenyRuleNewTypeEnum data) => data._value;

  /// Returns the instance of [DenyRuleNewTypeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  DenyRuleNewTypeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is DenyRuleNewTypeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'domain': return DenyRuleNewTypeEnum.domain;
        case r'email': return DenyRuleNewTypeEnum.email;
        case r'startswith': return DenyRuleNewTypeEnum.startswith;
        case r'destination': return DenyRuleNewTypeEnum.destination;
        case r'unknown_default_open_api': return DenyRuleNewTypeEnum.unknownDefaultOpenApi;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static DenyRuleNewTypeEnumTypeTransformer? _instance;
}


