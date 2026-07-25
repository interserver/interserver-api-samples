//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class IpObject {
  /// Returns a new [IpObject] instance.
  IpObject({
    required this.ip,
  });

  /// IP Address
  String ip;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IpObject &&
    other.ip == ip;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ip.hashCode);

  @override
  String toString() => 'IpObject[ip=$ip]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ip'] = this.ip;
    return json;
  }

  /// Returns a new [IpObject] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IpObject? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'ip'), 'Required key "IpObject[ip]" is missing from JSON.');
        assert(json[r'ip'] != null, 'Required key "IpObject[ip]" has a null value in JSON.');
        return true;
      }());

      return IpObject(
        ip: mapValueOfType<String>(json, r'ip')!,
      );
    }
    return null;
  }

  static List<IpObject> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IpObject>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IpObject.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IpObject> mapFromJson(dynamic json) {
    final map = <String, IpObject>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IpObject.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IpObject-objects as value to a dart map
  static Map<String, List<IpObject>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IpObject>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IpObject.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ip',
  };
}

