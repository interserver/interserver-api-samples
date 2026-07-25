//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerOrderBandwidthLi {
  /// Returns a new [ServerOrderBandwidthLi] instance.
  ServerOrderBandwidthLi({
    this.n15,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ServerOrderBandwidth? n15;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerOrderBandwidthLi &&
    other.n15 == n15;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (n15 == null ? 0 : n15!.hashCode);

  @override
  String toString() => 'ServerOrderBandwidthLi[n15=$n15]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.n15 != null) {
      json[r'15'] = this.n15;
    } else {
      json[r'15'] = null;
    }
    return json;
  }

  /// Returns a new [ServerOrderBandwidthLi] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerOrderBandwidthLi? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerOrderBandwidthLi(
        n15: ServerOrderBandwidth.fromJson(json[r'15']),
      );
    }
    return null;
  }

  static List<ServerOrderBandwidthLi> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerOrderBandwidthLi>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerOrderBandwidthLi.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerOrderBandwidthLi> mapFromJson(dynamic json) {
    final map = <String, ServerOrderBandwidthLi>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerOrderBandwidthLi.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerOrderBandwidthLi-objects as value to a dart map
  static Map<String, List<ServerOrderBandwidthLi>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerOrderBandwidthLi>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerOrderBandwidthLi.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

