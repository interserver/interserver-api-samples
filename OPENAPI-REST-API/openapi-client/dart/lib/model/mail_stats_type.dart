//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of openapi.api;

class MailStatsType {
  /// Returns a new [MailStatsType] instance.
  MailStatsType({
    this.time = const MailStatsTypeTimeEnum._('1h'),
    this.usage,
    this.currency,
    this.currencySymbol,
    this.cost,
    this.received,
    this.sent,
    this.volume,
  });

  MailStatsTypeTimeEnum time;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? usage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currencySymbol;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  double? cost;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? received;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MailStatsTypeVolume? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MailStatsType &&
    other.time == time &&
    other.usage == usage &&
    other.currency == currency &&
    other.currencySymbol == currencySymbol &&
    other.cost == cost &&
    other.received == received &&
    other.sent == sent &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (time.hashCode) +
    (usage == null ? 0 : usage!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (currencySymbol == null ? 0 : currencySymbol!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (received == null ? 0 : received!.hashCode) +
    (sent == null ? 0 : sent!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'MailStatsType[time=$time, usage=$usage, currency=$currency, currencySymbol=$currencySymbol, cost=$cost, received=$received, sent=$sent, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'time'] = this.time;
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.currencySymbol != null) {
      json[r'currencySymbol'] = this.currencySymbol;
    } else {
      json[r'currencySymbol'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.received != null) {
      json[r'received'] = this.received;
    } else {
      json[r'received'] = null;
    }
    if (this.sent != null) {
      json[r'sent'] = this.sent;
    } else {
      json[r'sent'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [MailStatsType] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MailStatsType? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return MailStatsType(
        time: MailStatsTypeTimeEnum.fromJson(json[r'time']) ?? const MailStatsTypeTimeEnum._('1h'),
        usage: mapValueOfType<int>(json, r'usage'),
        currency: mapValueOfType<String>(json, r'currency'),
        currencySymbol: mapValueOfType<String>(json, r'currencySymbol'),
        cost: mapValueOfType<double>(json, r'cost'),
        received: mapValueOfType<int>(json, r'received'),
        sent: mapValueOfType<int>(json, r'sent'),
        volume: MailStatsTypeVolume.fromJson(json[r'volume']),
      );
    }
    return null;
  }

  static List<MailStatsType> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailStatsType>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailStatsType.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MailStatsType> mapFromJson(dynamic json) {
    final map = <String, MailStatsType>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MailStatsType.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MailStatsType-objects as value to a dart map
  static Map<String, List<MailStatsType>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MailStatsType>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MailStatsType.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}


enum MailStatsTypeTimeEnum {
  all._(r'all'),
  billing._(r'billing'),
  month._(r'month'),
  n7d._(r'7d'),
  n24h._(r'24h'),
  today._(r'today'),
  n1h._(r'1h'),
  ;

  /// Instantiate a new enum with the provided value.
  const MailStatsTypeTimeEnum._(this._value);

  /// The underlying value of this enum member.
  final String _value;

  @override
  String toString() => _value;

  /// Encodes this enum as a value suitable for JSON.
  String toJson() => _value;

  /// Returns the instance of [MailStatsTypeTimeEnum] that was successfully decoded
  /// from the passed [value] on success, null otherwise.
  static MailStatsTypeTimeEnum? fromJson(dynamic value) => MailStatsTypeTimeEnumTypeTransformer().decode(value);

  /// Returns a [List] containing instances of [MailStatsTypeTimeEnum]
  /// that were successfully decoded from the passed [JSON][json].
  static List<MailStatsTypeTimeEnum> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MailStatsTypeTimeEnum>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MailStatsTypeTimeEnum.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }
}

/// Transformation class that can [encode] an instance of [MailStatsTypeTimeEnum] to String,
/// and [decode] dynamic data back to [MailStatsTypeTimeEnum].
class MailStatsTypeTimeEnumTypeTransformer {
  factory MailStatsTypeTimeEnumTypeTransformer() => _instance ??= const MailStatsTypeTimeEnumTypeTransformer._();

  const MailStatsTypeTimeEnumTypeTransformer._();

  String encode(MailStatsTypeTimeEnum data) => data._value;

  /// Returns the instance of [MailStatsTypeTimeEnum] that was successfully decoded
  /// from the passed [data] value on success, null otherwise.
  ///
  /// If [allowNull] is true and the [dynamic value][data] cannot be decoded successfully,
  /// then null is returned. However, if [allowNull] is false and the [dynamic value][data]
  /// cannot be decoded successfully, then an [UnimplementedError] is thrown.
  ///
  /// The [allowNull] is very handy when an API changes and a new enum value is added or removed,
  /// and users are still using an old app with the old code.
  MailStatsTypeTimeEnum? decode(dynamic data, {bool allowNull = true}) {
    if (data is MailStatsTypeTimeEnum) {
      return data;
    }
    if (data != null) {
      switch (data) {
        case r'all': return MailStatsTypeTimeEnum.all;
        case r'billing': return MailStatsTypeTimeEnum.billing;
        case r'month': return MailStatsTypeTimeEnum.month;
        case r'7d': return MailStatsTypeTimeEnum.n7d;
        case r'24h': return MailStatsTypeTimeEnum.n24h;
        case r'today': return MailStatsTypeTimeEnum.today;
        case r'1h': return MailStatsTypeTimeEnum.n1h;
        default:
          if (!allowNull) {
            throw ArgumentError('Unknown enum value to decode: $data');
          }
      }
    }
    return null;
  }

  /// The singleton instance of this transformer.
  static MailStatsTypeTimeEnumTypeTransformer? _instance;
}


