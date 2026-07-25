//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsPlesk12Data {
  /// Returns a new [VpsPlesk12Data] instance.
  VpsPlesk12Data({
    this.admin,
    this.pro,
    this.host,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VpsPleskLicense? admin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VpsPleskLicense? pro;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VpsPleskLicense? host;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsPlesk12Data &&
    other.admin == admin &&
    other.pro == pro &&
    other.host == host;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (admin == null ? 0 : admin!.hashCode) +
    (pro == null ? 0 : pro!.hashCode) +
    (host == null ? 0 : host!.hashCode);

  @override
  String toString() => 'VpsPlesk12Data[admin=$admin, pro=$pro, host=$host]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.admin != null) {
      json[r'admin'] = this.admin;
    } else {
      json[r'admin'] = null;
    }
    if (this.pro != null) {
      json[r'pro'] = this.pro;
    } else {
      json[r'pro'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    return json;
  }

  /// Returns a new [VpsPlesk12Data] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsPlesk12Data? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsPlesk12Data(
        admin: VpsPleskLicense.fromJson(json[r'admin']),
        pro: VpsPleskLicense.fromJson(json[r'pro']),
        host: VpsPleskLicense.fromJson(json[r'host']),
      );
    }
    return null;
  }

  static List<VpsPlesk12Data> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsPlesk12Data>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsPlesk12Data.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsPlesk12Data> mapFromJson(dynamic json) {
    final map = <String, VpsPlesk12Data>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsPlesk12Data.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsPlesk12Data-objects as value to a dart map
  static Map<String, List<VpsPlesk12Data>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsPlesk12Data>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsPlesk12Data.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

