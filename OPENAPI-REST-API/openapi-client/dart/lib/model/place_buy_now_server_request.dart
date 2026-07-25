//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class PlaceBuyNowServerRequest {
  /// Returns a new [PlaceBuyNowServerRequest] instance.
  PlaceBuyNowServerRequest({
    this.serverId,
    this.serverHostname,
    this.serverRootPassword,
  });

  /// The ID of the buy-it-now server configuration to order. Use the server listing from `GET /servers/order/buy_now_server` to find valid IDs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? serverId;

  /// The fully-qualified hostname to assign to the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverHostname;

  /// The root or administrator password to set on the server.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverRootPassword;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlaceBuyNowServerRequest &&
    other.serverId == serverId &&
    other.serverHostname == serverHostname &&
    other.serverRootPassword == serverRootPassword;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (serverId == null ? 0 : serverId!.hashCode) +
    (serverHostname == null ? 0 : serverHostname!.hashCode) +
    (serverRootPassword == null ? 0 : serverRootPassword!.hashCode);

  @override
  String toString() => 'PlaceBuyNowServerRequest[serverId=$serverId, serverHostname=$serverHostname, serverRootPassword=$serverRootPassword]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.serverId != null) {
      json[r'server_id'] = this.serverId;
    } else {
      json[r'server_id'] = null;
    }
    if (this.serverHostname != null) {
      json[r'server_hostname'] = this.serverHostname;
    } else {
      json[r'server_hostname'] = null;
    }
    if (this.serverRootPassword != null) {
      json[r'server_root_password'] = this.serverRootPassword;
    } else {
      json[r'server_root_password'] = null;
    }
    return json;
  }

  /// Returns a new [PlaceBuyNowServerRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlaceBuyNowServerRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        return true;
      }());

      return PlaceBuyNowServerRequest(
        serverId: num.parse('${json[r'server_id']}'),
        serverHostname: mapValueOfType<String>(json, r'server_hostname'),
        serverRootPassword: mapValueOfType<String>(json, r'server_root_password'),
      );
    }
    return null;
  }

  static List<PlaceBuyNowServerRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlaceBuyNowServerRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlaceBuyNowServerRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlaceBuyNowServerRequest> mapFromJson(dynamic json) {
    final map = <String, PlaceBuyNowServerRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlaceBuyNowServerRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlaceBuyNowServerRequest-objects as value to a dart map
  static Map<String, List<PlaceBuyNowServerRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlaceBuyNowServerRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlaceBuyNowServerRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

