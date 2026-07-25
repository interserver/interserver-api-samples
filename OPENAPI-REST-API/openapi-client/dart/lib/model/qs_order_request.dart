//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class QsOrderRequest {
  /// Returns a new [QsOrderRequest] instance.
  QsOrderRequest({
    required this.server,
    required this.password,
    required this.tos,
    this.os = '',
    this.comment = '',
  });

  /// QuickServer plan/server id from getNewQs.
  int server;

  /// Root password for the QuickServer.
  String password;

  /// Terms-of-service acceptance. Must be true to place the order.
  bool tos;

  /// OS template file name from getNewQs (falls back to a default if unrecognized).
  String os;

  /// Free-form note saved on the service row.
  String comment;

  @override
  bool operator ==(Object other) => identical(this, other) || other is QsOrderRequest &&
    other.server == server &&
    other.password == password &&
    other.tos == tos &&
    other.os == os &&
    other.comment == comment;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (server.hashCode) +
    (password.hashCode) +
    (tos.hashCode) +
    (os.hashCode) +
    (comment.hashCode);

  @override
  String toString() => 'QsOrderRequest[server=$server, password=$password, tos=$tos, os=$os, comment=$comment]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'server'] = this.server;
      json[r'password'] = this.password;
      json[r'tos'] = this.tos;
      json[r'os'] = this.os;
      json[r'comment'] = this.comment;
    return json;
  }

  /// Returns a new [QsOrderRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static QsOrderRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'server'), 'Required key "QsOrderRequest[server]" is missing from JSON.');
        assert(json[r'server'] != null, 'Required key "QsOrderRequest[server]" has a null value in JSON.');
        assert(json.containsKey(r'password'), 'Required key "QsOrderRequest[password]" is missing from JSON.');
        assert(json[r'password'] != null, 'Required key "QsOrderRequest[password]" has a null value in JSON.');
        assert(json.containsKey(r'tos'), 'Required key "QsOrderRequest[tos]" is missing from JSON.');
        assert(json[r'tos'] != null, 'Required key "QsOrderRequest[tos]" has a null value in JSON.');
        return true;
      }());

      return QsOrderRequest(
        server: mapValueOfType<int>(json, r'server')!,
        password: mapValueOfType<String>(json, r'password')!,
        tos: mapValueOfType<bool>(json, r'tos')!,
        os: mapValueOfType<String>(json, r'os') ?? '',
        comment: mapValueOfType<String>(json, r'comment') ?? '',
      );
    }
    return null;
  }

  static List<QsOrderRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <QsOrderRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = QsOrderRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, QsOrderRequest> mapFromJson(dynamic json) {
    final map = <String, QsOrderRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = QsOrderRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of QsOrderRequest-objects as value to a dart map
  static Map<String, List<QsOrderRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<QsOrderRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = QsOrderRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'server',
    'password',
    'tos',
  };
}

