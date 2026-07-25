//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of interserver_api;

class ServerNetworkInfo {
  /// Returns a new [ServerNetworkInfo] instance.
  ServerNetworkInfo({
    this.vlans = const [],
    this.vlans6 = const [],
    required this.assets,
    required this.switchports,
  });

  /// List of VLANs.
  List<String> vlans;

  /// List of IPv6 VLANs.
  List<String> vlans6;

  ServerNetworkInfoAssets assets;

  ServerNetworkInfoSwitchports switchports;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ServerNetworkInfo &&
    _deepEquality.equals(other.vlans, vlans) &&
    _deepEquality.equals(other.vlans6, vlans6) &&
    other.assets == assets &&
    other.switchports == switchports;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (vlans.hashCode) +
    (vlans6.hashCode) +
    (assets.hashCode) +
    (switchports.hashCode);

  @override
  String toString() => 'ServerNetworkInfo[vlans=$vlans, vlans6=$vlans6, assets=$assets, switchports=$switchports]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'vlans'] = this.vlans;
      json[r'vlans6'] = this.vlans6;
      json[r'assets'] = this.assets;
      json[r'switchports'] = this.switchports;
    return json;
  }

  /// Returns a new [ServerNetworkInfo] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ServerNetworkInfo? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        assert(json.containsKey(r'vlans'), 'Required key "ServerNetworkInfo[vlans]" is missing from JSON.');
        assert(json[r'vlans'] != null, 'Required key "ServerNetworkInfo[vlans]" has a null value in JSON.');
        assert(json.containsKey(r'vlans6'), 'Required key "ServerNetworkInfo[vlans6]" is missing from JSON.');
        assert(json[r'vlans6'] != null, 'Required key "ServerNetworkInfo[vlans6]" has a null value in JSON.');
        assert(json.containsKey(r'assets'), 'Required key "ServerNetworkInfo[assets]" is missing from JSON.');
        assert(json[r'assets'] != null, 'Required key "ServerNetworkInfo[assets]" has a null value in JSON.');
        assert(json.containsKey(r'switchports'), 'Required key "ServerNetworkInfo[switchports]" is missing from JSON.');
        assert(json[r'switchports'] != null, 'Required key "ServerNetworkInfo[switchports]" has a null value in JSON.');
        return true;
      }());

      return ServerNetworkInfo(
        vlans: json[r'vlans'] is Iterable
            ? (json[r'vlans'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        vlans6: json[r'vlans6'] is Iterable
            ? (json[r'vlans6'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        assets: ServerNetworkInfoAssets.fromJson(json[r'assets'])!,
        switchports: ServerNetworkInfoSwitchports.fromJson(json[r'switchports'])!,
      );
    }
    return null;
  }

  static List<ServerNetworkInfo> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ServerNetworkInfo>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ServerNetworkInfo.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ServerNetworkInfo> mapFromJson(dynamic json) {
    final map = <String, ServerNetworkInfo>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ServerNetworkInfo.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ServerNetworkInfo-objects as value to a dart map
  static Map<String, List<ServerNetworkInfo>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ServerNetworkInfo>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ServerNetworkInfo.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'vlans',
    'vlans6',
    'assets',
    'switchports',
  };
}

