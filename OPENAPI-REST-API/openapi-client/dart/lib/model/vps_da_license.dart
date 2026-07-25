//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class VpsDALicense {
  /// Returns a new [VpsDALicense] instance.
  VpsDALicense({
    this.name,
    this.subName,
    this.cost,
    this.imgDisabled,
    this.imgActive,
  });

  /// License tier name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// License tier sub-name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subName;

  /// Monthly cost in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? cost;

  /// Image path for the disabled state icon.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imgDisabled;

  /// Image path for the active state icon.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? imgActive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is VpsDALicense &&
    other.name == name &&
    other.subName == subName &&
    other.cost == cost &&
    other.imgDisabled == imgDisabled &&
    other.imgActive == imgActive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (subName == null ? 0 : subName!.hashCode) +
    (cost == null ? 0 : cost!.hashCode) +
    (imgDisabled == null ? 0 : imgDisabled!.hashCode) +
    (imgActive == null ? 0 : imgActive!.hashCode);

  @override
  String toString() => 'VpsDALicense[name=$name, subName=$subName, cost=$cost, imgDisabled=$imgDisabled, imgActive=$imgActive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.subName != null) {
      json[r'sub_name'] = this.subName;
    } else {
      json[r'sub_name'] = null;
    }
    if (this.cost != null) {
      json[r'cost'] = this.cost;
    } else {
      json[r'cost'] = null;
    }
    if (this.imgDisabled != null) {
      json[r'img_disabled'] = this.imgDisabled;
    } else {
      json[r'img_disabled'] = null;
    }
    if (this.imgActive != null) {
      json[r'img_active'] = this.imgActive;
    } else {
      json[r'img_active'] = null;
    }
    return json;
  }

  /// Returns a new [VpsDALicense] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static VpsDALicense? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return VpsDALicense(
        name: mapValueOfType<String>(json, r'name'),
        subName: mapValueOfType<String>(json, r'sub_name'),
        cost: mapValueOfType<int>(json, r'cost'),
        imgDisabled: mapValueOfType<String>(json, r'img_disabled'),
        imgActive: mapValueOfType<String>(json, r'img_active'),
      );
    }
    return null;
  }

  static List<VpsDALicense> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <VpsDALicense>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = VpsDALicense.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, VpsDALicense> mapFromJson(dynamic json) {
    final map = <String, VpsDALicense>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = VpsDALicense.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of VpsDALicense-objects as value to a dart map
  static Map<String, List<VpsDALicense>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<VpsDALicense>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = VpsDALicense.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

