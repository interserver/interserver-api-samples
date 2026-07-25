//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerBulkIpmiPowerResponseResultsInner {
  /// Returns a new [ServerBulkIpmiPowerResponseResultsInner] instance.
  ServerBulkIpmiPowerResponseResultsInner({
    this.id,
    this.asset,
    this.text,
    this.error,
  });

  /// Server ID this result corresponds to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  /// Asset ID that was queried for the server (omitted on errors before asset selection).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? asset;

  /// IPMI power-status output for this server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Error message for this server, if processing failed (mutually exclusive with `text`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerBulkIpmiPowerResponseResultsInner &&
    other.id == id &&
    other.asset == asset &&
    other.text == text &&
    other.error == error;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (asset == null ? 0 : asset!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (error == null ? 0 : error!.hashCode);

  @override
  String toString() => 'ServerBulkIpmiPowerResponseResultsInner[id=$id, asset=$asset, text=$text, error=$error]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.asset != null) {
      json[r'asset'] = this.asset;
    } else {
      json[r'asset'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    return json;
  }

  /// Returns a new [ServerBulkIpmiPowerResponseResultsInner] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerBulkIpmiPowerResponseResultsInner? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerBulkIpmiPowerResponseResultsInner(
        id: mapValueOfType<int>(json, r'id'),
        asset: mapValueOfType<int>(json, r'asset'),
        text: mapValueOfType<String>(json, r'text'),
        error: mapValueOfType<String>(json, r'error'),
      );
    }
    return null;
  }

  static List<ServerBulkIpmiPowerResponseResultsInner> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerBulkIpmiPowerResponseResultsInner>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerBulkIpmiPowerResponseResultsInner.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerBulkIpmiPowerResponseResultsInner> mapFromJson(dynamic json) {
    final map = <String, ServerBulkIpmiPowerResponseResultsInner>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerBulkIpmiPowerResponseResultsInner.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerBulkIpmiPowerResponseResultsInner-objects as value to a dart map
  static Map<String, List<ServerBulkIpmiPowerResponseResultsInner>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerBulkIpmiPowerResponseResultsInner>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerBulkIpmiPowerResponseResultsInner.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

