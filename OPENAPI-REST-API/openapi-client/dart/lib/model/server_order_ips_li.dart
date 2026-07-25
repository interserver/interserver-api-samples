//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerOrderIpsLi {
  /// Returns a new [ServerOrderIpsLi] instance.
  ServerOrderIpsLi({
    this.n9,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderIP? n9;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerOrderIpsLi &&
    other.n9 == n9;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n9 == null ? 0 : n9!.hashCode);

  @override
  String toString() => 'ServerOrderIpsLi[n9=$n9]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n9 != null) {
      json[r'9'] = this.n9;
    } else {
      json[r'9'] = null;
    }
    return json;
  }

  /// Returns a new [ServerOrderIpsLi] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerOrderIpsLi? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerOrderIpsLi(
        n9: ServerOrderIP.fromJson(json[r'9']),
      );
    }
    return null;
  }

  static List<ServerOrderIpsLi> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerOrderIpsLi>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerOrderIpsLi.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerOrderIpsLi> mapFromJson(dynamic json) {
    final map = <String, ServerOrderIpsLi>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerOrderIpsLi.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerOrderIpsLi-objects as value to a dart map
  static Map<String, List<ServerOrderIpsLi>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerOrderIpsLi>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerOrderIpsLi.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

