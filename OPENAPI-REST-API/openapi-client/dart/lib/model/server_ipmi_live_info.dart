//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerIpmiLiveInfo {
  /// Returns a new [ServerIpmiLiveInfo] instance.
  ServerIpmiLiveInfo({
    this.text,
    this.publicIp,
    this.allowedIp,
    this.clientUsername,
    this.clientPassword,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publicIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? allowedIp;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientUsername;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? clientPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerIpmiLiveInfo &&
    other.text == text &&
    other.publicIp == publicIp &&
    other.allowedIp == allowedIp &&
    other.clientUsername == clientUsername &&
    other.clientPassword == clientPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (text == null ? 0 : text!.hashCode) +
    (publicIp == null ? 0 : publicIp!.hashCode) +
    (allowedIp == null ? 0 : allowedIp!.hashCode) +
    (clientUsername == null ? 0 : clientUsername!.hashCode) +
    (clientPassword == null ? 0 : clientPassword!.hashCode);

  @override
  String toString() => 'ServerIpmiLiveInfo[text=$text, publicIp=$publicIp, allowedIp=$allowedIp, clientUsername=$clientUsername, clientPassword=$clientPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.publicIp != null) {
      json[r'public_ip'] = this.publicIp;
    } else {
      json[r'public_ip'] = null;
    }
    if (this.allowedIp != null) {
      json[r'allowed_ip'] = this.allowedIp;
    } else {
      json[r'allowed_ip'] = null;
    }
    if (this.clientUsername != null) {
      json[r'client_username'] = this.clientUsername;
    } else {
      json[r'client_username'] = null;
    }
    if (this.clientPassword != null) {
      json[r'client_password'] = this.clientPassword;
    } else {
      json[r'client_password'] = null;
    }
    return json;
  }

  /// Returns a new [ServerIpmiLiveInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerIpmiLiveInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return ServerIpmiLiveInfo(
        text: mapValueOfType<String>(json, r'text'),
        publicIp: mapValueOfType<String>(json, r'public_ip'),
        allowedIp: mapValueOfType<String>(json, r'allowed_ip'),
        clientUsername: mapValueOfType<String>(json, r'client_username'),
        clientPassword: mapValueOfType<String>(json, r'client_password'),
      );
    }
    return null;
  }

  static List<ServerIpmiLiveInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerIpmiLiveInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerIpmiLiveInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerIpmiLiveInfo> mapFromJson(dynamic json) {
    final map = <String, ServerIpmiLiveInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerIpmiLiveInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerIpmiLiveInfo-objects as value to a dart map
  static Map<String, List<ServerIpmiLiveInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerIpmiLiveInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerIpmiLiveInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

