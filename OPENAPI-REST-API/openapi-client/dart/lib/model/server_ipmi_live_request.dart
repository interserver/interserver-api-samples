//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerIpmiLiveRequest {
  /// Returns a new [ServerIpmiLiveRequest] instance.
  ServerIpmiLiveRequest({
    required this.ip,
    this.asset,
  });

  /// Your IP Address you wish to connect to the IPMI system from.
  String ip;

  /// Asset ID
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? asset;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerIpmiLiveRequest &&
    other.ip == ip &&
    other.asset == asset;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (ip.hashCode) +
    (asset == null ? 0 : asset!.hashCode);

  @override
  String toString() => 'ServerIpmiLiveRequest[ip=$ip, asset=$asset]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'ip'] = this.ip;
    if (this.asset != null) {
      json[r'asset'] = this.asset;
    } else {
      json[r'asset'] = null;
    }
    return json;
  }

  /// Returns a new [ServerIpmiLiveRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerIpmiLiveRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'ip'), 'Required key "ServerIpmiLiveRequest[ip]" is missing from JSON.');
        assert(json[r'ip'] != null, 'Required key "ServerIpmiLiveRequest[ip]" has a null value in JSON.');
        return true;
      }());

      return ServerIpmiLiveRequest(
        ip: mapValueOfType<String>(json, r'ip')!,
        asset: mapValueOfType<int>(json, r'asset'),
      );
    }
    return null;
  }

  static List<ServerIpmiLiveRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerIpmiLiveRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerIpmiLiveRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerIpmiLiveRequest> mapFromJson(dynamic json) {
    final map = <String, ServerIpmiLiveRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerIpmiLiveRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerIpmiLiveRequest-objects as value to a dart map
  static Map<String, List<ServerIpmiLiveRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerIpmiLiveRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerIpmiLiveRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'ip',
  };
}

