//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerOrderOsLi {
  /// Returns a new [ServerOrderOsLi] instance.
  ServerOrderOsLi({
    this.n51,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderOS? n51;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerOrderOsLi &&
    other.n51 == n51;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n51 == null ? 0 : n51!.hashCode);

  @override
  String toString() => 'ServerOrderOsLi[n51=$n51]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n51 != null) {
      json[r'51'] = this.n51;
    } else {
      json[r'51'] = null;
    }
    return json;
  }

  /// Returns a new [ServerOrderOsLi] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerOrderOsLi? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerOrderOsLi(
        n51: ServerOrderOS.fromJson(json[r'51']),
      );
    }
    return null;
  }

  static List<ServerOrderOsLi> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerOrderOsLi>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerOrderOsLi.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerOrderOsLi> mapFromJson(dynamic json) {
    final map = <String, ServerOrderOsLi>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerOrderOsLi.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerOrderOsLi-objects as value to a dart map
  static Map<String, List<ServerOrderOsLi>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerOrderOsLi>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerOrderOsLi.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

